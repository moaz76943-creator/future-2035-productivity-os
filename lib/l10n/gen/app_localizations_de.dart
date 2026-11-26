// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Start';

  @override
  String get navTasks => 'Aufgaben';

  @override
  String get navFocus => 'Fokus';

  @override
  String get navCalendar => 'Kalender';

  @override
  String get navSpaces => 'Bereiche';

  @override
  String get moduleProjects => 'Projekte';

  @override
  String get moduleNotes => 'Notizen';

  @override
  String get moduleFlashcards => 'Karteikarten';

  @override
  String get moduleGoals => 'Ziele';

  @override
  String get moduleHabits => 'Gewohnheiten';

  @override
  String get moduleAnalytics => 'Einblicke';

  @override
  String get moduleSearch => 'Suche';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Einstellungen';

  @override
  String get moduleTrash => 'Papierkorb';

  @override
  String get actionSave => 'Speichern';

  @override
  String get actionCancel => 'Abbrechen';

  @override
  String get actionDelete => 'Löschen';

  @override
  String get actionEdit => 'Bearbeiten';

  @override
  String get actionDone => 'Fertig';

  @override
  String get actionAdd => 'Hinzufügen';

  @override
  String get actionCreate => 'Erstellen';

  @override
  String get actionClose => 'Schließen';

  @override
  String get actionBack => 'Zurück';

  @override
  String get actionUndo => 'Rückgängig';

  @override
  String get actionRestore => 'Wiederherstellen';

  @override
  String get actionRetry => 'Erneut versuchen';

  @override
  String get actionContinue => 'Weiter';

  @override
  String get actionSkip => 'Überspringen';

  @override
  String get actionArchive => 'Archivieren';

  @override
  String get actionUnarchive => 'Aus Archiv holen';

  @override
  String get actionPin => 'Anheften';

  @override
  String get actionUnpin => 'Lösen';

  @override
  String get actionMore => 'Weitere Optionen';

  @override
  String get actionClear => 'Leeren';

  @override
  String get actionSearch => 'Suchen';

  @override
  String get actionSort => 'Sortieren';

  @override
  String get actionShare => 'Teilen';

  @override
  String get actionImport => 'Importieren';

  @override
  String get actionExport => 'Exportieren';

  @override
  String get actionPause => 'Pausieren';

  @override
  String get actionResume => 'Fortsetzen';

  @override
  String get actionStart => 'Starten';

  @override
  String get actionStop => 'Beenden';

  @override
  String get actionComplete => 'Abschließen';

  @override
  String get actionDeleteForever => 'Endgültig löschen';

  @override
  String get actionEmptyTrash => 'Papierkorb leeren';

  @override
  String get actionUnlink => 'Verknüpfung lösen';

  @override
  String get actionCustomize => 'Anpassen';

  @override
  String get actionPreview => 'Vorschau';

  @override
  String get actionLog => 'Fortschritt eintragen';

  @override
  String get stateLoading => 'Wird geladen…';

  @override
  String get stateSaving => 'Wird gespeichert…';

  @override
  String get stateSaved => 'Gespeichert';

  @override
  String get stateUnsaved => 'Nicht gespeicherte Änderungen';

  @override
  String get errorGenericTitle => 'Etwas ist schiefgelaufen';

  @override
  String get errorGenericMessage => 'Deine Daten sind sicher. Bitte versuche es erneut.';

  @override
  String get errorLoadFailed => 'Dieser Inhalt konnte nicht geladen werden.';

  @override
  String get errorSaveFailed => 'Speichern fehlgeschlagen. Deine Änderungen sind noch da.';

  @override
  String get validationRequired => 'Dieses Feld ist erforderlich';

  @override
  String get validationTitleRequired => 'Bitte gib einen Titel ein';

  @override
  String get validationNameRequired => 'Bitte gib einen Namen ein';

  @override
  String get validationTooLong => 'Das ist zu lang';

  @override
  String get validationEndBeforeStart => 'Das Ende muss nach dem Beginn liegen';

  @override
  String get validationStartAfterDue => 'Das Startdatum muss vor dem Fälligkeitsdatum liegen';

  @override
  String get validationPositiveNumber => 'Gib eine Zahl größer als null ein';

  @override
  String get validationDependencyCycle => 'Das würde eine zirkuläre Abhängigkeit erzeugen';

  @override
  String get validationInvalidRepeat => 'Diese Wiederholungsregel ist ungültig';

  @override
  String get deletedItem => 'In den Papierkorb verschoben';

  @override
  String get untitled => 'Ohne Titel';

  @override
  String get noProject => 'Kein Projekt';

  @override
  String get greetingMorning => 'Guten Morgen';

  @override
  String get greetingAfternoon => 'Guten Tag';

  @override
  String get greetingEvening => 'Guten Abend';

  @override
  String get dashFocusToday => 'Heutiger Fokus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done von $target';
  }

  @override
  String get dashStartFocus => 'Fokus starten';

  @override
  String get dashFocusRunning => 'Sitzung läuft';

  @override
  String get dashTodayTasks => 'Heute fällig';

  @override
  String get dashAgenda => 'Termine';

  @override
  String get dashHabits => 'Gewohnheiten heute';

  @override
  String get dashGoals => 'Ziele';

  @override
  String get dashReview => 'Wiederholen';

  @override
  String get dashRecentNotes => 'Letzte Notizen';

  @override
  String get dashInsight => 'Vorschlag';

  @override
  String get dashSeeAll => 'Alle anzeigen';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten fällig',
      one: '1 Karte fällig',
      zero: 'Keine Karten fällig',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Jetzt wiederholen';

  @override
  String get dashCustomizeTitle => 'Startseiten-Bereiche';

  @override
  String get dashCustomizeHint => 'Wähle, was auf deiner Startseite erscheint.';

  @override
  String get dashSectionFocus => 'Fokus';

  @override
  String get dashSectionToday => 'Heute fällige Aufgaben';

  @override
  String get dashSectionAgenda => 'Termine';

  @override
  String get dashSectionHabits => 'Gewohnheiten';

  @override
  String get dashSectionGoals => 'Ziele';

  @override
  String get dashSectionReview => 'Karteikarten wiederholen';

  @override
  String get dashSectionNotes => 'Letzte Notizen';

  @override
  String get dashSectionInsight => 'Vorschläge';

  @override
  String get quickAddTask => 'Neue Aufgabe';

  @override
  String get quickAddNote => 'Neue Notiz';

  @override
  String get quickAddEvent => 'Neuer Termin';

  @override
  String get quickStartFocus => 'Fokus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du hast $count überfällige Aufgaben. Beginne mit der wichtigsten.',
      one: 'Du hast 1 überfällige Aufgabe. Verschiebe oder erledige sie zuerst.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Dir fehlen noch $minutes Minuten bis zu deinem täglichen Fokusziel.';
  }

  @override
  String get insightCardsDue =>
      'Wiederhole deine fälligen Karteikarten jetzt, solange sie frisch sind.';

  @override
  String get insightAllClear =>
      'Alles läuft nach Plan. Plane morgen oder gönn dir eine achtsame Pause.';

  @override
  String insightHabitStreak(String habit) {
    return 'Halte deine Serie: $habit ist heute noch offen.';
  }

  @override
  String get focusTitle => 'Fokus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Stoppuhr';

  @override
  String get focusModeOpen => 'Offen';

  @override
  String get focusPhaseWork => 'Fokus';

  @override
  String get focusPhaseShortBreak => 'Kurze Pause';

  @override
  String get focusPhaseLongBreak => 'Lange Pause';

  @override
  String get focusReady => 'Bereit, wenn du es bist';

  @override
  String get focusPaused => 'Pausiert';

  @override
  String get focusRunning => 'Im Fokus';

  @override
  String get focusDuration => 'Dauer';

  @override
  String get focusLinkTask => 'Aufgabe verknüpfen';

  @override
  String get focusLinkedTask => 'Arbeite an';

  @override
  String get focusNoTask => 'Keine Aufgabe verknüpft';

  @override
  String focusCycle(int current, int total) {
    return 'Zyklus $current von $total';
  }

  @override
  String get focusSkipBreak => 'Pause überspringen';

  @override
  String get focusStartBreak => 'Pause starten';

  @override
  String get focusStartNext => 'Nächsten Fokus starten';

  @override
  String get focusSessionComplete => 'Sitzung abgeschlossen';

  @override
  String get focusSessionStopped => 'Sitzung gespeichert';

  @override
  String focusSessionSummary(String duration) {
    return 'Du warst $duration fokussiert.';
  }

  @override
  String get focusAddNote => 'Notiz zu dieser Sitzung hinzufügen';

  @override
  String get focusHistory => 'Verlauf';

  @override
  String get focusNoHistory => 'Abgeschlossene Sitzungen erscheinen hier';

  @override
  String get focusTargets => 'Ziele';

  @override
  String get focusDailyTarget => 'Tagesziel';

  @override
  String get focusWeeklyTarget => 'Wochenziel';

  @override
  String get focusOutcomeCompleted => 'Abgeschlossen';

  @override
  String get focusOutcomeInterrupted => 'Vorzeitig beendet';

  @override
  String get focusRecovered => 'Deine Sitzung lief weiter, während die App geschlossen war.';

  @override
  String get focusCompletedWhileAway =>
      'Eine Sitzung endete, während die App geschlossen war, und wurde gespeichert.';

  @override
  String get focusNotificationsOff =>
      'Benachrichtigungen sind aus. Du wirst nicht erinnert, wenn eine Sitzung endet.';

  @override
  String get focusBatteryHint =>
      'Manche Geräte pausieren Apps im Hintergrund. Der Timer bleibt genau, aber Hinweise können sich verspäten. Erlaube uneingeschränkte Akkunutzung für zuverlässige Hinweise.';

  @override
  String get focusOpenSettings => 'Einstellungen öffnen';

  @override
  String get focusStopConfirmTitle => 'Diese Sitzung beenden?';

  @override
  String get focusStopConfirmMessage => 'Die bisherige Fokuszeit wird gespeichert.';

  @override
  String get focusDiscard => 'Verwerfen';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes Minuten',
      one: '1 Minute',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, noch $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time vergangen';
  }

  @override
  String get focusDeleteSession => 'Sitzung löschen';

  @override
  String get tasksTitle => 'Aufgaben';

  @override
  String get tasksViewToday => 'Heute';

  @override
  String get tasksViewUpcoming => 'Demnächst';

  @override
  String get tasksViewAll => 'Alle';

  @override
  String get tasksViewOverdue => 'Überfällig';

  @override
  String get tasksViewCompleted => 'Erledigt';

  @override
  String get tasksQuickAddHint => 'Aufgabe hinzufügen…';

  @override
  String get tasksEmptyTitle => 'Alles erledigt';

  @override
  String get tasksEmptyMessage => 'Füge eine Aufgabe hinzu, um deinen Tag zu gestalten.';

  @override
  String get tasksEmptyCompleted => 'Erledigte Aufgaben erscheinen hier.';

  @override
  String get taskNew => 'Neue Aufgabe';

  @override
  String get taskEdit => 'Aufgabe bearbeiten';

  @override
  String get taskTitleLabel => 'Titel';

  @override
  String get taskTitleHint => 'Was ist zu tun?';

  @override
  String get taskDescriptionLabel => 'Beschreibung';

  @override
  String get taskNotesLabel => 'Notizen';

  @override
  String get taskPriority => 'Priorität';

  @override
  String get priorityNone => 'Keine';

  @override
  String get priorityLow => 'Niedrig';

  @override
  String get priorityMedium => 'Mittel';

  @override
  String get priorityHigh => 'Hoch';

  @override
  String get priorityUrgent => 'Dringend';

  @override
  String get taskDueDate => 'Fälligkeitsdatum';

  @override
  String get taskStartDate => 'Startdatum';

  @override
  String get taskReminder => 'Erinnerung';

  @override
  String get taskRepeat => 'Wiederholen';

  @override
  String get taskProject => 'Projekt';

  @override
  String get taskCategory => 'Kategorie';

  @override
  String get taskCategoryHint => 'z. B. Arbeit, Zuhause, Lernen';

  @override
  String get taskEstimateMinutes => 'Schätzung (Minuten)';

  @override
  String get taskTracked => 'Erfasste Fokuszeit';

  @override
  String get taskLabels => 'Labels';

  @override
  String get taskAddLabel => 'Neues Label';

  @override
  String get taskChecklist => 'Checkliste';

  @override
  String get taskAddChecklistItem => 'Eintrag hinzufügen';

  @override
  String get taskSubtasks => 'Unteraufgaben';

  @override
  String get taskAddSubtask => 'Unteraufgabe hinzufügen';

  @override
  String get taskDependencies => 'Blockiert durch';

  @override
  String get taskAddDependency => 'Blockierende Aufgabe hinzufügen';

  @override
  String get taskLinkedNotes => 'Verknüpfte Notizen';

  @override
  String get taskSetTime => 'Uhrzeit festlegen';

  @override
  String get taskNoDate => 'Kein Datum';

  @override
  String get taskCompleted => 'Aufgabe erledigt';

  @override
  String get taskNextOccurrence => 'Nächste Wiederholung erstellt';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days Tage überfällig',
      one: '1 Tag überfällig',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return '„$title“ als erledigt markieren';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return '„$title“ als nicht erledigt markieren';
  }

  @override
  String get sortSmart => 'Intelligent';

  @override
  String get sortDueDate => 'Fälligkeitsdatum';

  @override
  String get sortPriority => 'Priorität';

  @override
  String get sortCreated => 'Neueste';

  @override
  String get sortTitle => 'Titel';

  @override
  String get filterAllProjects => 'Alle Projekte';

  @override
  String get filterAnyPriority => 'Jede Priorität';

  @override
  String get filterTitle => 'Filtern und sortieren';

  @override
  String get dateToday => 'Heute';

  @override
  String get dateTomorrow => 'Morgen';

  @override
  String get dateYesterday => 'Gestern';

  @override
  String get repeatNever => 'Keine Wiederholung';

  @override
  String get repeatDaily => 'Jeden Tag';

  @override
  String get repeatWeekdays => 'Jeden Werktag';

  @override
  String get repeatWeekly => 'Jede Woche';

  @override
  String get repeatMonthly => 'Jeden Monat';

  @override
  String get repeatYearly => 'Jedes Jahr';

  @override
  String get repeatCustom => 'Benutzerdefiniert';

  @override
  String get repeatEvery => 'Wiederholen alle';

  @override
  String get repeatOnDays => 'An Tagen';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Tage', one: 'Tag');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Wochen', one: 'Woche');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Monate', one: 'Monat');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Jahre', one: 'Jahr');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Malen',
      one: '1 Mal',
    );
    return 'Endet nach $_temp0';
  }

  @override
  String get repeatEndsNever => 'Endet nie';

  @override
  String get reminderAtTime => 'Zum Zeitpunkt des Termins';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes Minuten vorher',
      one: '1 Minute vorher',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours Stunden vorher',
      one: '1 Stunde vorher',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 Tag vorher';

  @override
  String get projectsTitle => 'Projekte';

  @override
  String get projectsEmptyTitle => 'Noch keine Projekte';

  @override
  String get projectsEmptyMessage => 'Bündle zusammengehörige Aufgaben, Notizen und Fokuszeit.';

  @override
  String get projectNew => 'Neues Projekt';

  @override
  String get projectEdit => 'Projekt bearbeiten';

  @override
  String get projectName => 'Name';

  @override
  String get projectDescription => 'Beschreibung';

  @override
  String get projectGoal => 'Ziel';

  @override
  String get projectDeadline => 'Frist';

  @override
  String get projectColor => 'Farbe';

  @override
  String get projectIcon => 'Symbol';

  @override
  String get projectProgress => 'Fortschritt';

  @override
  String projectTasksDone(int done, int total) {
    return '$done von $total Aufgaben erledigt';
  }

  @override
  String get projectFocusTime => 'Fokuszeit';

  @override
  String get projectArchived => 'Archivierte Projekte';

  @override
  String get projectShowArchived => 'Archivierte anzeigen';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Noch $days Tage',
      one: 'Noch 1 Tag',
      zero: 'Heute fällig',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Frist überschritten';

  @override
  String get calendarTitle => 'Kalender';

  @override
  String get calendarMonth => 'Monat';

  @override
  String get calendarWeek => 'Woche';

  @override
  String get calendarDay => 'Tag';

  @override
  String get calendarToday => 'Heute';

  @override
  String get calendarPrevious => 'Zurück';

  @override
  String get calendarNext => 'Weiter';

  @override
  String get calendarNoEvents => 'Nichts geplant';

  @override
  String get calendarAllDay => 'Ganztägig';

  @override
  String get eventNew => 'Neuer Termin';

  @override
  String get eventEdit => 'Termin bearbeiten';

  @override
  String get eventTitleHint => 'Titel des Termins';

  @override
  String get eventStarts => 'Beginn';

  @override
  String get eventEnds => 'Ende';

  @override
  String get eventKind => 'Art';

  @override
  String get eventKindEvent => 'Termin';

  @override
  String get eventKindTimeBlock => 'Zeitblock';

  @override
  String get eventKindFocus => 'Fokussitzung';

  @override
  String get eventKindGoal => 'Persönliches Ziel';

  @override
  String get eventDescription => 'Details';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Überschneidet sich mit $count Terminen',
      one: 'Überschneidet sich mit 1 Termin',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Terminkonflikte an diesem Tag';

  @override
  String get calendarTaskDue => 'Fällige Aufgabe';

  @override
  String get calendarDragHint => 'Halte einen Termin gedrückt und ziehe ihn, um ihn zu verschieben';

  @override
  String get calendarRescheduled => 'Termin verschoben';

  @override
  String get calendarScheduleTask => 'Als Zeitblock einplanen';

  @override
  String get notesTitle => 'Notizen';

  @override
  String get notesViewAll => 'Alle';

  @override
  String get notesViewPinned => 'Angeheftet';

  @override
  String get notesViewFavorites => 'Favoriten';

  @override
  String get notesViewArchived => 'Archiviert';

  @override
  String get notesTags => 'Tags';

  @override
  String get notesNewNotebook => 'Neues Notizbuch';

  @override
  String get notesNoNotebook => 'Kein Notizbuch';

  @override
  String get notesEmptyTitle => 'Eine leere Leinwand';

  @override
  String get notesEmptyMessage => 'Halte Ideen, Besprechungsnotizen und Wissen fest.';

  @override
  String get noteTitleHint => 'Titel';

  @override
  String get noteBodyHint =>
      'Schreib los… Nutze # für Tags und [[Titel]], um Notizen zu verknüpfen.';

  @override
  String get noteFavorite => 'Favorit';

  @override
  String get noteUnfavorite => 'Aus Favoriten entfernen';

  @override
  String get noteMoveTo => 'In Notizbuch verschieben';

  @override
  String get noteBacklinks => 'Verlinkt von';

  @override
  String get noteLinkedTasks => 'Verknüpfte Aufgaben';

  @override
  String get noteLinkTask => 'Aufgabe verknüpfen';

  @override
  String get noteLinkProject => 'Projekt';

  @override
  String get noteFormatHeading => 'Überschrift';

  @override
  String get noteFormatBold => 'Fett';

  @override
  String get noteFormatItalic => 'Kursiv';

  @override
  String get noteFormatList => 'Aufzählung';

  @override
  String get noteFormatChecklist => 'Checkliste';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Bearbeitet $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Wörter',
      one: '1 Wort',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Karteikarten';

  @override
  String get flashEmptyTitle => 'Erstelle deinen ersten Stapel';

  @override
  String get flashEmptyMessage =>
      'Verteilte Wiederholung zeigt jede Karte kurz bevor du sie vergessen würdest.';

  @override
  String get deckNew => 'Neuer Stapel';

  @override
  String get deckEdit => 'Stapel bearbeiten';

  @override
  String get deckName => 'Name des Stapels';

  @override
  String get deckDescription => 'Beschreibung';

  @override
  String get deckDailyNew => 'Neue Karten pro Tag';

  @override
  String get deckDailyReview => 'Tägliches Wiederholungsziel';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten',
      one: '1 Karte',
      zero: 'Keine Karten',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Fällig';

  @override
  String get deckNewCards => 'Neu';

  @override
  String get deckMature => 'Gefestigt';

  @override
  String get deckStudy => 'Lernen';

  @override
  String get deckNothingDue => 'Gerade ist nichts fällig. Schau später wieder vorbei.';

  @override
  String get deckEmptyCards => 'Füge Karten hinzu, um mit dem Lernen zu beginnen.';

  @override
  String get cardNew => 'Neue Karte';

  @override
  String get cardEdit => 'Karte bearbeiten';

  @override
  String get cardFront => 'Vorderseite';

  @override
  String get cardBack => 'Rückseite';

  @override
  String get cardFrontHint => 'Frage oder Begriff';

  @override
  String get cardBackHint => 'Antwort oder Definition';

  @override
  String get cardTags => 'Tags';

  @override
  String get cardAddAnother => 'Speichern und weitere hinzufügen';

  @override
  String get reviewShowAnswer => 'Antwort zeigen';

  @override
  String get reviewAgain => 'Nochmal';

  @override
  String get reviewHard => 'Schwer';

  @override
  String get reviewGood => 'Gut';

  @override
  String get reviewEasy => 'Leicht';

  @override
  String reviewProgress(int done, int total) {
    return '$done von $total';
  }

  @override
  String get reviewFinishedTitle => 'Sitzung abgeschlossen';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Du hast $count Karten wiederholt.',
      one: 'Du hast 1 Karte wiederholt.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tippe, um die Antwort zu sehen';

  @override
  String get importCardsTitle => 'Karten importieren';

  @override
  String get importCardsHint =>
      'Füge eine Karte pro Zeile ein (Vorder- und Rückseite durch Tab oder Semikolon getrennt) oder wähle eine Datei: Excel (.xlsx), CSV, ein Anki-Stapel (.apkg) oder ein exportierter Stapel.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten importiert',
      one: '1 Karte importiert',
      zero: 'Keine Karten importiert',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Dieser Inhalt konnte nicht importiert werden.';

  @override
  String get exportCopied => 'Stapel exportiert';

  @override
  String intervalMinutes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Min.',
      one: '1 Min.',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Ziele';

  @override
  String get goalsEmptyTitle => 'Nimm dir etwas vor';

  @override
  String get goalsEmptyMessage =>
      'Setze tägliche, wöchentliche, monatliche oder langfristige Ziele und verfolge echten Fortschritt.';

  @override
  String get goalNew => 'Neues Ziel';

  @override
  String get goalEdit => 'Ziel bearbeiten';

  @override
  String get goalTitleHint => 'Was möchtest du erreichen?';

  @override
  String get goalPeriod => 'Zeitraum';

  @override
  String get goalPeriodDaily => 'Täglich';

  @override
  String get goalPeriodWeekly => 'Wöchentlich';

  @override
  String get goalPeriodMonthly => 'Monatlich';

  @override
  String get goalPeriodLongTerm => 'Langfristig';

  @override
  String get goalTarget => 'Zielwert';

  @override
  String get goalUnit => 'Einheit';

  @override
  String get goalUnitHint => 'z. B. Seiten, km, Stunden';

  @override
  String get goalStatusActive => 'Aktiv';

  @override
  String get goalStatusPaused => 'Pausiert';

  @override
  String get goalStatusAchieved => 'Erreicht';

  @override
  String get goalPause => 'Ziel pausieren';

  @override
  String get goalResume => 'Ziel fortsetzen';

  @override
  String get goalMarkAchieved => 'Als erreicht markieren';

  @override
  String goalProgressOf(String current, String target) {
    return '$current von $target';
  }

  @override
  String get goalLogAmount => 'Menge';

  @override
  String get goalLogNote => 'Notiz (optional)';

  @override
  String get goalHistory => 'Verlauf';

  @override
  String get goalNoHistory => 'Eingetragener Fortschritt erscheint hier';

  @override
  String get goalLinkedTasks => 'Verknüpfte Aufgaben';

  @override
  String get goalLinkedTasksHint => 'Jede erledigte verknüpfte Aufgabe zählt mit 1 zu diesem Ziel.';

  @override
  String get goalThisPeriod => 'Dieser Zeitraum';

  @override
  String get habitsTitle => 'Gewohnheiten';

  @override
  String get habitsEmptyTitle => 'Kleine Schritte, jeden Tag';

  @override
  String get habitsEmptyMessage =>
      'Lege eine Gewohnheit an und hake sie ab, wenn du sie erledigst.';

  @override
  String get habitNew => 'Neue Gewohnheit';

  @override
  String get habitEdit => 'Gewohnheit bearbeiten';

  @override
  String get habitNameHint => 'z. B. 20 Seiten lesen';

  @override
  String get habitDays => 'Plan';

  @override
  String get habitEveryDay => 'Jeden Tag';

  @override
  String get habitTargetPerDay => 'Mal pro Tag';

  @override
  String get habitReminder => 'Tägliche Erinnerung';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage in Folge',
      one: '1 Tag in Folge',
      zero: 'Keine Serie',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Beste Serie';

  @override
  String get habitCurrentStreak => 'Aktuelle Serie';

  @override
  String get habitConsistency => 'Beständigkeit';

  @override
  String get habitLast90 => 'Letzte 90 Tage';

  @override
  String get habitPaused => 'Pausiert';

  @override
  String get habitPause => 'Gewohnheit pausieren';

  @override
  String get habitResume => 'Gewohnheit fortsetzen';

  @override
  String get habitDoneToday => 'Heute erledigt';

  @override
  String habitCountToday(int count, int target) {
    return 'Heute $count von $target';
  }

  @override
  String habitToggleSemantics(String name) {
    return '„$name“ abhaken';
  }

  @override
  String get habitNotScheduledToday => 'Heute nicht geplant';

  @override
  String get analyticsTitle => 'Einblicke';

  @override
  String get rangeWeek => '7 Tage';

  @override
  String get rangeMonth => '30 Tage';

  @override
  String get rangeQuarter => '90 Tage';

  @override
  String get statFocusTime => 'Fokuszeit';

  @override
  String get statSessions => 'Sitzungen';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed abgeschlossen · $interrupted vorzeitig beendet';
  }

  @override
  String get statTasksDone => 'Erledigte Aufgaben';

  @override
  String get statCompletionRate => 'Pünktlich erledigt';

  @override
  String get statHabitConsistency => 'Beständigkeit der Gewohnheiten';

  @override
  String get statRetention => 'Kartenerinnerung';

  @override
  String get statReviews => 'Wiederholungen';

  @override
  String get statActiveGoals => 'Aktive Ziele';

  @override
  String get statEstimated => 'Geschätzte erledigte Arbeit';

  @override
  String get statEstimatedNote => 'Basiert auf deinen Schätzungen, nicht auf gemessener Zeit';

  @override
  String get statMeasuredNote => 'Gemessen aus Fokussitzungen';

  @override
  String get chartFocusByDay => 'Fokusminuten pro Tag';

  @override
  String get chartTasksByDay => 'Erledigte Aufgaben pro Tag';

  @override
  String get chartTimeByProject => 'Zeit nach Projekt';

  @override
  String get chartProjectProgress => 'Projektfortschritt';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: gesamt $total, bester Tag $best';
  }

  @override
  String get analyticsNoData => 'Noch nicht genug Daten';

  @override
  String get analyticsUnassigned => 'Nicht zugeordnet';

  @override
  String get searchHint => 'Alles durchsuchen…';

  @override
  String get searchRecent => 'Letzte Suchen';

  @override
  String get searchClearRecent => 'Letzte Suchen löschen';

  @override
  String searchNoResults(String query) {
    return 'Keine Ergebnisse für „$query“';
  }

  @override
  String get searchStartTyping =>
      'Durchsuche Aufgaben, Notizen, Karten, Ziele, Termine und mehr. Die Suche bleibt auf diesem Gerät.';

  @override
  String get searchCatTask => 'Aufgaben';

  @override
  String get searchCatProject => 'Projekte';

  @override
  String get searchCatNote => 'Notizen';

  @override
  String get searchCatFlashcard => 'Karten';

  @override
  String get searchCatDeck => 'Stapel';

  @override
  String get searchCatGoal => 'Ziele';

  @override
  String get searchCatHabit => 'Gewohnheiten';

  @override
  String get searchCatEvent => 'Termine';

  @override
  String get searchCatSession => 'Sitzungen';

  @override
  String get searchAll => 'Alle';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Planungshilfe, die auf deinem Gerät arbeitet. Optional verbindest du einen KI-Anbieter deiner Wahl für Zusammenfassungen und Erstellung.';

  @override
  String get assistantOnDevice => 'Auf dem Gerät';

  @override
  String get assistantCloud => 'KI-Anbieter';

  @override
  String get assistantPlanDay => 'Meinen Tag planen';

  @override
  String get assistantPlanDayDesc =>
      'Ordnet offene Aufgaben nach Dringlichkeit, Priorität und Schätzung und plant sie um deine Termine herum.';

  @override
  String get assistantExtractTasks => 'Aufgaben aus einer Notiz holen';

  @override
  String get assistantExtractTasksDesc =>
      'Findet Checklisteneinträge und Aufgabenzeilen in einer Notiz und macht daraus Aufgaben.';

  @override
  String get assistantMakeCards => 'Karteikarten aus einer Notiz erstellen';

  @override
  String get assistantMakeCardsDesc =>
      'Macht aus „Begriff: Definition“ und Frage/Antwort-Zeilen Karten.';

  @override
  String get assistantSummarize => 'Notiz zusammenfassen';

  @override
  String get assistantSummarizeDesc =>
      'Benötigt einen KI-Anbieter. Die Notiz wird erst nach deiner Bestätigung gesendet.';

  @override
  String get assistantWorkload => 'Arbeitslast-Übersicht';

  @override
  String get assistantWorkloadDesc =>
      'Vergleicht geschätzte Arbeit mit deiner freien Zeit in dieser Woche.';

  @override
  String get assistantPlanEmpty => 'Keine offenen Aufgaben zu planen. Genieß den Freiraum.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Freie Fokuszeit heute: $time';
  }

  @override
  String get assistantPlanOverflow => 'Das passt heute vielleicht nicht mehr:';

  @override
  String get assistantChooseNote => 'Notiz auswählen';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aufgaben gefunden',
      one: '1 Aufgabe gefunden',
      zero: 'Keine Aufgaben in dieser Notiz gefunden',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten gefunden',
      one: '1 Karte gefunden',
      zero: 'Keine Karten in dieser Notiz gefunden',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Stapel auswählen';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Geschätzte Arbeit: $estimated. Freie Zeit: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Du hast mehr geplant, als Zeit da ist. Verschiebe Aufgaben mit niedrigerer Priorität.';

  @override
  String get assistantWorkloadOk => 'Dein Plan passt in deine verfügbare Zeit.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count offene Aufgaben haben keine Schätzung.',
      one: '1 offene Aufgabe hat keine Schätzung.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'KI-Anbieter';

  @override
  String get assistantProviderOff =>
      'Kein Anbieter verbunden. Die Werkzeuge auf dem Gerät funktionieren weiterhin.';

  @override
  String assistantProviderOn(String host) {
    return 'Verbunden mit $host';
  }

  @override
  String get assistantEndpoint => 'API-Endpunkt (HTTPS)';

  @override
  String get assistantModel => 'Modell';

  @override
  String get assistantApiKey => 'API-Schlüssel';

  @override
  String get assistantApiKeyStored => 'Sicher auf diesem Gerät gespeichert';

  @override
  String get assistantHttpsOnly => 'Nur HTTPS-Endpunkte sind erlaubt';

  @override
  String get assistantConsentTitle => 'Diesen Inhalt an deinen KI-Anbieter senden?';

  @override
  String assistantConsentBody(String host) {
    return 'Der ausgewählte Notiztext verlässt dieses Gerät und wird von $host verarbeitet. Sonst wird nichts gesendet.';
  }

  @override
  String get assistantConsentAlways => 'Für diesen Anbieter nicht mehr fragen';

  @override
  String get assistantSend => 'Senden';

  @override
  String get assistantUnavailable =>
      'Der KI-Anbieter ist nicht erreichbar. Versuche es später erneut.';

  @override
  String get assistantDisabledTitle => 'Der Assistent ist aus';

  @override
  String get assistantDisabledMessage =>
      'Schalte ihn ein, um die Planungswerkzeuge zu nutzen. Keine Daten verlassen dein Gerät, außer du verbindest einen Anbieter und bestätigst jede Anfrage.';

  @override
  String get assistantSummaryTitle => 'Zusammenfassung';

  @override
  String get assistantRemoveProvider => 'Anbieter entfernen';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get settingsGeneral => 'Allgemein';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsLanguageSystem => 'Gerätesprache';

  @override
  String get settingsAppearance => 'Darstellung';

  @override
  String get settingsTheme => 'Design';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeSystem => 'System';

  @override
  String get settingsReduceMotion => 'Bewegung reduzieren';

  @override
  String get settingsReduceMotionDesc => 'Animationen und bewegte Hintergründe minimieren';

  @override
  String get settingsFocus => 'Fokus-Timer';

  @override
  String get settingsWorkLength => 'Fokuslänge';

  @override
  String get settingsShortBreak => 'Kurze Pause';

  @override
  String get settingsLongBreak => 'Lange Pause';

  @override
  String get settingsLongBreakEvery => 'Lange Pause nach';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Sitzungen',
      one: '1 Sitzung',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Pausen automatisch starten';

  @override
  String get settingsSound => 'Abschlusston';

  @override
  String get settingsDailyFocusTarget => 'Tägliches Fokusziel';

  @override
  String get settingsWeeklyFocusTarget => 'Wöchentliches Fokusziel';

  @override
  String get settingsNotifications => 'Benachrichtigungen';

  @override
  String get settingsNotificationsEnable => 'Erinnerungen erlauben';

  @override
  String get settingsQuietHours => 'Ruhezeiten';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Gewohnheits-, Ziel- und Wiederholungserinnerungen sind von $start bis $end stumm';
  }

  @override
  String get settingsReviewReminder => 'Erinnerung für Karteikarten';

  @override
  String get settingsPermissionDenied =>
      'Benachrichtigungen sind in den Systemeinstellungen blockiert.';

  @override
  String get settingsPrivacy => 'Datenschutz und Daten';

  @override
  String get settingsPrivacyStatement =>
      'Deine Daten werden nur auf diesem Gerät gespeichert und verschlüsselt. Kein Konto, keine Analyse, kein Tracking.';

  @override
  String get settingsBackup => 'Verschlüsselte Sicherung erstellen';

  @override
  String get settingsBackupDesc => 'Geschützt mit einem Passwort deiner Wahl';

  @override
  String get settingsRestore => 'Aus Sicherung wiederherstellen';

  @override
  String get settingsRestoreDesc => 'Ersetzt alle Daten auf diesem Gerät';

  @override
  String get settingsErase => 'Alle Daten löschen';

  @override
  String get settingsEraseDesc => 'Alles auf diesem Gerät endgültig löschen';

  @override
  String get settingsEraseConfirmTitle => 'Alle Daten löschen?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Alle Aufgaben, Notizen, Karten, Ziele, Gewohnheiten, Termine und Sitzungen werden endgültig gelöscht. Gib $word ein, um zu bestätigen.';
  }

  @override
  String get settingsEraseWord => 'LÖSCHEN';

  @override
  String get settingsErased => 'Alle Daten gelöscht';

  @override
  String get backupPassword => 'Sicherungspasswort';

  @override
  String get backupPasswordConfirm => 'Passwort bestätigen';

  @override
  String backupPasswordHint(int count) {
    return 'Mindestens $count Zeichen. Bei Verlust nicht wiederherstellbar.';
  }

  @override
  String get backupPasswordMismatch => 'Die Passwörter stimmen nicht überein';

  @override
  String get backupPasswordShort => 'Das Passwort ist zu kurz';

  @override
  String get backupCreating => 'Sicherung wird verschlüsselt…';

  @override
  String get backupCreated => 'Sicherung bereit zum Speichern';

  @override
  String get backupRestoring => 'Wird geprüft und wiederhergestellt…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Einträge wiederhergestellt',
      one: '1 Eintrag wiederhergestellt',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Falsches Passwort oder die Datei wurde verändert.';

  @override
  String get backupNotABackup => 'Diese Datei ist keine Deep-Focus-Sicherung.';

  @override
  String get backupCorrupted => 'Die Sicherungsdatei ist beschädigt.';

  @override
  String get backupNewer =>
      'Diese Sicherung stammt von einer neueren App-Version. Bitte aktualisiere zuerst.';

  @override
  String get backupRestoreConfirmTitle => 'Alle Daten ersetzen?';

  @override
  String get backupRestoreConfirmBody =>
      'Alles auf diesem Gerät wird durch die Sicherung ersetzt. Schlägt die Wiederherstellung fehl, ändert sich nichts.';

  @override
  String get settingsAbout => 'Über';

  @override
  String settingsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get settingsLicenses => 'Open-Source-Lizenzen';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Assistent aktivieren';

  @override
  String get settingsDashboard => 'Startseiten-Bereiche';

  @override
  String get settingsTrash => 'Papierkorb';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes Min.';
  }

  @override
  String get trashEmpty => 'Der Papierkorb ist leer';

  @override
  String get trashHint => 'Gelöschte Elemente bleiben hier, bis du sie entfernst.';

  @override
  String get trashTasks => 'Aufgaben';

  @override
  String get trashNotes => 'Notizen';

  @override
  String get onboardWelcomeTitle => 'Willkommen in deinem neuen Arbeitsbereich';

  @override
  String get onboardWelcomeBody =>
      'Aufgaben, Fokus, Kalender, Notizen, Karteikarten, Ziele und Gewohnheiten – vereint und wunderbar einfach.';

  @override
  String get onboardPrivateTitle => 'Privat von Grund auf';

  @override
  String get onboardPrivateBody =>
      'Alles bleibt verschlüsselt auf diesem Gerät. Kein Konto. Kein Tracking. Du behältst die Kontrolle.';

  @override
  String get onboardLanguageTitle => 'Wähle deine Sprache';

  @override
  String get onboardNotifTitle => 'Sanfte Erinnerungen';

  @override
  String get onboardNotifBody =>
      'Erlaube Benachrichtigungen für Aufgabenerinnerungen und Fokus-Hinweise. Du kannst das jederzeit ändern.';

  @override
  String get onboardGetStarted => 'Los geht\'s';

  @override
  String onboardStep(int current, int total) {
    return 'Schritt $current von $total';
  }

  @override
  String get notifChannelReminders => 'Erinnerungen';

  @override
  String get notifChannelRemindersDesc =>
      'Erinnerungen für Aufgaben, Termine, Gewohnheiten und Ziele';

  @override
  String get notifChannelFocus => 'Fokus-Timer';

  @override
  String get notifChannelFocusDesc => 'Hinweise, wenn eine Fokussitzung oder Pause endet';

  @override
  String get notifTaskTitle => 'Aufgabenerinnerung';

  @override
  String get notifEventTitle => 'Anstehender Termin';

  @override
  String notifEventBody(String title, String time) {
    return '$title um $time';
  }

  @override
  String get notifFocusDoneTitle => 'Fokussitzung abgeschlossen';

  @override
  String get notifFocusDoneBody => 'Gute Arbeit. Zeit für eine Pause.';

  @override
  String get notifBreakDoneTitle => 'Die Pause ist vorbei';

  @override
  String get notifBreakDoneBody => 'Bereit für die nächste Fokussitzung?';

  @override
  String get notifHabitTitle => 'Gewohnheitserinnerung';

  @override
  String get notifReviewTitle => 'Deine Karteikarten warten';

  @override
  String get notifReviewBody => 'Eine kurze Wiederholung hält dein Gedächtnis fit.';

  @override
  String durationHoursMinutes(int hours, int minutes) {
    return '$hours Std. $minutes Min.';
  }

  @override
  String durationHours(int hours) {
    return '$hours Std.';
  }

  @override
  String durationMinutes(int minutes) {
    return '$minutes Min.';
  }

  @override
  String percentValue(int value) {
    return '$value %';
  }

  @override
  String get weekdaysShort => 'M,D,M,D,F,S,S';

  @override
  String a11yProgress(int value) {
    return 'Fortschritt $value Prozent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorität: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Farbe $index';
  }

  @override
  String get analyticsRangeLabel => 'Zeitraum';

  @override
  String get analyticsRefresh => 'Aktualisieren';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done von $total fälligen Aufgaben pünktlich erledigt';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done von $total Aufgaben erledigt';
  }

  @override
  String get analyticsNoProjects => 'Keine aktiven Projekte';

  @override
  String get analyticsNoFocus => 'Keine Fokussitzungen in diesem Zeitraum';

  @override
  String get analyticsHabitsNone => 'Keine aktiven Gewohnheiten';

  @override
  String get analyticsRetentionNote =>
      'Anteil der gefestigten Karten, an die du dich erinnert hast';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Freie Zeit zählt $start–$end an Werktagen ($days), abzüglich Terminen mit Uhrzeit. Geschätzte Arbeit ist die Summe der Schätzungen offener Aufgaben, die in den nächsten 7 Tagen fällig sind.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Montag–Freitag';

  @override
  String get assistantWorkdaysSunThu => 'Sonntag–Donnerstag';

  @override
  String get assistantWorkloadDayOff => 'Freier Tag';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated geplant · $free frei';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Geplant von jetzt bis $end, um die heutigen Termine herum. Zuerst überfällige Aufgaben, dann Priorität, Fälligkeit und Schätzung.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Als Zeitblöcke einplanen';

  @override
  String get assistantScheduleConfirmTitle => 'Zeitblöcke zum Kalender hinzufügen?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Zeitblöcke werden zum heutigen Kalender hinzugefügt.',
      one: '1 Zeitblock wird zum heutigen Kalender hinzugefügt.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Zeitblöcke hinzugefügt',
      one: '1 Zeitblock hinzugefügt',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Schon im Kalender';

  @override
  String get assistantPlanTimeline => 'Passt heute';

  @override
  String get assistantNoEstimate => 'Füge eine Schätzung hinzu, um diese zu planen';

  @override
  String get assistantNoNotes => 'Noch keine Notizen. Schreib zuerst eine Notiz.';

  @override
  String get assistantNoteEmpty => 'Diese Notiz ist leer.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aufgaben erstellt',
      one: '1 Aufgabe erstellt',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten erstellt',
      one: '1 Karte erstellt',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count erstellen',
      one: '1 erstellen',
      zero: 'Nichts ausgewählt',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Erkannt: offene Kästchen „- [ ]“ und Zeilen, die mit TODO: oder To do: beginnen';

  @override
  String get assistantCardsHint =>
      'Erkannt: „Begriff: Definition“, „Begriff – Definition“ und Zeilenpaare mit Q: und A:';

  @override
  String get assistantProviderHint =>
      'Nutze einen beliebigen OpenAI-kompatiblen Dienst. Der Schlüssel bleibt im sicheren Speicher dieses Geräts und ist nie in Sicherungen enthalten.';

  @override
  String get assistantEndpointHelp => 'Zum Beispiel https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Leer lassen, um den gespeicherten Schlüssel zu behalten';

  @override
  String get assistantApiKeyRequired => 'Gib einen API-Schlüssel ein';

  @override
  String get assistantProviderSaved => 'Anbieter gespeichert';

  @override
  String get assistantProviderRemoved => 'Anbieter entfernt und Schlüssel gelöscht';

  @override
  String get assistantRemoveProviderConfirm =>
      'Anbieter entfernen und den gespeicherten API-Schlüssel von diesem Gerät löschen?';

  @override
  String get assistantAskEveryTime => 'Vor jeder Anfrage fragen';

  @override
  String get assistantSummarizing => 'Wird zusammengefasst…';

  @override
  String assistantSummaryNote(String host) {
    return 'Erstellt von $host. Prüfe es, bevor du dich darauf verlässt.';
  }

  @override
  String get assistantCopy => 'Kopieren';

  @override
  String get assistantCopied => 'Kopiert';

  @override
  String get assistantConfigure => 'Anbieter einrichten';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Alle Termine dieser Serie wurden verschoben';

  @override
  String get calendarEventReminder => 'Erinnerung';

  @override
  String get calendarEventRepeat => 'Wiederholen';

  @override
  String get calendarEventColor => 'Farbe';

  @override
  String get calendarDefaultColor => 'Farbe der Art verwenden';

  @override
  String get calendarEventLinkedTask => 'Verknüpfte Aufgabe';

  @override
  String get calendarEventNoTask => 'Keine verknüpfte Aufgabe';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Termine',
      one: '1 Termin',
      zero: 'Keine Termine',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fällige Aufgaben',
      one: '1 fällige Aufgabe',
      zero: 'keine fälligen Aufgaben',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Füge einen Termin oder Zeitblock hinzu, um diesen Tag zu planen.';

  @override
  String get calendarNow => 'Aktuelle Uhrzeit';

  @override
  String get calendarRecurring => 'Wiederholt sich';

  @override
  String get calendarEventNotFound => 'Dieser Termin existiert nicht mehr';

  @override
  String get calendarEventLocalTime => 'Zeiten werden in der Zeitzone deines Geräts angezeigt';

  @override
  String get calendarEventDeleted => 'Termin in den Papierkorb verschoben';

  @override
  String get calendarConflictMarker => 'Überschneidet sich mit einem anderen Termin';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Änderungen gelten für jeden Termin dieser Serie';

  @override
  String get calendarDragHintSeries =>
      'Das Ziehen eines wiederkehrenden Termins verschiebt die ganze Serie';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, Aufgabe fällig';
  }

  @override
  String get startupErrorTitle => 'Deine Daten konnten nicht geöffnet werden';

  @override
  String get startupErrorLocked =>
      'Der Verschlüsselungsschlüssel für die Daten dieses Geräts ist nicht verfügbar. Es wurde nichts gelöscht. Ein Neustart des Geräts hilft oft. Wenn du das Gerät kürzlich wiederhergestellt hast, stelle deine Daten stattdessen aus einer verschlüsselten Sicherung wieder her.';

  @override
  String get startupErrorCipher =>
      'Dieses Gerät unterstützt den verschlüsselten Speicher nicht, den die App benötigt. Es wurde nichts unverschlüsselt gespeichert.';

  @override
  String get startupErrorRetry => 'Erneut versuchen';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten sind zur Wiederholung fällig',
      one: '1 Karte ist zur Wiederholung fällig',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count fällig';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count neu';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Gefestigte Karten: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Gib 0 oder mehr ein';

  @override
  String get flashcardsSearchCards => 'Karten durchsuchen';

  @override
  String get flashcardsSearchEmpty => 'Keine Karten passen zu deiner Suche';

  @override
  String get flashcardsCardAdded => 'Karte hinzugefügt';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Fällig $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'In die Zwischenablage kopieren';

  @override
  String get flashcardsExportTitle => 'Stapel exportieren';

  @override
  String get flashcardsDeleteDeck => 'Stapel löschen';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, nächste Wiederholung in $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Frage: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Antwort: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Frage zeigen';

  @override
  String get flashcardsImportField => 'Zu importierende Karten';

  @override
  String get flashcardsNothingToStudy => 'Nichts zu lernen';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten zum Lernen bereit',
      one: '1 Karte zum Lernen bereit',
      zero: 'Keine Karten bereit',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Nach Bewertung';

  @override
  String get flashcardsDeckNotFound => 'Dieser Stapel ist nicht mehr verfügbar.';

  @override
  String get focusSessionDeleted => 'Sitzung gelöscht';

  @override
  String get focusDeleteConfirm =>
      'Diese Sitzung aus dem Verlauf löschen? Ihre Zeit zählt dann nicht mehr zu deinen Zielen.';

  @override
  String get focusUnlinkTask => 'Verknüpfte Aufgabe entfernen';

  @override
  String get focusNoteHint => 'Woran hast du gearbeitet?';

  @override
  String get focusTargetCaption => 'Gemessen aus gespeicherten Sitzungen';

  @override
  String get focusModeLabel => 'Timer-Modus';

  @override
  String focusUpNext(String phase) {
    return 'Als Nächstes: $phase';
  }

  @override
  String get focusStopwatchHint => 'Zählt hoch, bis du stoppst.';

  @override
  String get focusOpenHint => 'Kein Zeitlimit. Hör auf, wann immer du fertig bist.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Erinnerungen sind in den Einstellungen aus. Du wirst nicht benachrichtigt, wenn eine Sitzung endet.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Alle';

  @override
  String get goalsFilterPeriod => 'Zeitraumfilter';

  @override
  String get goalsFilterStatus => 'Statusfilter';

  @override
  String get goalsEmptyFiltered => 'Keine Ziele passen zu diesem Filter';

  @override
  String goalsDueOn(String date) {
    return 'Fällig $date';
  }

  @override
  String get goalsDeadline => 'Frist (optional)';

  @override
  String get goalsNoDeadline => 'Keine Frist';

  @override
  String get goalsSetDeadline => 'Frist festlegen';

  @override
  String get goalsRemoveDeadline => 'Frist entfernen';

  @override
  String get goalsDescription => 'Beschreibung (optional)';

  @override
  String get goalsTitleLabel => 'Titel';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Ziel erreicht';

  @override
  String get goalsLogged => 'Fortschritt eingetragen';

  @override
  String get goalsEntryDeleted => 'Eintrag entfernt';

  @override
  String get goalsDeleteEntry => 'Eintrag entfernen';

  @override
  String get goalsDeleted => 'Ziel gelöscht';

  @override
  String get goalsMarkActive => 'Als aktiv markieren';

  @override
  String get goalsNotFound => 'Dieses Ziel ist nicht mehr verfügbar';

  @override
  String get goalsLinkTask => 'Aufgabe verknüpfen';

  @override
  String get goalsNoLinkedTasks => 'Noch keine verknüpften Aufgaben';

  @override
  String get goalsUnlinkTask => 'Verknüpfung lösen';

  @override
  String get goalsTaskOpen => 'Noch nicht erledigt';

  @override
  String get goalsTaskLinked => 'Aufgabe verknüpft';

  @override
  String get goalsTaskUnlinked => 'Verknüpfung gelöst';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count erledigte verknüpfte Aufgaben',
      one: '1 erledigte verknüpfte Aufgabe',
    );
    return 'Enthält $_temp0 in diesem Zeitraum';
  }

  @override
  String get goalsHistoryAllTime =>
      'Einträge aus früheren Zeiträumen bleiben hier, zählen aber nur für ihren eigenen Zeitraum.';

  @override
  String habitsTodaySummary(int done, int total) {
    return 'Heute $done von $total erledigt';
  }

  @override
  String get habitsNothingToday => 'Für heute sind keine Gewohnheiten geplant';

  @override
  String get habitsDecrease => 'Ein Abhaken zurücknehmen';

  @override
  String get habitsResetToday => 'Heute zurücksetzen';

  @override
  String get habitsCheckInHint => 'Gedrückt halten zum Anpassen';

  @override
  String get habitsName => 'Name';

  @override
  String get habitsColor => 'Farbe';

  @override
  String get habitsValidationDays => 'Wähle mindestens einen Tag';

  @override
  String habitsReminderAt(String time) {
    return 'Jeden Tag um $time';
  }

  @override
  String get habitsSetReminder => 'Erinnerungszeit festlegen';

  @override
  String get habitsRemoveReminder => 'Erinnerung entfernen';

  @override
  String get habitsReminderNote =>
      'Erinnerungen erscheinen an geplanten Tagen, wenn Benachrichtigungen erlaubt sind.';

  @override
  String get habitsArchived => 'Gewohnheit archiviert';

  @override
  String get habitsNotFound => 'Diese Gewohnheit ist nicht mehr verfügbar';

  @override
  String get habitsLast30 => 'Letzte 30 Tage';

  @override
  String get habitsConsistencyNone => 'Noch nicht genug Daten';

  @override
  String get habitsCalendar => 'Verlauf';

  @override
  String get habitsCalendarHint => 'Tippe auf einen Tag, um ihn zu korrigieren.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count von $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Abhaken in den letzten 90 Tagen. Beständigkeit $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Abhaken in den letzten 90 Tagen. Noch nicht genug Daten.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Pausierte Tage beeinflussen deine Serie nicht.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Gewohnheit archivieren';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-mal am Tag',
      one: 'Einmal am Tag',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Weitere Notizen';

  @override
  String get notesAllNotebooks => 'Alle Notizbücher';

  @override
  String get notesNotebookName => 'Name des Notizbuchs';

  @override
  String get notesNotebookColor => 'Farbe';

  @override
  String get notesDeleteNotebook => 'Notizbuch löschen';

  @override
  String get notesDeleteNotebookMessage =>
      'Das Notizbuch wird entfernt. Seine Notizen bleiben erhalten und erscheinen unter Alle Notizbücher.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Hefte wichtige Notizen an, damit sie oben bleiben.';

  @override
  String get notesEmptyFavorites => 'Notizen, die du als Favorit markierst, erscheinen hier.';

  @override
  String get notesEmptyArchived => 'Archivierte Notizen erscheinen hier.';

  @override
  String get notesEmptyFiltered => 'Keine Notizen passen zu diesen Filtern.';

  @override
  String get notesArchivedSnack => 'Notiz archiviert';

  @override
  String get notesUnarchivedSnack => 'Notiz zurück zu deinen Notizen verschoben';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done von $total erledigt';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatierung';

  @override
  String get notesWrite => 'Schreiben';

  @override
  String get notesPreviewEmpty => 'Noch nichts für die Vorschau.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Noch keine anderen Notizen verlinken hierher. Verlinke diese Notiz mit [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Gib dieser Notiz einen Titel, damit andere Notizen auf sie verlinken können.';

  @override
  String get notesLinkedTasksEmpty => 'Keine Aufgaben mit dieser Notiz verknüpft.';

  @override
  String notesLinkMissing(String title) {
    return 'Es gibt noch keine Notiz mit dem Titel „$title“.';
  }

  @override
  String get notesNotFound => 'Diese Notiz existiert nicht mehr.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Checklisteneintrag: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Notiz $title öffnen';
  }

  @override
  String get notesTaskDone => 'Erledigt';

  @override
  String get notifTimerDoneBody => 'Die eingestellte Zeit ist abgelaufen.';

  @override
  String get onboardingPrivatePointDevice => 'Nur auf diesem Gerät gespeichert, verschlüsselt';

  @override
  String get onboardingPrivatePointAccount => 'Kein Konto nötig';

  @override
  String get onboardingPrivatePointTracking => 'Keine Analyse, kein Tracking';

  @override
  String get onboardingLanguageBody => 'Du kannst das jederzeit in den Einstellungen ändern.';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get projectsActive => 'Aktiv';

  @override
  String get projectNameHint => 'z. B. Produktstart';

  @override
  String get projectGoalHint => 'Woran erkennst du, dass es fertig ist?';

  @override
  String get projectNoDeadline => 'Keine Frist';

  @override
  String get projectTasksOpen => 'Offene Aufgaben';

  @override
  String get projectTasksCompleted => 'Erledigte Aufgaben';

  @override
  String get projectAddTask => 'Aufgabe zum Projekt hinzufügen';

  @override
  String get projectAddNote => 'Neue Projektnotiz';

  @override
  String get projectLinkedNotes => 'Notizen';

  @override
  String get projectNoTasks => 'Noch keine Aufgaben in diesem Projekt';

  @override
  String get projectArchivedBadge => 'Archiviert';

  @override
  String get projectDeleted => 'Projekt in den Papierkorb verschoben';

  @override
  String get projectDeleteMessage => 'Die Aufgaben bleiben ohne Projekt in deiner Liste.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, zu $percent Prozent erledigt';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Ergebnisse',
      one: '1 Ergebnis',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Nach Art filtern';

  @override
  String searchRecentTap(String query) {
    return 'Erneut nach $query suchen';
  }

  @override
  String get settingsLanguageHint =>
      'Wähle die Sprache für die ganze App. Die Namen stehen in ihrer eigenen Sprache.';

  @override
  String get settingsThemeHint => 'Hell, dunkel oder wie das System';

  @override
  String settingsDecrease(String setting) {
    return '$setting verringern';
  }

  @override
  String settingsIncrease(String setting) {
    return '$setting erhöhen';
  }

  @override
  String get settingsQuietStart => 'Beginnt';

  @override
  String get settingsQuietEnd => 'Endet';

  @override
  String get settingsNotificationsHint =>
      'Das speichert deine Einstellung in der App. Das System fragt eventuell zusätzlich nach der Berechtigung.';

  @override
  String get settingsDashboardHint =>
      'Zum Umsortieren ziehen. Schalte Bereiche aus, die du nicht brauchst.';

  @override
  String settingsDashboardReorder(String section) {
    return '$section verschieben';
  }

  @override
  String get settingsDashboardReset => 'Standardreihenfolge wiederherstellen';

  @override
  String get settingsAssistantDesc =>
      'Optionale Planungshilfe. Nichts verlässt dieses Gerät, außer du verbindest einen Anbieter.';

  @override
  String get settingsAssistantSetup => 'Assistent und Anbieter einrichten';

  @override
  String get settingsTrashDesc => 'Entfernte Elemente wiederherstellen oder endgültig löschen';

  @override
  String get settingsEraseFirstBody =>
      'Das lässt sich nicht rückgängig machen. Erstelle am besten zuerst eine verschlüsselte Sicherung.';

  @override
  String settingsEraseTypeLabel(String word) {
    return '$word eingeben';
  }

  @override
  String get settingsEraseFailed =>
      'Die Daten konnten nicht gelöscht werden. Es wurde nichts geändert.';

  @override
  String get settingsAboutTagline =>
      'Ein privater Arbeitsbereich für Produktivität, der zuerst lokal arbeitet.';

  @override
  String get backupShowPassword => 'Passwort anzeigen';

  @override
  String get backupHidePassword => 'Passwort verbergen';

  @override
  String get backupSaved => 'Sicherung gespeichert';

  @override
  String get backupFailed =>
      'Die Sicherung konnte nicht erstellt werden. Deine Daten sind unverändert.';

  @override
  String get backupReadFailed => 'Die ausgewählte Datei konnte nicht gelesen werden.';

  @override
  String get backupRestoreFailed => 'Wiederherstellung fehlgeschlagen. Es wurde nichts geändert.';

  @override
  String get backupShareSubject => 'Verschlüsselte Deep-Focus-Sicherung';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Alle $count Tage',
      one: 'Jeden Tag',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Alle $count Wochen',
      one: 'Jede Woche',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Alle $count Monate',
      one: 'Jeden Monat',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Alle $count Jahre',
      one: 'Jedes Jahr',
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
    return 'am $days';
  }

  @override
  String get repeatEndsLabel => 'Endet';

  @override
  String get repeatEndsAfter => 'Nach einer Anzahl von Malen';

  @override
  String get repeatCountLabel => 'Anzahl';

  @override
  String get reminderNone => 'Keine Erinnerung';

  @override
  String get reminderCustomTime => 'Zu einer bestimmten Zeit';

  @override
  String get a11yDecrease => 'Verringern';

  @override
  String get a11yIncrease => 'Erhöhen';

  @override
  String get pickTaskTitle => 'Aufgabe auswählen';

  @override
  String get pickTaskEmpty => 'Keine offenen Aufgaben';

  @override
  String get tasksSearchTooltip => 'Aufgaben durchsuchen';

  @override
  String get tasksSectionOverdue => 'Überfällig';

  @override
  String get tasksSectionToday => 'Heute';

  @override
  String get tasksRecurringSemantics => 'Wiederholt sich';

  @override
  String get tasksFilterPriorityAtLeast => 'Mindestpriorität';

  @override
  String get tasksFilterCategory => 'Kategorie';

  @override
  String get tasksFilterAnyCategory => 'Jede Kategorie';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Jedes Label';

  @override
  String get tasksFilterReset => 'Filter zurücksetzen';

  @override
  String get tasksViewByProject => 'Nach Projekt';

  @override
  String get tasksViewByPriority => 'Nach Priorität';

  @override
  String get tasksViewByCategory => 'Nach Kategorie';

  @override
  String get tasksGroupNoCategory => 'Keine Kategorie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aufgaben',
      one: '1 Aufgabe',
    );
    return 'Blockiert durch $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Diese Aufgabe wird durch unerledigte Aufgaben blockiert. Trotzdem abschließen?';

  @override
  String get taskStartFocus => 'Auf diese Aufgabe fokussieren';

  @override
  String get taskRemoveDate => 'Datum entfernen';

  @override
  String get taskAllDay => 'Keine bestimmte Uhrzeit';

  @override
  String get taskSaved => 'Aufgabe gespeichert';

  @override
  String get taskCreated => 'Aufgabe erstellt';

  @override
  String get taskReminderNeedsDue =>
      'Lege ein Fälligkeitsdatum fest, um relative Erinnerungen zu nutzen';

  @override
  String get taskSubtaskDetailsHint =>
      'Speichere die Aufgabe zuerst, um Unteraufgaben, Checklisteneinträge, Labels und Abhängigkeiten hinzuzufügen.';

  @override
  String get taskLabelName => 'Name des Labels';

  @override
  String get taskMoreDetails => 'Details';

  @override
  String get taskPlanning => 'Planung';

  @override
  String get taskOrganize => 'Ordnen';

  @override
  String get taskBreakdown => 'Aufteilung';

  @override
  String get trashDeleteTaskTitle => 'Diese Aufgabe endgültig löschen?';

  @override
  String get trashDeleteNoteTitle => 'Diese Notiz endgültig löschen?';

  @override
  String get trashDeleteBody => 'Das lässt sich nicht rückgängig machen.';

  @override
  String get trashEmptyTitle => 'Papierkorb leeren?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Elemente werden endgültig gelöscht.',
      one: '1 Element wird endgültig gelöscht.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Wiederhergestellt';

  @override
  String get trashPurged => 'Endgültig gelöscht';

  @override
  String trashDeletedOn(String date) {
    return 'Gelöscht am $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Elemente',
      one: '1 Element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Vorlesen';

  @override
  String get flashcardsTtsUnavailable => 'Sprachausgabe ist auf diesem Gerät nicht verfügbar.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Für diese Sprache ist keine Stimme installiert. Füge eine in den Android-Einstellungen zur Sprachausgabe hinzu.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Funke',
      'rocket': 'Rakete',
      'book': 'Buch',
      'work': 'Arbeit',
      'home': 'Zuhause',
      'heart': 'Herz',
      'code': 'Code',
      'palette': 'Palette',
      'fitness': 'Fitness',
      'school': 'Schule',
      'travel': 'Reisen',
      'money': 'Ersparnisse',
      'other': 'Symbol',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Weitere Felder';

  @override
  String get cardFieldExample => 'Beispiel';

  @override
  String get cardFieldExplanation => 'Erklärung';

  @override
  String get cardFieldPronunciation => 'Aussprache';

  @override
  String get cardFieldNotes => 'Zusätzliche Notizen';

  @override
  String get projectMilestones => 'Meilensteine';

  @override
  String get milestoneAdd => 'Meilenstein hinzufügen';

  @override
  String get milestoneEdit => 'Meilenstein bearbeiten';

  @override
  String get milestoneTitleLabel => 'Meilenstein';

  @override
  String get milestoneNoDate => 'Kein Datum';

  @override
  String get milestonesEmpty =>
      'Noch keine Meilensteine. Füge Etappen mit Datum hinzu, um das Projekt im Kalender zu verfolgen.';

  @override
  String get milestoneDeleted => 'Meilenstein gelöscht';

  @override
  String milestoneDoneA11y(String title) {
    return 'Meilenstein „$title“ als erledigt markieren';
  }

  @override
  String calendarMilestone(String project) {
    return 'Meilenstein · $project';
  }

  @override
  String get tasksViewInbox => 'Eingang';

  @override
  String get tasksViewArchived => 'Archiviert';

  @override
  String get tasksEmptyInbox =>
      'Aufgaben ohne Projekt oder Datum landen hier. Sortiere sie, wenn du eine Minute hast.';

  @override
  String get tasksEmptyArchived =>
      'Archivierte Aufgaben bleiben hier, außerhalb deiner Listen und Erinnerungen.';

  @override
  String get taskArchivedBadge => 'Archiviert';

  @override
  String get taskStatusInProgress => 'In Arbeit';

  @override
  String get taskArchived => 'Aufgabe archiviert';

  @override
  String get taskUnarchived => 'Aufgabe aus dem Archiv geholt';

  @override
  String get focusPlanTitle => 'Sitzungsplan';

  @override
  String focusPlanTotal(String duration) {
    return 'Gesamt $duration';
  }

  @override
  String get focusPlanRounds => 'Fokussitzungen';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Lange Pause nach';

  @override
  String get focusPlanSkipLastBreak => 'Letzte Pause überspringen';

  @override
  String get focusPlanAutoBreaks => 'Pausen automatisch starten';

  @override
  String get focusPlanAutoFocus => 'Fokus nach einer Pause automatisch starten';

  @override
  String get focusPlanSave => 'Plan speichern';

  @override
  String get focusPlanNameHint => 'z. B. Prüfungsvorbereitung';

  @override
  String get focusPlanSaved => 'Plan gespeichert';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work Min. Fokus, $rest Min. Pause';
  }

  @override
  String focusPlanDecrease(String label) {
    return '$label verringern';
  }

  @override
  String focusPlanIncrease(String label) {
    return '$label erhöhen';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sitzung $current von $total';
  }

  @override
  String get focusSeriesComplete => 'Serie geschafft. Gut gemacht!';

  @override
  String get filterAll => 'Alle';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importiert · $duplicates Duplikate übersprungen · $invalid unvollständige Zeilen';
  }

  @override
  String get flashcardsSuspend => 'Karte aussetzen';

  @override
  String get flashcardsResume => 'Karte fortsetzen';

  @override
  String get flashcardsSuspended => 'Karte ausgesetzt: Sie wird nicht eingeplant';

  @override
  String get flashcardsResumed => 'Karte fortgesetzt';

  @override
  String get flashcardsSuspendedFilter => 'Ausgesetzt';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown von $total Karten';
  }

  @override
  String get flashcardsImportFile => 'Aus Datei';

  @override
  String get speechTitle => 'Sprachausgabe';

  @override
  String get speechAppLanguage => 'App-Sprache';

  @override
  String get speechFrontLanguage => 'Sprache der Vorderseite';

  @override
  String get speechBackLanguage => 'Sprache der Rückseite';

  @override
  String get speechRepeat => 'Jedes Vorlesen wiederholen';

  @override
  String get speechRate => 'Geschwindigkeit';

  @override
  String get speechAutoRead => 'Frage automatisch vorlesen';

  @override
  String get speechHint =>
      'Nutzt die auf diesem Gerät installierten Stimmen, offline. Hat eine Sprache keine Stimme, erfährst du das, und es wird nichts anderes verwendet.';

  @override
  String get studyHowTitle => 'Wie möchtest du lernen?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten wiederholen',
      one: '1 Karte wiederholen',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Alle Karten üben (Plan bleibt gleich)';

  @override
  String get studyPracticeMistakes => 'Letzte Fehler üben';

  @override
  String get studyPracticeHint =>
      'Übungsrunden ändern nie, wann Karten fällig sind. Wiederholen aktualisiert den Plan.';

  @override
  String get studyModeClassic => 'Klassisch';

  @override
  String get studyModeReverse => 'Umgekehrt';

  @override
  String get studyModeMixed => 'Beide Richtungen';

  @override
  String get studyModeTyped => 'Antwort eintippen';

  @override
  String get studyModeChoice => 'Multiple Choice';

  @override
  String get studyModeListening => 'Hören';

  @override
  String get studyPractice => 'Übung';

  @override
  String get studyNoMistakes => 'Keine aktuellen Fehler in diesem Stapel. Super!';

  @override
  String get studyTypeAnswer => 'Gib deine Antwort ein';

  @override
  String get studyCheck => 'Prüfen';

  @override
  String get studyKnewIt => 'Gewusst';

  @override
  String get studyDidntKnow => 'Nicht gewusst';

  @override
  String studyMistakes(int count) {
    return 'Verpasst ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Verpasste Karten wiederholen';

  @override
  String get studyCorrect => 'Richtig';

  @override
  String get studyAlmost => 'Fast — prüfe die Schreibweise';

  @override
  String get studyWrong => 'Nicht ganz';

  @override
  String get studyShowText => 'Text anzeigen';

  @override
  String get flashcardsImportFileFailed =>
      'Die Datei konnte nicht geöffnet werden. Du kannst stattdessen ihren Inhalt einfügen.';

  @override
  String get studyNoMatchingCards => 'Noch keine Karten für diese Auswahl.';

  @override
  String get studyPracticeNew => 'Nur neue';

  @override
  String get studyPracticeHard => 'Schwere Karten';

  @override
  String get studyPracticeFavorites => 'Favoriten';

  @override
  String get studySessionSize => 'Karten pro Sitzung';

  @override
  String get studySessionAll => 'Alle';

  @override
  String get studyOrder => 'Reihenfolge';

  @override
  String get studyOrderDue => 'Am längsten überfällig zuerst';

  @override
  String get studyOrderRandom => 'Zufällig';

  @override
  String get studyOrderHardest => 'Schwerste zuerst';

  @override
  String get flashcardsHard => 'Schwer';

  @override
  String get flashcardsFavorites => 'Favoriten';

  @override
  String get flashcardsFavorite => 'Zu Favoriten hinzufügen';

  @override
  String get flashcardsUnfavorite => 'Aus Favoriten entfernen';

  @override
  String get flashcardsDuplicate => 'Duplizieren';

  @override
  String get flashcardsMoveTo => 'In Stapel verschieben';

  @override
  String get flashcardsNoOtherDeck => 'Lege zuerst einen weiteren Stapel an.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten verschoben',
      one: 'Karte verschoben',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Tag hinzufügen';

  @override
  String get flashcardsTagHint => 'z. B. Verben';

  @override
  String flashcardsSelected(int count) {
    return '$count ausgewählt';
  }

  @override
  String get flashcardsSelectAll => 'Alle angezeigten auswählen';

  @override
  String flashcardsSelectCard(String front) {
    return '$front auswählen';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Abruf $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Mögliches Duplikat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Dieser Stapel enthält schon „$front“ → „$back“. Trotzdem speichern?';
  }

  @override
  String get flashcardsSaveAnyway => 'Trotzdem speichern';

  @override
  String get flashcardsStats => 'Statistik';

  @override
  String get flashcardsStatTotal => 'Karten';

  @override
  String get flashcardsStatLearning => 'Im Lernen';

  @override
  String get flashcardsStatMatureCaption => '21+ Tage gemerkt';

  @override
  String get flashcardsStatReviewsToday => 'Wiederholungen heute';

  @override
  String get flashcardsStatCorrect => 'Richtige Antworten';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Letzte $days Tage';
  }

  @override
  String get flashcardsStatForget => 'Vergessensrate';

  @override
  String get flashcardsStatForgetCaption => '„Nochmal“ bei gelernten Karten';

  @override
  String get flashcardsStatRecall => 'Abruf jetzt';

  @override
  String get flashcardsStatRecallCaption => 'FSRS-Schätzung, wiederholte Karten';

  @override
  String flashcardsStatActivity(int count) {
    return 'Wiederholungen pro Tag · insgesamt $count';
  }

  @override
  String get flashcardsStatHistory => 'Letzte Antworten';

  @override
  String get flashcardsStatNoHistory =>
      'Noch keine Wiederholungen. Lerne den Stapel, um hier deinen Fortschritt zu sehen.';

  @override
  String flashcardsSpeakField(String field) {
    return '$field vorlesen';
  }

  @override
  String get speechVoice => 'Stimme';

  @override
  String get speechVoiceDefault => 'Automatisch';

  @override
  String get speechVoiceOnline => 'braucht Internet';

  @override
  String get speechTest => 'Stimme testen';

  @override
  String get importNext => 'Vorschau';

  @override
  String get importPreviewTitle => 'Spalten den Feldern zuordnen';

  @override
  String get importIgnoreColumn => 'Ignorieren';

  @override
  String importColumn(int n) {
    return 'Spalte $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready Karten bereit · $invalid unvollständige Zeilen werden übersprungen';
  }

  @override
  String get importNeedFrontBack => 'Wähle, welche Spalten Vorder- und Rückseite sind.';

  @override
  String get actionMoveUp => 'Nach oben';

  @override
  String get actionMoveDown => 'Nach unten';

  @override
  String get flashcardsLayoutTitle => 'Kartenaufbau';

  @override
  String get flashcardsLayoutHint =>
      'Benenne die zusätzlichen Felder dieses Stapels um, blende sie aus oder ordne sie neu. Der Karteninhalt wird nie geändert.';

  @override
  String flashcardsLayoutShow(String field) {
    return '$field beim Lernen zeigen';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Antwort Schritt für Schritt aufdecken';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Zuerst erscheint die Rückseite; jedes weitere Feld öffnet sich mit einem Tippen.';

  @override
  String flashcardsRevealNext(String field) {
    return '$field zeigen';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Diese Datei ist größer als $mb MB.';
  }

  @override
  String get flashcardsImage => 'Bild';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Bild hinzufügen';

  @override
  String get flashcardsAddAudio => 'Audio hinzufügen';

  @override
  String get flashcardsPlayAudio => 'Aufnahme abspielen';

  @override
  String get flashcardsAudioUnavailable =>
      'Diese Aufnahme kann auf diesem Gerät nicht abgespielt werden.';

  @override
  String get flashcardsCustomFields => 'Deine Felder';

  @override
  String get flashcardsTemplates => 'Vorlagen';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Feld $n';
  }

  @override
  String get flashcardsAddField => 'Feld hinzufügen';

  @override
  String get flashcardsFieldName => 'Feldname';

  @override
  String get flashcardsFieldLangDefault => 'Sprache der Seite';

  @override
  String get flashcardsTemplateConfirm =>
      'Die Vorlage legt fest, wie Felder angezeigt werden, und fügt ihre Felder hinzu. Deine Karten und vorhandenen Felder bleiben, wie sie sind.';

  @override
  String get flashcardsApplyTemplate => 'Anwenden';

  @override
  String get templateVocabulary => 'Vokabeln';

  @override
  String get templateTwoTranslations => 'Wort mit zwei Übersetzungen';

  @override
  String get templateQuestionAnswer => 'Frage und Antwort';

  @override
  String get templateDefinition => 'Begriff und Definition';

  @override
  String get templateGrammar => 'Grammatikregel';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Zweite Übersetzung';

  @override
  String get templateFieldSynonyms => 'Synonyme';

  @override
  String get templateFieldRule => 'Regel';

  @override
  String get deckCategory => 'Niveau oder Thema';

  @override
  String get deckCategoryHint => 'z. B. A1, Medizin';

  @override
  String get flashcardsSearchAll => 'Alle Karten durchsuchen';

  @override
  String get flashcardsSearchAllHint => 'Wort, Übersetzung, Beispiel, Notiz, Tag…';

  @override
  String get flashcardsAllDecks => 'Alle Stapel';

  @override
  String get flashcardsAllLanguages => 'Alle Sprachen';

  @override
  String get flashcardsLangUnset => 'Sprache nicht festgelegt';

  @override
  String get flashcardsLevelUnset => 'Kein Niveau oder Thema';

  @override
  String get flashcardsByLanguage => 'Fortschritt nach Sprache';

  @override
  String get flashcardsByLevel => 'Fortschritt nach Niveau oder Thema';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks Stapel · $cards Karten · $mature gefestigt · $due fällig · $correct richtig (30 Tage)';
  }

  @override
  String get flashcardsRecord => 'Aufnehmen';

  @override
  String get flashcardsRecording => 'Aufnahme läuft…';

  @override
  String get flashcardsRecordStop => 'Stoppen und behalten';

  @override
  String get flashcardsMicDenied =>
      'Der Mikrofonzugriff ist aus. Erlaube ihn in den Systemeinstellungen, um aufzunehmen.';

  @override
  String get flashcardsRecordFailed => 'Aufnehmen ist auf diesem Gerät nicht möglich.';

  @override
  String get soundsTitle => 'Klänge';

  @override
  String get soundsNature => 'Natur';

  @override
  String get soundsNoise => 'Fokusrauschen';

  @override
  String get soundRain => 'Regen';

  @override
  String get soundStorm => 'Gewitter';

  @override
  String get soundRiver => 'Fluss';

  @override
  String get soundOcean => 'Meereswellen';

  @override
  String get soundFire => 'Lagerfeuer';

  @override
  String get soundForest => 'Waldvögel';

  @override
  String get soundNight => 'Sommernacht';

  @override
  String get soundWhite => 'Weißes Rauschen';

  @override
  String get soundPink => 'Rosa Rauschen';

  @override
  String get soundBrown => 'Braunes Rauschen';

  @override
  String get soundsPlay => 'Abspielen';

  @override
  String get soundsSleep => 'Schlaftimer';

  @override
  String get soundsSleepOff => 'Aus';

  @override
  String soundsSleepAt(String time) {
    return 'Stoppt um $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Bis zu $count Klänge können gleichzeitig laufen.';
  }

  @override
  String get soundsHint =>
      'Tippe auf einen Klang zum Starten. Mische mehrere und stelle jede Lautstärke ein.';

  @override
  String get soundsMixer => 'Mischung';

  @override
  String soundsVolumeOf(String name) {
    return 'Lautstärke $name';
  }

  @override
  String get soundsChannel => 'Naturklänge';

  @override
  String get settingsEndTone => 'Ton am Timer-Ende';

  @override
  String get toneGentle => 'Sanfte Pieptöne';

  @override
  String get toneBeeps => 'Pieptöne';

  @override
  String get toneWood => 'Holzklopfen';

  @override
  String get toneBird => 'Vogelruf';

  @override
  String get toneStream => 'Bach';

  @override
  String get toneSystem => 'Ton des Telefons';

  @override
  String get speechOnPhone => 'Auf diesem Telefon';

  @override
  String get speechAllLanguages => 'Alle Sprachen';

  @override
  String get speechSearchLanguage => 'Sprachen suchen';

  @override
  String get speechGetVoices => 'Weitere Stimmen herunterladen';

  @override
  String get speechGetVoicesHint =>
      'Sprachen ohne Stimme lassen sich in den Spracheinstellungen des Telefons herunterladen.';

  @override
  String get speechSettingsFailed =>
      'Die Spracheinstellungen konnten auf diesem Telefon nicht geöffnet werden.';

  @override
  String get speechVoiceMissing => 'Keine Stimme installiert';

  @override
  String get speechPause => 'Pause zwischen Wiederholungen';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Beispiel mit der Antwort vorlesen';

  @override
  String get flashListen => 'Anhören';

  @override
  String get flashListenNext => 'Nächste Karte';

  @override
  String get flashListenEmpty => 'Keine Karten zum Anhören.';

  @override
  String get flashViewTable => 'Tabelle';

  @override
  String get flashViewCards => 'Karten';

  @override
  String get flashSwapSides => 'Spalten tauschen';

  @override
  String get flashSort => 'Sortieren';

  @override
  String get flashSortNewest => 'Neueste zuerst';

  @override
  String get flashSortAlpha => 'A bis Z';

  @override
  String get flashSortDue => 'Fällige zuerst';

  @override
  String get flashSortHard => 'Schwerste zuerst';

  @override
  String get flashPasteCards => 'Karten einfügen';

  @override
  String get flashClipboardEmpty => 'Die Zwischenablage enthält keinen Text.';

  @override
  String get flashMenuAdd => 'Karten hinzufügen';

  @override
  String get flashMenuDeck => 'Stapel';

  @override
  String get flashToday => 'Heute';

  @override
  String get flashStudyNow => 'Lernen';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten beantwortet',
      one: '1 Karte beantwortet',
      zero: 'Keine Karten beantwortet',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Regen im Wald';

  @override
  String get autoBackupTitle => 'Automatische Sicherungen';

  @override
  String get autoBackupDesc => 'Jeden Tag auf diesem Telefon; die letzten 7 bleiben erhalten';

  @override
  String get autoBackupHint =>
      'Diese Kopien bleiben auf diesem Telefon und werden beim Deinstallieren der App entfernt. Für ein neues Telefon speicherst du mit „Sichern“ eine Datei.';

  @override
  String get autoBackupNone => 'Noch keine automatische Sicherung. Die erste entsteht heute.';

  @override
  String get autoBackupRestore => 'Wiederherstellen';

  @override
  String autoBackupConfirm(String date) {
    return 'Alle aktuellen Daten durch die Sicherung vom $date ersetzen?';
  }

  @override
  String get autoBackupRestored => 'Wiederhergestellt.';

  @override
  String get errorLogTitle => 'Fehlerprotokoll';

  @override
  String get errorLogHint =>
      'Wenn etwas schiefgeht, wird es hier vermerkt: nur die Art des Fehlers und die Stelle im Code, nie deine Inhalte. Teile es, um bei der Behebung zu helfen.';

  @override
  String get errorLogEmpty => 'Keine Fehler aufgezeichnet.';

  @override
  String get errorLogClear => 'Leeren';

  @override
  String get soundsWithFocus => 'Mit Fokussitzungen abspielen';

  @override
  String get soundsWithFocusHint =>
      'Deine Mischung startet mit einer Fokussitzung und pausiert in den Pausen.';

  @override
  String get soundsSavedMixes => 'Gespeicherte Mischungen';

  @override
  String get soundsSaveMix => 'Diese Mischung speichern';

  @override
  String get soundsMixNameHint => 'Name, z. B. Regnerische Bibliothek';

  @override
  String soundsDeleteMix(String name) {
    return 'Die Mischung „$name“ löschen?';
  }

  @override
  String get settingsReviewReminderHint => 'Einmal am Tag, nur wenn Karten fällig sind';

  @override
  String get settingsReviewTime => 'Uhrzeit der Erinnerung';

  @override
  String get shortcutFocus => 'Fokus';

  @override
  String get shortcutNewTask => 'Neue Aufgabe';

  @override
  String get shortcutReview => 'Karten lernen';

  @override
  String get shortcutSounds => 'Naturklänge';

  @override
  String get myDayTitle => 'Meinen Tag starten';

  @override
  String get myDayHint => 'Dein Tag auf einen Blick, dann ein Tipp zum Fokus';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aufgaben für heute',
      one: '1 Aufgabe für heute',
      zero: 'Keine Aufgaben für heute',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Heute keine weiteren Termine';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Als Nächstes: $title um $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Noch $count Gewohnheiten',
      one: 'Noch 1 Gewohnheit',
      zero: 'Alle Gewohnheiten erledigt',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Mit einer Fokussitzung beginnen';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Dschumada al-Ula';

  @override
  String get hijriMonth6 => 'Dschumada al-Achira';

  @override
  String get hijriMonth7 => 'Radschab';

  @override
  String get hijriMonth8 => 'Schaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Schawwal';

  @override
  String get hijriMonth11 => 'Dhu l-Qa\'da';

  @override
  String get hijriMonth12 => 'Dhu l-Hiddscha';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day. $month $year n. H.';
  }

  @override
  String get settingsHijri => 'Hidschri-Daten';

  @override
  String get settingsHijriHint => 'Im Kalender und auf der Startseite angezeigt (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '1 Tag',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return 'Heute $done von $goal Karten';
  }

  @override
  String get studyGoalReached => 'Tagesziel erreicht. Gut gemacht!';

  @override
  String get studyWeekTitle => 'Deine Woche';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'In 7 Tagen $count Karten beantwortet',
      one: 'In 7 Tagen 1 Karte beantwortet',
      zero: 'In 7 Tagen keine Karten beantwortet',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration Fokus in 7 Tagen';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Serie: $current · Beste: $best';
  }

  @override
  String get studyGoalTitle => 'Tagesziel (Karten)';

  @override
  String get studyGoalOff => 'Aus';

  @override
  String get focusDndTitle => 'Nicht stören beim Fokussieren';

  @override
  String get focusDndHint => 'Schaltet sich für jede Fokussitzung ein und in der Pause wieder aus';

  @override
  String get focusDndNeedsAccess =>
      'Erlaube den Zugriff in den Telefoneinstellungen, um das zu nutzen';

  @override
  String get voiceInput => 'Sprechen statt tippen';

  @override
  String get voiceInputPrompt => 'Jetzt sprechen';

  @override
  String get voiceInputUnavailable =>
      'Spracheingabe ist auf diesem Telefon nicht verfügbar. Installiere oder aktiviere einen Sprachdienst (zum Beispiel Spracherkennung und -synthese von Google).';

  @override
  String get prayerFajr => 'Fadschr';

  @override
  String get prayerSunrise => 'Sonnenaufgang';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Ischa';

  @override
  String get prayerMethodMwl => 'Islamische Weltliga';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Mekka';

  @override
  String get prayerMethodEgypt => 'Ägyptische Generalbehörde';

  @override
  String get prayerMethodJordan => 'Jordanien, Ministerium für Awqaf';

  @override
  String get prayerMethodKarachi => 'Universität für Islamische Wissenschaften, Karatschi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Golfregion';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Katar';

  @override
  String get prayerMethodTurkey => 'Türkei, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malaysia, Indonesien';

  @override
  String get prayerMethodFrance => 'Frankreich (12°)';

  @override
  String get prayerMethodRussia => 'Russland, Geistliche Verwaltung';

  @override
  String prayerNotifTitle(String name) {
    return 'Zeit für $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Gebetszeit · $time';
  }

  @override
  String get prayerTitle => 'Gebetszeiten';

  @override
  String get prayerOffHint =>
      'Wähle deine Stadt, um die Gebetszeiten zu sehen. Sie werden auf dem Telefon berechnet; kein Standortzugriff nötig.';

  @override
  String get prayerChooseCity => 'Stadt wählen';

  @override
  String get prayerCity => 'Stadt';

  @override
  String get prayerCitySearch => 'Stadt suchen';

  @override
  String get prayerMethod => 'Berechnungsmethode';

  @override
  String get prayerHanafiAsr => 'Hanafitisches Asr (spätere Zeit)';

  @override
  String get prayerReminders => 'Zu jeder Gebetszeit benachrichtigen';

  @override
  String get prayerPauseFocus => 'Fokus zur Gebetszeit pausieren';

  @override
  String get prayerPauseFocusHint =>
      'Eine laufende Sitzung pausiert; setze sie nach dem Gebet fort';

  @override
  String get prayerTurnOff => 'Gebetszeiten ausschalten';

  @override
  String get prayerAccuracyNote =>
      'Berechnete Zeiten können einige Minuten von deiner Moschee abweichen.';

  @override
  String prayerNext(String name, String time) {
    return '$name um $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Diese Anki-Datei nutzt das neueste Format. Exportiere in Anki erneut mit „Ältere Anki-Versionen unterstützen“ und importiere diese Datei.';

  @override
  String get importTemplate => 'Tabellenvorlage';

  @override
  String get importTemplateFront => 'Apfel';

  @override
  String get importTemplateBack => 'eine runde Frucht';

  @override
  String get importTemplateExample => 'Ich esse jeden Tag einen Apfel.';

  @override
  String get importTemplateTag => 'Essen';

  @override
  String get starterTitle => 'Startstapel';

  @override
  String get starterHint =>
      'Füge einen hinzu und lerne sofort los. Du kannst ihn später bearbeiten oder löschen.';

  @override
  String get starterAdd => 'Hinzufügen';

  @override
  String get starterWords => 'Englische Alltagswörter (mit Arabisch)';

  @override
  String get starterCapitals => 'Hauptstädte der Welt';

  @override
  String get starterElements => 'Chemische Elemente';

  @override
  String get settingsAccent => 'Akzentfarbe';

  @override
  String get accentViolet => 'Violett';

  @override
  String get accentBlue => 'Blau';

  @override
  String get accentTeal => 'Petrol';

  @override
  String get accentGreen => 'Grün';

  @override
  String get accentRose => 'Rosé';

  @override
  String get accentAmber => 'Bernstein';

  @override
  String get settingsFlashTextSize => 'Textgröße der Karteikarten';

  @override
  String get settingsFlashTextSample => 'Beispiel';

  @override
  String get widgetStartFocus => 'Tippen zum Fokussieren';

  @override
  String widgetFocusUntil(String time) {
    return 'Fokus bis $time';
  }

  @override
  String get widgetNoCardsDue => 'Karten: alles erledigt';

  @override
  String get faqMyDayQ => 'Was macht „Meinen Tag starten“?';

  @override
  String get faqMyDayA =>
      'Einmal am Tag bietet die Startseite es an: Sieh dir die Aufgaben von heute, den nächsten Termin, offene Gewohnheiten und fällige Karten an und starte dann mit einem Tippen eine Fokussitzung. Halte das App-Symbol gedrückt für Schnellaktionen oder füge das Widget hinzu, um Fokuszeit und fällige Karten zu sehen.';

  @override
  String get faqTasksQ => 'Wie lege ich eine Aufgabe mit Erinnerung an?';

  @override
  String get faqTasksA =>
      'Tippe auf der Startseite auf Neue Aufgabe oder in Aufgaben auf +. Gib den Titel ein oder sprich ihn mit dem Mikrofon, dann lege Fälligkeitsdatum, Uhrzeit und Erinnerung fest. Überfällige Aufgaben stehen oben.';

  @override
  String get faqFocusQ => 'Wie funktioniert der Fokus-Timer?';

  @override
  String get faqFocusA =>
      'Wähle Pomodoro, einen Countdown oder offene Zeit und drücke Starten; Pausen können automatisch folgen. In den Einstellungen wählst du den Abschlusston, schaltest „Nicht stören“ beim Fokussieren ein und spielst deine Naturklänge zu jeder Sitzung.';

  @override
  String get faqSoundsQ => 'Kann ich Naturklänge mischen?';

  @override
  String get faqSoundsA =>
      'Schalte bis zu sechs echte Aufnahmen ein, stelle jede Lautstärke ein und speichere die Mischung unter einem Namen. Sie laufen im Hintergrund weiter, und ein Schlaftimer kann sie stoppen. Musik wird nicht verwendet.';

  @override
  String get faqCalendarQ => 'Kann der Kalender Hidschri-Daten anzeigen?';

  @override
  String get faqCalendarA =>
      'Ja. Hidschri-Daten (Umm al-Qura) erscheinen auf Arabisch automatisch und lassen sich in den Einstellungen für jede Sprache einschalten. Termine, Aufgaben mit Fälligkeit und Projektmeilensteine erscheinen zusammen.';

  @override
  String get faqFlashcardsQ => 'Wie entscheidet die Wiederholung, welche Karten ich sehe?';

  @override
  String get faqFlashcardsA =>
      'Karten, die du gut kannst, kommen nach längeren Abständen wieder, und vergessene Karten bald (verteilte Wiederholung). Bewerte jede Antwort mit Nochmal, Schwer, Gut oder Leicht. Setze ein Tagesziel und halte deine Serie auf der Heute-Karte. Lege in einem Stapel ein Prüfungsdatum fest, um die verbleibenden Tage und die täglichen neuen Karten zu sehen. Sortiere nach „Meine Reihenfolge“, um Karten zu verschieben, tippe auf den Lautsprecher einer Seite, um sie zu hören, und stelle Tempo und Wiederholungen im Menü Sprachausgabe ein.';

  @override
  String get faqImportQ => 'Kann ich Karten aus Anki oder Excel übernehmen?';

  @override
  String get faqImportA =>
      'Ja. Wähle in einem Stapel Importieren und dann eine Datei: Anki (.apkg), Excel (.xlsx) oder CSV, und ordne die Spalten zu. Mit „Tabellenvorlage“ schreibst du Karten am Computer. Bilder und Töne in Anki-Dateien werden nicht importiert.';

  @override
  String get faqNotesQ => 'Was können Notizen?';

  @override
  String get faqNotesA =>
      'Schreibe frei mit Checklisten und Formatierung, hefte wichtige Notizen an oder markiere sie als Favorit, füge Tags hinzu und verknüpfe Notizen mit Aufgaben. Mit der Mikrofontaste diktierst du. Eine neue Notiz kann mit einer Vorlage beginnen (Vorlesung, Buchzusammenfassung, Tagebuch, Wochenplan), und die Bildtaste fügt Fotos hinzu.';

  @override
  String get faqHabitsQ => 'Wie werden Gewohnheitsserien gezählt?';

  @override
  String get faqHabitsA =>
      'Ein Tag zählt, wenn du an einem geplanten Tag das Ziel der Gewohnheit erreichst. Pausierst du eine Gewohnheit, bleibt die Serie erhalten. Jede Gewohnheit kann eine eigene Erinnerungszeit haben.';

  @override
  String get faqGoalsQ => 'Wie verfolgen Ziele den Fortschritt?';

  @override
  String get faqGoalsA =>
      'Gib einem Ziel einen Zielwert und eine Einheit und trage dann Fortschritt ein. Seine Karte zeigt, wie weit du bist und wie viel bis zur Frist fehlt.';

  @override
  String get faqProjectsQ => 'Wozu sind Projekte da?';

  @override
  String get faqProjectsA =>
      'Bündle Aufgaben in einem Projekt, füge Meilensteine mit Datum hinzu und verfolge den Gesamtfortschritt. Meilensteine erscheinen auch im Kalender.';

  @override
  String get faqInsightsQ => 'Was zeigen die Einblicke?';

  @override
  String get faqInsightsA =>
      'Deine Fokuszeit, erledigte Aufgaben und dein Lernen über Tage und Wochen, mit sanften Vorschlägen. Alles wird auf deinem Telefon berechnet.';

  @override
  String get faqSpacesQ => 'Wo sind alle Bereiche?';

  @override
  String get faqSpacesA =>
      'Unter Bereiche findest du jeden Teil der App (Notizen, Stapel, Gewohnheiten, Ziele, Projekte, Klänge und mehr), damit die Hauptleiste einfach bleibt.';

  @override
  String get faqBackupQ => 'Wie werden meine Daten gesichert?';

  @override
  String get faqBackupA =>
      'Jeden Tag legt die App still eine verschlüsselte Kopie auf diesem Telefon ab und behält die letzten 7. In den Einstellungen kannst du außerdem eine passwortgeschützte Sicherungsdatei exportieren und auf einem anderen Telefon wiederherstellen.';

  @override
  String get faqPrayerQ => 'Wie funktionieren die Gebetszeiten?';

  @override
  String get faqPrayerA =>
      'Wähle deine Stadt unter Einstellungen → Gebetszeiten. Die Zeiten werden auf dem Telefon mit der dort üblichen Methode berechnet, und du kannst Methode und Asr-Rechtsschule ändern. Du kannst zu jedem Gebet benachrichtigt werden, und eine laufende Fokussitzung pausiert.';

  @override
  String get faqPrivacyQ => 'Wo werden meine Daten gespeichert?';

  @override
  String get faqPrivacyA =>
      'Nur auf deinem Telefon, in einer verschlüsselten Datenbank. Es gibt kein Konto und kein Tracking. Das Internet nutzen nur Funktionen, die du selbst einschaltest, etwa der optionale Assistent.';

  @override
  String get faqAssistantQ => 'Was ist der Assistent?';

  @override
  String get faqAssistantA =>
      'Ein optionaler Helfer, den du in den Einstellungen mit deinem eigenen KI-Dienst verbindest. Er ist standardmäßig aus und fragt, bevor er Notiztext sendet.';

  @override
  String get tourPlanTitle => 'Plane deinen Tag';

  @override
  String get tourPlanBody =>
      'Aufgaben, Kalender und Gewohnheiten an einem ruhigen Ort. Beginne jeden Morgen mit „Meinen Tag starten“.';

  @override
  String get tourFocusTitle => 'Konzentriere dich tief';

  @override
  String get tourFocusBody =>
      'Zeitlich begrenzte Sitzungen mit echten Naturklängen, „Nicht stören“ und sanften Abschlusstönen.';

  @override
  String get tourLearnTitle => 'Lerne nachhaltig';

  @override
  String get tourLearnBody =>
      'Karteikarten mit verteilter Wiederholung, Sprachausgabe in vielen Sprachen und Import aus Anki oder Excel.';

  @override
  String get helpTitle => 'Hilfe und Fragen';

  @override
  String get helpOpen => 'Öffnen';

  @override
  String get helpTour => 'Rundgang ansehen';

  @override
  String get tourNext => 'Weiter';

  @override
  String get tourDone => 'Los geht\'s';

  @override
  String get transferColTitle => 'Titel';

  @override
  String get transferColNotes => 'Notizen';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Fälligkeitsdatum';

  @override
  String get transferColPriority => 'Priorität (0-3)';

  @override
  String get transferColDone => 'Erledigt';

  @override
  String get transferColProject => 'Projekt';

  @override
  String get transferColCategory => 'Kategorie';

  @override
  String get transferTitle => 'Import und Export';

  @override
  String get transferSaveAs => 'Speichern als';

  @override
  String get transferImport => 'Aus einer Datei importieren';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV oder eine Tabelle in Word. Spalten: Titel, Fälligkeitsdatum (2026-12-31), Priorität 0-3, erledigt, Projekt, Notizen. Aufgaben, die schon in der App sind, werden übersprungen.';

  @override
  String get transferImportNotesHint =>
      'Word-, Markdown- oder Textdateien werden zu einer Notiz. Excel oder CSV: eine Notiz pro Zeile (Titel, Text).';

  @override
  String get transferSaved => 'Datei gespeichert';

  @override
  String get transferFailed => 'Die Datei konnte nicht erstellt werden. Es wurde nichts geändert.';

  @override
  String get transferUnsupported =>
      'Diese Datei kann hier nicht gelesen werden. Nutze Excel, CSV, Word, Markdown oder Text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added hinzugefügt',
      one: '1 hinzugefügt',
      zero: 'Nichts Neues hinzuzufügen',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Alle Notizen';

  @override
  String get transferThisNote => 'Diese Notiz';

  @override
  String get transferDeckFormats => 'Als Excel, Word oder PDF speichern';

  @override
  String get faqFilesQ => 'Kann ich Excel-, Word- oder PDF-Dateien nutzen?';

  @override
  String get faqFilesA =>
      'Ja. Aufgaben und Notizen haben oben eine Import- und Exporttaste (zwei Pfeile), und jeder Stapel hat sie in seinem Menü. Speichere als Excel, CSV, Word oder PDF oder importiere Excel-, CSV-, Word-, Markdown- oder Textdateien. Spaltennamen dürfen in jeder Sprache der App sein, und gespeicherte Dateien lassen sich immer wieder importieren.';

  @override
  String get tplLecture => 'Vorlesung';

  @override
  String get tplBook => 'Buchzusammenfassung';

  @override
  String get tplJournal => 'Tagebuch';

  @override
  String get tplWeek => 'Wochenplan';

  @override
  String get tplLectureBody => '## Kernpunkte\n- \n\n## Fragen\n- [ ] \n\n## Zusammenfassung\n';

  @override
  String get tplBookBody =>
      '## Hauptgedanke\n\n## Was ich gelernt habe\n- \n\n## Zitate\n> \n\n## Umsetzen\n- [ ] \n';

  @override
  String get tplJournalBody => '## Dankbar für\n- \n\n## Heutiger Fokus\n- [ ] \n\n## Notizen\n';

  @override
  String get tplWeekBody =>
      '## Ziele dieser Woche\n- [ ] \n\n### Samstag\n- [ ] \n\n### Sonntag\n- [ ] \n\n### Montag\n- [ ] \n\n### Dienstag\n- [ ] \n\n### Mittwoch\n- [ ] \n\n### Donnerstag\n- [ ] \n\n### Freitag\n- [ ] \n';

  @override
  String get tplHint => 'Mit einer Vorlage beginnen';

  @override
  String get noteImage => 'Bild';

  @override
  String get noteAddImage => 'Bild hinzufügen';

  @override
  String get noteImageUnreadable => 'Diese Datei ist kein Bild, das die App lesen kann.';

  @override
  String get noteImageTooLarge => 'Dieses Bild ist zu groß.';

  @override
  String get examSet => 'Prüfungsdatum festlegen';

  @override
  String get examDate => 'Prüfungsdatum';

  @override
  String get examToday => 'Heute ist Prüfung. Viel Erfolg!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Prüfung in $count Tagen',
      one: 'Prüfung morgen',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'lerne $count neue Karten pro Tag',
      one: 'lerne 1 neue Karte pro Tag',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'alle Karten gelernt, weiter wiederholen';

  @override
  String examRaiseLimit(int count) {
    return '$count neue Karten pro Tag zeigen';
  }

  @override
  String get backupDriveHint =>
      'Um online eine Kopie zu behalten, wähle auf dem folgenden Speicherbildschirm Google Drive (oder eine andere Cloud-App).';

  @override
  String get flashShareDeck => 'Stapel mit einem Freund teilen';

  @override
  String get flashSortManual => 'Meine Reihenfolge (ziehen)';

  @override
  String get flashReorderHint => 'Halte den Griff und ziehe eine Karte, um sie zu verschieben.';

  @override
  String get flashReorderNeedsAll => 'Lösche Suche und Filter, um Karten zu ziehen.';

  @override
  String get flashDragHandle => 'Zum Verschieben ziehen';

  @override
  String get reportTitle => 'Monatsbericht';

  @override
  String get reportFocus => 'Fokuszeit';

  @override
  String reportSessions(int count) {
    return '$count Sitzungen';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Bester Tag: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count aktive Tage';
  }

  @override
  String get reportCards => 'Wiederholte Karten';

  @override
  String reportCardsKnown(String percent) {
    return '$percent gemerkt';
  }

  @override
  String get reportTasks => 'Erledigte Aufgaben';

  @override
  String get reportHabits => 'Abgehakte Gewohnheiten';

  @override
  String get reportEmpty => 'In diesem Monat ist noch nichts erfasst.';

  @override
  String get reportSave => 'Als PDF oder Word speichern';

  @override
  String get reportPrevMonth => 'Vorheriger Monat';

  @override
  String get reportNextMonth => 'Nächster Monat';

  @override
  String get careTitle => 'Pflege von Telefon und Daten';

  @override
  String get storageTitle => 'Speicher';

  @override
  String get storageSubtitle => 'Was Platz belegt und Aufräumen ungenutzter Bilder';

  @override
  String get storagePictures => 'Bilder in Notizen';

  @override
  String get storageCardMedia => 'Bilder und Audio in Karten';

  @override
  String get storageText => 'Notiztext';

  @override
  String get storageFree => 'Frei auf deinem Telefon';

  @override
  String get storageLow =>
      'Dein Telefon ist fast voll. Schaffe etwas Platz, damit Sicherungen und Erinnerungen weiter funktionieren.';

  @override
  String storageUnused(int count, String size) {
    return '$count ungenutzte Bilder ($size)';
  }

  @override
  String get storageNoUnused => 'Keine ungenutzten Bilder. Alles ist aufgeräumt.';

  @override
  String get storageClean => 'Ungenutzte Bilder entfernen';

  @override
  String storageCleaned(int count) {
    return '$count Bilder entfernt';
  }

  @override
  String get storageHint =>
      'Bilder gelten nur als ungenutzt, wenn keine Notiz sie zeigt, auch keine im Papierkorb.';

  @override
  String get batteryTitle => 'Erinnerungen zuverlässig halten';

  @override
  String get batterySubtitle => 'Manche Telefone stoppen Apps im Hintergrund. Prüfe deins.';

  @override
  String get batteryStatusOk =>
      'Das Energiesparen schränkt diese App nicht ein. Erinnerungen und Klänge sollten pünktlich kommen.';

  @override
  String get batteryStatusLimited =>
      'Das Energiesparen stoppt diese App eventuell im Hintergrund, sodass Erinnerungen und Klänge zu spät kommen oder fehlen.';

  @override
  String get batteryOpen => 'Akkueinstellungen öffnen';

  @override
  String get batteryOpenApp => 'App-Einstellungen öffnen';

  @override
  String get batteryGeneric =>
      'Wähle in den Akkueinstellungen diese App und stelle sie auf Uneingeschränkt (oder Nicht optimieren).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: Öffne außerdem Sicherheit › Berechtigungen › Autostart und schalte diese App ein; stelle den Energiesparmodus auf Keine Einschränkungen.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: Öffne Akku › diese App und erlaube Hintergrundaktivität und Autostart; sperre die App in der Liste der letzten Apps.';

  @override
  String get batterySamsung =>
      'Samsung: Akku › Hintergrundnutzungslimits: Entferne diese App aus Inaktive Apps und Tief inaktive Apps.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: App-Start › diese App › manuell verwalten, und erlaube Autostart, Sekundärstart und Ausführung im Hintergrund.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Akku › Energieverbrauch im Hintergrund › diese App erlauben, und Autostart in den Berechtigungen aktivieren.';

  @override
  String get whatsNewTitle => 'Neuigkeiten';

  @override
  String get whatsNewSubtitle => 'Die letzten Änderungen in wenigen Zeilen';

  @override
  String get whatsNewDone => 'Verstanden';

  @override
  String get whatsNewOrderTitle => 'Karten in eigene Reihenfolge ziehen';

  @override
  String get whatsNewOrderBody =>
      'Wähle in einem Stapel Sortieren › Meine Reihenfolge, halte dann den Griff und ziehe.';

  @override
  String get whatsNewSpeechTitle => 'Ein Lautsprecher auf jeder Kartenseite';

  @override
  String get whatsNewSpeechBody =>
      'Tippe darauf, um das Wort oder die Übersetzung zu hören. Tempo, Wiederholungen und Stimme stehen im Lernmenü. Die Sprache wird aus dem Text erkannt.';

  @override
  String get whatsNewReportTitle => 'Monatsbericht';

  @override
  String get whatsNewReportBody =>
      'Tippe in den Einblicken auf das Berichtssymbol, um den Monat zu sehen und als PDF oder Word zu speichern.';

  @override
  String get whatsNewCareTitle => 'Pflege von Telefon und Daten';

  @override
  String get whatsNewCareBody =>
      'Die Einstellungen haben jetzt eine Speicherseite mit Bildbereinigung und einen Akku-Ratgeber für deine Telefonmarke.';

  @override
  String get whatsNewSoundTitle => 'Ruhigere Klänge';

  @override
  String get whatsNewSoundBody =>
      'Naturklänge sind sanfter und leiser, und die Bildkarten sind schöner.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Geprüft am $date: Die letzte Sicherung lässt sich korrekt öffnen.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Geprüft am $date: Eine beschädigte Sicherung wurde gefunden und durch eine neue ersetzt.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Geprüft am $date: Die letzte Sicherung ließ sich nicht öffnen. Speichere selbst eine Sicherungsdatei in den Einstellungen.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Du lernst meist gegen $time';
  }

  @override
  String get smartReviewTimeUse => 'Übernehmen';

  @override
  String get widgetNewNote => 'Neue Notiz';

  @override
  String get noteConnections => 'Tags, Links und Aufgaben';

  @override
  String get navCards => 'Karten';

  @override
  String get studyAnswerWay => 'So antwortest du';

  @override
  String get studyMorePractice => 'Zusätzliche Übung';

  @override
  String get studySessionSettings => 'Sitzungseinstellungen';

  @override
  String get focusAdjustTitle => 'Deine Sitzung';

  @override
  String get focusPresetsTitle => 'Vorgefertigt';

  @override
  String get focusPresetStudy => 'Lernen';

  @override
  String get focusPresetDeep => 'Konzentriertes Arbeiten';

  @override
  String get focusPresetQuick => 'Kurzer Sprint';

  @override
  String get focusPresetReading => 'Lesen';

  @override
  String get focusPresetWorkout => 'Trainingsrunden';

  @override
  String get focusAdjustMinutes => 'Fokuslänge';

  @override
  String get focusAdjustBreak => 'Pausenlänge';

  @override
  String get focusAdjustRounds => 'Runden';

  @override
  String get focusRoundsOpen => 'Unbegrenzt';

  @override
  String focusMinutesShort(String n) {
    return '$n Min.';
  }

  @override
  String get focusTapToAdjust => 'Tippe, um die Zeit zu ändern';

  @override
  String get flashArrangeDecks => 'Stapel ordnen';

  @override
  String get flashDeckActions => 'Stapeloptionen';

  @override
  String get starterBrowse => 'Fertige Stapel';

  @override
  String get starterBrowseHint => 'Mit einem Tippen hinzufügen und loslernen';

  @override
  String get dashOpenDecks => 'Deine Karten öffnen';

  @override
  String speechVoiceNumber(String n) {
    return 'Stimme $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Guter Flow. $m Min. Pause?';
  }

  @override
  String get focusFlowBreakStart => 'Pause starten';

  @override
  String tasksFinishAt(String time) {
    return 'Fang jetzt an, dann bist du um $time mit allem fertig';
  }

  @override
  String get focusCalmPacing => 'Ruhiges Tempo';

  @override
  String get focusCalmPacingHint => 'Nur ganze Minuten und der Ring, keine tickenden Sekunden';

  @override
  String get focusFlipHint => 'Leg das Telefon mit dem Display nach unten, um zu starten';

  @override
  String get focusImmersive => 'Immersiver Modus';

  @override
  String get focusImmersiveBlack => 'Reines Schwarz (spart Akku)';

  @override
  String get focusFlipToFocus => 'Umdrehen zum Fokussieren';

  @override
  String get focusFlipToFocusHint =>
      'Im immersiven Modus: Display nach unten startet, Hochnehmen pausiert';

  @override
  String get guardTitle => 'Ablenkungsschutz';

  @override
  String get guardSubtitle => 'Ablenkende Apps pausieren, während du dich konzentrierst';

  @override
  String get guardSwitch => 'Ablenkende Apps pausieren';

  @override
  String get guardSwitchHint => 'Während Fokussitzungen und deiner Zeitschutz-Stunden';

  @override
  String get guardNeedsAccess =>
      'Braucht den Bedienungshilfen-Schalter: Tippe, um ihn einzuschalten';

  @override
  String get guardDisclosureTitle => 'So funktioniert der Schutz';

  @override
  String get guardDisclosureBody =>
      'Um die Apps zu pausieren, die du wählst, nutzt Deep Focus den Bedienungshilfendienst von Android, um zu sehen, welche App geöffnet ist. Mit „Shorts und Reels schließen“ prüft er außerdem, ob ein Kurzvideo-Player auf dem Bildschirm ist.\n\nEr liest keinen Text, speichert nichts von dem, was er sieht, und sendet nichts: Alles bleibt auf deinem Telefon. Du kannst ihn jederzeit in den Einstellungen für Bedienungshilfen ausschalten.';

  @override
  String get guardAgree => 'Zustimmen und Einstellungen öffnen';

  @override
  String get guardModeGentle => 'Sanft';

  @override
  String get guardModeStrict => 'Streng';

  @override
  String get guardGentleHint => 'Eine 5-sekündige Atempause, dann entscheidest du';

  @override
  String get guardStrictHint => 'Gewählte Apps bleiben geschlossen, bis die Fokuszeit endet';

  @override
  String get guardApps => 'Zu pausierende Apps';

  @override
  String get guardAppsAllowed => 'Erlaubte Apps';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Apps',
      one: '1 App',
      zero: 'Noch keine gewählt',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Nur gewählte Apps erlauben';

  @override
  String get guardAllowlistHint =>
      'Alle anderen Apps werden pausiert; Anrufe, Einstellungen und Tastatur funktionieren immer';

  @override
  String get guardShorts => 'Shorts und Reels schließen';

  @override
  String get guardShortsHint =>
      'Immer, wenn der Schutz an ist. Ohne Gewähr: Diese Apps ändern sich oft';

  @override
  String get guardSchedule => 'Zeitschutz';

  @override
  String get guardScheduleHint =>
      'Auch an festen Tagen und Stunden schützen, etwa für Schule oder Arbeit';

  @override
  String get guardFrom => 'Von';

  @override
  String get guardTo => 'Bis';

  @override
  String get guardSearchApps => 'Apps suchen';

  @override
  String get guardNoApps => 'Keine Apps gefunden';

  @override
  String get guardPrivacy =>
      'Läuft nur auf deinem Telefon: Der Schutz sieht, welche App geöffnet ist, nie ihren Inhalt, und sendet nichts.';

  @override
  String get guardBreathe => 'Einatmen… und ausatmen';

  @override
  String get guardQuestion => 'Brauchst du diese App gerade?';

  @override
  String get guardBackToFocus => 'Zurück zum Fokus';

  @override
  String get guardOpenFive => '5 Minuten öffnen';

  @override
  String get guardStrictBody => 'Diese App ist pausiert, bis deine Fokuszeit endet.';

  @override
  String get guardShortsClosed => 'Kurzvideos sind geschlossen, solange der Schutz an ist';

  @override
  String get faqGuardQ => 'Wie stoppe ich ablenkende Apps, während ich mich konzentriere?';

  @override
  String get faqGuardA =>
      'Öffne Fokus → die Timer-Einstellungen → Ablenkungsschutz. Wähle die Apps, dann Sanft (5 Sekunden Atmen und die Frage „Brauchst du diese App gerade?“) oder Streng (sie bleiben geschlossen). Er wirkt während Fokussitzungen und mit Zeitschutz an den Tagen und Stunden, die du festlegst. „Nur gewählte Apps erlauben“ pausiert alles andere; Anrufe, Einstellungen und Tastatur funktionieren immer. Android fragt einmal, ob du den Schutz in den Bedienungshilfen einschaltest. Er sieht nur, welche App geöffnet ist, und sendet nichts.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Verschoben nach $name';
  }

  @override
  String get notesDragHint => 'Halte eine Notiz gedrückt und ziehe sie auf ein Notizbuch';

  @override
  String get guardReviewCards => 'Stattdessen Karten lernen';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Karten warten auf dich',
      one: '1 Karte wartet auf dich',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Notfall: 10 Sekunden halten';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Weiter halten… $n';
  }

  @override
  String get guardWeekTitle => 'Diese Woche';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Pausen',
      one: '1 Pause',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-mal zurück zum Fokus',
      one: 'einmal zurück zum Fokus',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Wörter umbenennen';

  @override
  String get wordsSubtitle => 'Eigene Wörter für jeden Text der App verwenden';

  @override
  String get wordsHint =>
      'Tippe auf einen Text, um ihn zu ändern. Deine Wörter gelten nur für diese Sprache und sind in Sicherungen enthalten.';

  @override
  String get wordsSearch => 'Texte suchen';

  @override
  String get wordsChangedOnly => 'Nur geänderte';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Original verwenden';

  @override
  String get wordsResetAll => 'Alle Wörter zurücksetzen';

  @override
  String get wordsResetAllConfirm => 'Jeder Text in dieser Sprache kehrt zum Original zurück.';

  @override
  String get wordsNone => 'Kein Text gefunden';

  @override
  String get settingsLanguageSearch => 'Sprache suchen';

  @override
  String get settingsLanguageNoMatch => 'Keine passende Sprache';

  @override
  String get soundsMyMusic => 'Deine Musik';

  @override
  String get soundsMusicHint =>
      'Spiele eine Audiodatei von deinem Handy ab. Nichts wird kopiert oder hochgeladen.';

  @override
  String get soundsChooseMusic => 'Audio wählen';

  @override
  String get soundsRemoveMusic => 'Musik entfernen';
}
