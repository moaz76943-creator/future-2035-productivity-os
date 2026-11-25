// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Home';

  @override
  String get navTasks => 'Attività';

  @override
  String get navFocus => 'Focus';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get navSpaces => 'Spazi';

  @override
  String get moduleProjects => 'Progetti';

  @override
  String get moduleNotes => 'Note';

  @override
  String get moduleFlashcards => 'Flashcard';

  @override
  String get moduleGoals => 'Obiettivi';

  @override
  String get moduleHabits => 'Abitudini';

  @override
  String get moduleAnalytics => 'Statistiche';

  @override
  String get moduleSearch => 'Cerca';

  @override
  String get moduleAssistant => 'Assistente';

  @override
  String get moduleSettings => 'Impostazioni';

  @override
  String get moduleTrash => 'Cestino';

  @override
  String get actionSave => 'Salva';

  @override
  String get actionCancel => 'Annulla';

  @override
  String get actionDelete => 'Elimina';

  @override
  String get actionEdit => 'Modifica';

  @override
  String get actionDone => 'Fatto';

  @override
  String get actionAdd => 'Aggiungi';

  @override
  String get actionCreate => 'Crea';

  @override
  String get actionClose => 'Chiudi';

  @override
  String get actionBack => 'Indietro';

  @override
  String get actionUndo => 'Annulla';

  @override
  String get actionRestore => 'Ripristina';

  @override
  String get actionRetry => 'Riprova';

  @override
  String get actionContinue => 'Continua';

  @override
  String get actionSkip => 'Salta';

  @override
  String get actionArchive => 'Archivia';

  @override
  String get actionUnarchive => 'Togli dall\'archivio';

  @override
  String get actionPin => 'Fissa';

  @override
  String get actionUnpin => 'Sblocca';

  @override
  String get actionMore => 'Altre opzioni';

  @override
  String get actionClear => 'Cancella';

  @override
  String get actionSearch => 'Cerca';

  @override
  String get actionSort => 'Ordina';

  @override
  String get actionShare => 'Condividi';

  @override
  String get actionImport => 'Importa';

  @override
  String get actionExport => 'Esporta';

  @override
  String get actionPause => 'Pausa';

  @override
  String get actionResume => 'Riprendi';

  @override
  String get actionStart => 'Avvia';

  @override
  String get actionStop => 'Ferma';

  @override
  String get actionComplete => 'Completa';

  @override
  String get actionDeleteForever => 'Elimina per sempre';

  @override
  String get actionEmptyTrash => 'Svuota cestino';

  @override
  String get actionUnlink => 'Scollega';

  @override
  String get actionCustomize => 'Personalizza';

  @override
  String get actionPreview => 'Anteprima';

  @override
  String get actionLog => 'Registra progressi';

  @override
  String get stateLoading => 'Caricamento…';

  @override
  String get stateSaving => 'Salvataggio…';

  @override
  String get stateSaved => 'Salvato';

  @override
  String get stateUnsaved => 'Modifiche non salvate';

  @override
  String get errorGenericTitle => 'Qualcosa è andato storto';

  @override
  String get errorGenericMessage => 'I tuoi dati sono al sicuro. Riprova.';

  @override
  String get errorLoadFailed => 'Impossibile caricare questo contenuto.';

  @override
  String get errorSaveFailed => 'Impossibile salvare. Le modifiche sono ancora qui.';

  @override
  String get validationRequired => 'Campo obbligatorio';

  @override
  String get validationTitleRequired => 'Inserisci un titolo';

  @override
  String get validationNameRequired => 'Inserisci un nome';

  @override
  String get validationTooLong => 'Troppo lungo';

  @override
  String get validationEndBeforeStart => 'La fine deve essere dopo l\'inizio';

  @override
  String get validationStartAfterDue => 'La data di inizio deve precedere la scadenza';

  @override
  String get validationPositiveNumber => 'Inserisci un numero maggiore di zero';

  @override
  String get validationDependencyCycle => 'Questo creerebbe una dipendenza circolare';

  @override
  String get validationInvalidRepeat => 'Questa regola di ripetizione non è valida';

  @override
  String get deletedItem => 'Spostato nel cestino';

  @override
  String get untitled => 'Senza titolo';

  @override
  String get noProject => 'Nessun progetto';

  @override
  String get greetingMorning => 'Buongiorno';

  @override
  String get greetingAfternoon => 'Buon pomeriggio';

  @override
  String get greetingEvening => 'Buonasera';

  @override
  String get dashFocusToday => 'Focus di oggi';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done su $target';
  }

  @override
  String get dashStartFocus => 'Inizia focus';

  @override
  String get dashFocusRunning => 'Sessione in corso';

  @override
  String get dashTodayTasks => 'In scadenza oggi';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Abitudini di oggi';

  @override
  String get dashGoals => 'Obiettivi';

  @override
  String get dashReview => 'Ripasso';

  @override
  String get dashRecentNotes => 'Note recenti';

  @override
  String get dashInsight => 'Suggerimento';

  @override
  String get dashSeeAll => 'Vedi tutto';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte da ripassare',
      one: '1 carta da ripassare',
      zero: 'Nessuna carta da ripassare',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Ripassa ora';

  @override
  String get dashCustomizeTitle => 'Sezioni della home';

  @override
  String get dashCustomizeHint => 'Scegli cosa appare nella tua schermata iniziale.';

  @override
  String get dashSectionFocus => 'Focus';

  @override
  String get dashSectionToday => 'Attività in scadenza oggi';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Abitudini';

  @override
  String get dashSectionGoals => 'Obiettivi';

  @override
  String get dashSectionReview => 'Ripasso flashcard';

  @override
  String get dashSectionNotes => 'Note recenti';

  @override
  String get dashSectionInsight => 'Suggerimenti';

  @override
  String get quickAddTask => 'Nuova attività';

  @override
  String get quickAddNote => 'Nuova nota';

  @override
  String get quickAddEvent => 'Nuovo evento';

  @override
  String get quickStartFocus => 'Focus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hai $count attività in ritardo. Inizia dalla più importante.',
      one: 'Hai 1 attività in ritardo. Riprogrammala o completala prima.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Ti mancano $minutes minuti per il tuo obiettivo di focus giornaliero.';
  }

  @override
  String get insightCardsDue => 'Ripassa ora le flashcard in scadenza, finché sono fresche.';

  @override
  String get insightAllClear => 'Tutto procede bene. Pianifica domani o fai una pausa consapevole.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantieni la serie: $habit è ancora da fare oggi.';
  }

  @override
  String get focusTitle => 'Focus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Cronometro';

  @override
  String get focusModeOpen => 'Libero';

  @override
  String get focusPhaseWork => 'Focus';

  @override
  String get focusPhaseShortBreak => 'Pausa breve';

  @override
  String get focusPhaseLongBreak => 'Pausa lunga';

  @override
  String get focusReady => 'Pronto quando vuoi';

  @override
  String get focusPaused => 'In pausa';

  @override
  String get focusRunning => 'Concentrazione in corso';

  @override
  String get focusDuration => 'Durata';

  @override
  String get focusLinkTask => 'Collega un\'attività';

  @override
  String get focusLinkedTask => 'Stai lavorando a';

  @override
  String get focusNoTask => 'Nessuna attività collegata';

  @override
  String focusCycle(int current, int total) {
    return 'Ciclo $current di $total';
  }

  @override
  String get focusSkipBreak => 'Salta pausa';

  @override
  String get focusStartBreak => 'Inizia pausa';

  @override
  String get focusStartNext => 'Inizia il prossimo focus';

  @override
  String get focusSessionComplete => 'Sessione completata';

  @override
  String get focusSessionStopped => 'Sessione salvata';

  @override
  String focusSessionSummary(String duration) {
    return 'Sei stato concentrato per $duration.';
  }

  @override
  String get focusAddNote => 'Aggiungi una nota su questa sessione';

  @override
  String get focusHistory => 'Cronologia';

  @override
  String get focusNoHistory => 'Le sessioni completate appariranno qui';

  @override
  String get focusTargets => 'Obiettivi';

  @override
  String get focusDailyTarget => 'Obiettivo giornaliero';

  @override
  String get focusWeeklyTarget => 'Obiettivo settimanale';

  @override
  String get focusOutcomeCompleted => 'Completata';

  @override
  String get focusOutcomeInterrupted => 'Interrotta prima';

  @override
  String get focusRecovered => 'La sessione è continuata mentre l\'app era chiusa.';

  @override
  String get focusCompletedWhileAway =>
      'Una sessione è terminata mentre l\'app era chiusa ed è stata salvata.';

  @override
  String get focusNotificationsOff =>
      'Le notifiche sono disattivate. Non riceverai avvisi alla fine di una sessione.';

  @override
  String get focusBatteryHint =>
      'Alcuni dispositivi mettono in pausa le app in background. Il timer resta preciso, ma gli avvisi possono arrivare in ritardo. Consenti l\'uso illimitato della batteria per avvisi affidabili.';

  @override
  String get focusOpenSettings => 'Apri impostazioni';

  @override
  String get focusStopConfirmTitle => 'Interrompere questa sessione?';

  @override
  String get focusStopConfirmMessage => 'Il tempo di focus finora verrà salvato.';

  @override
  String get focusDiscard => 'Scarta';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuti',
      one: '1 minuto',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time rimanenti';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time trascorsi';
  }

  @override
  String get focusDeleteSession => 'Elimina sessione';

  @override
  String get tasksTitle => 'Attività';

  @override
  String get tasksViewToday => 'Oggi';

  @override
  String get tasksViewUpcoming => 'In arrivo';

  @override
  String get tasksViewAll => 'Tutte';

  @override
  String get tasksViewOverdue => 'In ritardo';

  @override
  String get tasksViewCompleted => 'Completate';

  @override
  String get tasksQuickAddHint => 'Aggiungi un\'attività…';

  @override
  String get tasksEmptyTitle => 'Tutto fatto';

  @override
  String get tasksEmptyMessage => 'Aggiungi un\'attività per organizzare la tua giornata.';

  @override
  String get tasksEmptyCompleted => 'Le attività completate appariranno qui.';

  @override
  String get taskNew => 'Nuova attività';

  @override
  String get taskEdit => 'Modifica attività';

  @override
  String get taskTitleLabel => 'Titolo';

  @override
  String get taskTitleHint => 'Cosa c\'è da fare?';

  @override
  String get taskDescriptionLabel => 'Descrizione';

  @override
  String get taskNotesLabel => 'Note';

  @override
  String get taskPriority => 'Priorità';

  @override
  String get priorityNone => 'Nessuna';

  @override
  String get priorityLow => 'Bassa';

  @override
  String get priorityMedium => 'Media';

  @override
  String get priorityHigh => 'Alta';

  @override
  String get priorityUrgent => 'Urgente';

  @override
  String get taskDueDate => 'Scadenza';

  @override
  String get taskStartDate => 'Data di inizio';

  @override
  String get taskReminder => 'Promemoria';

  @override
  String get taskRepeat => 'Ripeti';

  @override
  String get taskProject => 'Progetto';

  @override
  String get taskCategory => 'Categoria';

  @override
  String get taskCategoryHint => 'es. Lavoro, Casa, Studio';

  @override
  String get taskEstimateMinutes => 'Stima (minuti)';

  @override
  String get taskTracked => 'Focus registrato';

  @override
  String get taskLabels => 'Etichette';

  @override
  String get taskAddLabel => 'Nuova etichetta';

  @override
  String get taskChecklist => 'Checklist';

  @override
  String get taskAddChecklistItem => 'Aggiungi una voce';

  @override
  String get taskSubtasks => 'Sottoattività';

  @override
  String get taskAddSubtask => 'Aggiungi una sottoattività';

  @override
  String get taskDependencies => 'Bloccata da';

  @override
  String get taskAddDependency => 'Aggiungi un\'attività bloccante';

  @override
  String get taskLinkedNotes => 'Note collegate';

  @override
  String get taskSetTime => 'Imposta orario';

  @override
  String get taskNoDate => 'Nessuna data';

  @override
  String get taskCompleted => 'Attività completata';

  @override
  String get taskNextOccurrence => 'Prossima ricorrenza creata';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days giorni di ritardo',
      one: '1 giorno di ritardo',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Segna \"$title\" come fatta';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Segna \"$title\" come da fare';
  }

  @override
  String get sortSmart => 'Intelligente';

  @override
  String get sortDueDate => 'Scadenza';

  @override
  String get sortPriority => 'Priorità';

  @override
  String get sortCreated => 'Più recenti';

  @override
  String get sortTitle => 'Titolo';

  @override
  String get filterAllProjects => 'Tutti i progetti';

  @override
  String get filterAnyPriority => 'Qualsiasi priorità';

  @override
  String get filterTitle => 'Filtra e ordina';

  @override
  String get dateToday => 'Oggi';

  @override
  String get dateTomorrow => 'Domani';

  @override
  String get dateYesterday => 'Ieri';

  @override
  String get repeatNever => 'Non si ripete';

  @override
  String get repeatDaily => 'Ogni giorno';

  @override
  String get repeatWeekdays => 'Ogni giorno feriale';

  @override
  String get repeatWeekly => 'Ogni settimana';

  @override
  String get repeatMonthly => 'Ogni mese';

  @override
  String get repeatYearly => 'Ogni anno';

  @override
  String get repeatCustom => 'Personalizzata';

  @override
  String get repeatEvery => 'Ripeti ogni';

  @override
  String get repeatOnDays => 'Nei giorni';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'giorni',
      one: 'giorno',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'settimane',
      one: 'settimana',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'mesi', one: 'mese');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'anni', one: 'anno');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count volte',
      one: '1 volta',
    );
    return 'Termina dopo $_temp0';
  }

  @override
  String get repeatEndsNever => 'Non termina mai';

  @override
  String get reminderAtTime => 'All\'ora dell\'evento';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuti prima',
      one: '1 minuto prima',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours ore prima',
      one: '1 ora prima',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 giorno prima';

  @override
  String get projectsTitle => 'Progetti';

  @override
  String get projectsEmptyTitle => 'Ancora nessun progetto';

  @override
  String get projectsEmptyMessage => 'Raggruppa attività, note e tempo di focus correlati.';

  @override
  String get projectNew => 'Nuovo progetto';

  @override
  String get projectEdit => 'Modifica progetto';

  @override
  String get projectName => 'Nome';

  @override
  String get projectDescription => 'Descrizione';

  @override
  String get projectGoal => 'Obiettivo';

  @override
  String get projectDeadline => 'Scadenza';

  @override
  String get projectColor => 'Colore';

  @override
  String get projectIcon => 'Icona';

  @override
  String get projectProgress => 'Avanzamento';

  @override
  String projectTasksDone(int done, int total) {
    return '$done di $total attività completate';
  }

  @override
  String get projectFocusTime => 'Tempo di focus';

  @override
  String get projectArchived => 'Progetti archiviati';

  @override
  String get projectShowArchived => 'Mostra archiviati';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Mancano $days giorni',
      one: 'Manca 1 giorno',
      zero: 'Scade oggi',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Scadenza superata';

  @override
  String get calendarTitle => 'Calendario';

  @override
  String get calendarMonth => 'Mese';

  @override
  String get calendarWeek => 'Settimana';

  @override
  String get calendarDay => 'Giorno';

  @override
  String get calendarToday => 'Oggi';

  @override
  String get calendarPrevious => 'Precedente';

  @override
  String get calendarNext => 'Successivo';

  @override
  String get calendarNoEvents => 'Niente in programma';

  @override
  String get calendarAllDay => 'Tutto il giorno';

  @override
  String get eventNew => 'Nuovo evento';

  @override
  String get eventEdit => 'Modifica evento';

  @override
  String get eventTitleHint => 'Titolo dell\'evento';

  @override
  String get eventStarts => 'Inizio';

  @override
  String get eventEnds => 'Fine';

  @override
  String get eventKind => 'Tipo';

  @override
  String get eventKindEvent => 'Evento';

  @override
  String get eventKindTimeBlock => 'Blocco di tempo';

  @override
  String get eventKindFocus => 'Sessione di focus';

  @override
  String get eventKindGoal => 'Obiettivo personale';

  @override
  String get eventDescription => 'Dettagli';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Si sovrappone a $count eventi',
      one: 'Si sovrappone a 1 evento',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflitti di programmazione in questo giorno';

  @override
  String get calendarTaskDue => 'Attività in scadenza';

  @override
  String get calendarDragHint => 'Tieni premuto e trascina un evento per spostarlo';

  @override
  String get calendarRescheduled => 'Evento spostato';

  @override
  String get calendarScheduleTask => 'Pianifica come blocco di tempo';

  @override
  String get notesTitle => 'Note';

  @override
  String get notesViewAll => 'Tutte';

  @override
  String get notesViewPinned => 'Fissate';

  @override
  String get notesViewFavorites => 'Preferite';

  @override
  String get notesViewArchived => 'Archiviate';

  @override
  String get notesTags => 'Tag';

  @override
  String get notesNewNotebook => 'Nuovo quaderno';

  @override
  String get notesNoNotebook => 'Nessun quaderno';

  @override
  String get notesEmptyTitle => 'Una tela bianca';

  @override
  String get notesEmptyMessage => 'Annota idee, riunioni e conoscenze.';

  @override
  String get noteTitleHint => 'Titolo';

  @override
  String get noteBodyHint =>
      'Inizia a scrivere… Usa # per i tag e [[Titolo]] per collegare le note.';

  @override
  String get noteFavorite => 'Preferita';

  @override
  String get noteUnfavorite => 'Rimuovi dai preferiti';

  @override
  String get noteMoveTo => 'Sposta in un quaderno';

  @override
  String get noteBacklinks => 'Collegata da';

  @override
  String get noteLinkedTasks => 'Attività collegate';

  @override
  String get noteLinkTask => 'Collega un\'attività';

  @override
  String get noteLinkProject => 'Progetto';

  @override
  String get noteFormatHeading => 'Intestazione';

  @override
  String get noteFormatBold => 'Grassetto';

  @override
  String get noteFormatItalic => 'Corsivo';

  @override
  String get noteFormatList => 'Elenco puntato';

  @override
  String get noteFormatChecklist => 'Checklist';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Modificata $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count parole',
      one: '1 parola',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Flashcard';

  @override
  String get flashEmptyTitle => 'Crea il tuo primo mazzo';

  @override
  String get flashEmptyMessage =>
      'La ripetizione dilazionata ti mostra ogni carta poco prima che tu la dimentichi.';

  @override
  String get deckNew => 'Nuovo mazzo';

  @override
  String get deckEdit => 'Modifica mazzo';

  @override
  String get deckName => 'Nome del mazzo';

  @override
  String get deckDescription => 'Descrizione';

  @override
  String get deckDailyNew => 'Nuove carte al giorno';

  @override
  String get deckDailyReview => 'Obiettivo di ripasso giornaliero';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte',
      one: '1 carta',
      zero: 'Nessuna carta',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Da ripassare';

  @override
  String get deckNewCards => 'Nuove';

  @override
  String get deckMature => 'Consolidate';

  @override
  String get deckStudy => 'Studia';

  @override
  String get deckNothingDue => 'Niente da ripassare ora. Torna più tardi.';

  @override
  String get deckEmptyCards => 'Aggiungi carte per iniziare a imparare.';

  @override
  String get cardNew => 'Nuova carta';

  @override
  String get cardEdit => 'Modifica carta';

  @override
  String get cardFront => 'Fronte';

  @override
  String get cardBack => 'Retro';

  @override
  String get cardFrontHint => 'Domanda o termine';

  @override
  String get cardBackHint => 'Risposta o definizione';

  @override
  String get cardTags => 'Tag';

  @override
  String get cardAddAnother => 'Salva e aggiungi un\'altra';

  @override
  String get reviewShowAnswer => 'Mostra risposta';

  @override
  String get reviewAgain => 'Di nuovo';

  @override
  String get reviewHard => 'Difficile';

  @override
  String get reviewGood => 'Bene';

  @override
  String get reviewEasy => 'Facile';

  @override
  String reviewProgress(int done, int total) {
    return '$done di $total';
  }

  @override
  String get reviewFinishedTitle => 'Sessione completata';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Hai ripassato $count carte.',
      one: 'Hai ripassato 1 carta.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tocca per vedere la risposta';

  @override
  String get importCardsTitle => 'Importa carte';

  @override
  String get importCardsHint =>
      'Incolla una carta per riga (fronte e retro separati da tab o punto e virgola) oppure scegli un file: Excel (.xlsx), CSV, un mazzo Anki (.apkg) o un mazzo esportato.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte importate',
      one: '1 carta importata',
      zero: 'Nessuna carta importata',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Impossibile importare questo contenuto.';

  @override
  String get exportCopied => 'Mazzo esportato';

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
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Obiettivi';

  @override
  String get goalsEmptyTitle => 'Punta a qualcosa';

  @override
  String get goalsEmptyMessage =>
      'Imposta obiettivi giornalieri, settimanali, mensili o a lungo termine e segui i progressi reali.';

  @override
  String get goalNew => 'Nuovo obiettivo';

  @override
  String get goalEdit => 'Modifica obiettivo';

  @override
  String get goalTitleHint => 'Cosa vuoi raggiungere?';

  @override
  String get goalPeriod => 'Periodo';

  @override
  String get goalPeriodDaily => 'Giornaliero';

  @override
  String get goalPeriodWeekly => 'Settimanale';

  @override
  String get goalPeriodMonthly => 'Mensile';

  @override
  String get goalPeriodLongTerm => 'A lungo termine';

  @override
  String get goalTarget => 'Traguardo';

  @override
  String get goalUnit => 'Unità';

  @override
  String get goalUnitHint => 'es. pagine, km, ore';

  @override
  String get goalStatusActive => 'Attivo';

  @override
  String get goalStatusPaused => 'In pausa';

  @override
  String get goalStatusAchieved => 'Raggiunto';

  @override
  String get goalPause => 'Metti in pausa';

  @override
  String get goalResume => 'Riprendi obiettivo';

  @override
  String get goalMarkAchieved => 'Segna come raggiunto';

  @override
  String goalProgressOf(String current, String target) {
    return '$current di $target';
  }

  @override
  String get goalLogAmount => 'Quantità';

  @override
  String get goalLogNote => 'Nota (facoltativa)';

  @override
  String get goalHistory => 'Cronologia';

  @override
  String get goalNoHistory => 'I progressi registrati appariranno qui';

  @override
  String get goalLinkedTasks => 'Attività collegate';

  @override
  String get goalLinkedTasksHint =>
      'Ogni attività collegata completata conta 1 per questo obiettivo.';

  @override
  String get goalThisPeriod => 'Questo periodo';

  @override
  String get habitsTitle => 'Abitudini';

  @override
  String get habitsEmptyTitle => 'Piccoli passi, ogni giorno';

  @override
  String get habitsEmptyMessage => 'Crea un\'abitudine e spuntala quando la fai.';

  @override
  String get habitNew => 'Nuova abitudine';

  @override
  String get habitEdit => 'Modifica abitudine';

  @override
  String get habitNameHint => 'es. Leggere 20 pagine';

  @override
  String get habitDays => 'Programma';

  @override
  String get habitEveryDay => 'Ogni giorno';

  @override
  String get habitTargetPerDay => 'Volte al giorno';

  @override
  String get habitReminder => 'Promemoria giornaliero';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Serie di $count giorni',
      one: 'Serie di 1 giorno',
      zero: 'Nessuna serie',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Serie migliore';

  @override
  String get habitCurrentStreak => 'Serie attuale';

  @override
  String get habitConsistency => 'Costanza';

  @override
  String get habitLast90 => 'Ultimi 90 giorni';

  @override
  String get habitPaused => 'In pausa';

  @override
  String get habitPause => 'Metti in pausa';

  @override
  String get habitResume => 'Riprendi abitudine';

  @override
  String get habitDoneToday => 'Fatta oggi';

  @override
  String habitCountToday(int count, int target) {
    return '$count su $target oggi';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Spunta \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Non prevista oggi';

  @override
  String get analyticsTitle => 'Statistiche';

  @override
  String get rangeWeek => '7 giorni';

  @override
  String get rangeMonth => '30 giorni';

  @override
  String get rangeQuarter => '90 giorni';

  @override
  String get statFocusTime => 'Tempo di focus';

  @override
  String get statSessions => 'Sessioni';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed completate · $interrupted interrotte prima';
  }

  @override
  String get statTasksDone => 'Attività completate';

  @override
  String get statCompletionRate => 'Completate in tempo';

  @override
  String get statHabitConsistency => 'Costanza delle abitudini';

  @override
  String get statRetention => 'Memorizzazione carte';

  @override
  String get statReviews => 'Ripassi';

  @override
  String get statActiveGoals => 'Obiettivi attivi';

  @override
  String get statEstimated => 'Lavoro stimato completato';

  @override
  String get statEstimatedNote => 'Basato sulle tue stime, non sul tempo misurato';

  @override
  String get statMeasuredNote => 'Misurato dalle sessioni di focus';

  @override
  String get chartFocusByDay => 'Minuti di focus al giorno';

  @override
  String get chartTasksByDay => 'Attività completate al giorno';

  @override
  String get chartTimeByProject => 'Tempo per progetto';

  @override
  String get chartProjectProgress => 'Avanzamento progetti';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: totale $total, giorno migliore $best';
  }

  @override
  String get analyticsNoData => 'Dati ancora insufficienti';

  @override
  String get analyticsUnassigned => 'Non assegnato';

  @override
  String get searchHint => 'Cerca ovunque…';

  @override
  String get searchRecent => 'Ricerche recenti';

  @override
  String get searchClearRecent => 'Cancella ricerche recenti';

  @override
  String searchNoResults(String query) {
    return 'Nessun risultato per \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Cerca tra attività, note, carte, obiettivi, eventi e altro. La ricerca resta su questo dispositivo.';

  @override
  String get searchCatTask => 'Attività';

  @override
  String get searchCatProject => 'Progetti';

  @override
  String get searchCatNote => 'Note';

  @override
  String get searchCatFlashcard => 'Carte';

  @override
  String get searchCatDeck => 'Mazzi';

  @override
  String get searchCatGoal => 'Obiettivi';

  @override
  String get searchCatHabit => 'Abitudini';

  @override
  String get searchCatEvent => 'Eventi';

  @override
  String get searchCatSession => 'Sessioni';

  @override
  String get searchAll => 'Tutto';

  @override
  String get assistantTitle => 'Assistente';

  @override
  String get assistantIntro =>
      'Aiuto alla pianificazione che funziona sul tuo dispositivo. Se vuoi, collega un fornitore di IA a tua scelta per riassunti e generazione.';

  @override
  String get assistantOnDevice => 'Sul dispositivo';

  @override
  String get assistantCloud => 'Fornitore IA';

  @override
  String get assistantPlanDay => 'Pianifica la mia giornata';

  @override
  String get assistantPlanDayDesc =>
      'Ordina le attività aperte per urgenza, priorità e stima e le inserisce tra i tuoi eventi.';

  @override
  String get assistantExtractTasks => 'Estrai attività da una nota';

  @override
  String get assistantExtractTasksDesc =>
      'Trova voci di checklist e righe di azione in una nota e le trasforma in attività.';

  @override
  String get assistantMakeCards => 'Crea flashcard da una nota';

  @override
  String get assistantMakeCardsDesc =>
      'Trasforma righe \"termine: definizione\" e domanda/risposta in carte.';

  @override
  String get assistantSummarize => 'Riassumi una nota';

  @override
  String get assistantSummarizeDesc =>
      'Richiede un fornitore di IA. La nota viene inviata solo dopo la tua conferma.';

  @override
  String get assistantWorkload => 'Panoramica del carico';

  @override
  String get assistantWorkloadDesc =>
      'Confronta il lavoro stimato con il tuo tempo libero di questa settimana.';

  @override
  String get assistantPlanEmpty => 'Nessuna attività aperta da pianificare. Goditi lo spazio.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Tempo libero per il focus oggi: $time';
  }

  @override
  String get assistantPlanOverflow => 'Queste potrebbero non entrare oggi:';

  @override
  String get assistantChooseNote => 'Scegli una nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività trovate',
      one: '1 attività trovata',
      zero: 'Nessuna attività trovata in questa nota',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte trovate',
      one: '1 carta trovata',
      zero: 'Nessuna carta trovata in questa nota',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Scegli un mazzo';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Lavoro stimato: $estimated. Tempo libero: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Hai pianificato più del tempo disponibile. Valuta di spostare le attività meno prioritarie.';

  @override
  String get assistantWorkloadOk => 'Il tuo piano rientra nel tempo disponibile.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività aperte non hanno una stima.',
      one: '1 attività aperta non ha una stima.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Fornitore IA';

  @override
  String get assistantProviderOff =>
      'Nessun fornitore collegato. Gli strumenti sul dispositivo funzionano comunque.';

  @override
  String assistantProviderOn(String host) {
    return 'Collegato a $host';
  }

  @override
  String get assistantEndpoint => 'Endpoint API (HTTPS)';

  @override
  String get assistantModel => 'Modello';

  @override
  String get assistantApiKey => 'Chiave API';

  @override
  String get assistantApiKeyStored => 'Conservata in modo sicuro su questo dispositivo';

  @override
  String get assistantHttpsOnly => 'Sono ammessi solo endpoint HTTPS';

  @override
  String get assistantConsentTitle => 'Inviare questo contenuto al tuo fornitore di IA?';

  @override
  String assistantConsentBody(String host) {
    return 'Il testo della nota selezionata lascerà questo dispositivo e sarà elaborato da $host. Nient\'altro viene inviato.';
  }

  @override
  String get assistantConsentAlways => 'Non chiedere più per questo fornitore';

  @override
  String get assistantSend => 'Invia';

  @override
  String get assistantUnavailable =>
      'Impossibile raggiungere il fornitore di IA. Riprova più tardi.';

  @override
  String get assistantDisabledTitle => 'L\'assistente è disattivato';

  @override
  String get assistantDisabledMessage =>
      'Attivalo per usare gli strumenti di pianificazione. Nessun dato lascia il dispositivo, a meno che tu non colleghi un fornitore e confermi ogni richiesta.';

  @override
  String get assistantSummaryTitle => 'Riassunto';

  @override
  String get assistantRemoveProvider => 'Rimuovi fornitore';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get settingsGeneral => 'Generali';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsLanguageSystem => 'Lingua del dispositivo';

  @override
  String get settingsAppearance => 'Aspetto';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Riduci movimento';

  @override
  String get settingsReduceMotionDesc => 'Riduci al minimo animazioni e sfondi in movimento';

  @override
  String get settingsFocus => 'Timer di focus';

  @override
  String get settingsWorkLength => 'Durata del focus';

  @override
  String get settingsShortBreak => 'Pausa breve';

  @override
  String get settingsLongBreak => 'Pausa lunga';

  @override
  String get settingsLongBreakEvery => 'Pausa lunga dopo';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessioni',
      one: '1 sessione',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Avvia le pause automaticamente';

  @override
  String get settingsSound => 'Suono di fine';

  @override
  String get settingsDailyFocusTarget => 'Obiettivo di focus giornaliero';

  @override
  String get settingsWeeklyFocusTarget => 'Obiettivo di focus settimanale';

  @override
  String get settingsNotifications => 'Notifiche';

  @override
  String get settingsNotificationsEnable => 'Consenti promemoria';

  @override
  String get settingsQuietHours => 'Ore di silenzio';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'I promemoria di abitudini, obiettivi e ripasso sono silenziati dalle $start alle $end';
  }

  @override
  String get settingsReviewReminder => 'Promemoria ripasso flashcard';

  @override
  String get settingsPermissionDenied =>
      'Le notifiche sono bloccate nelle impostazioni di sistema.';

  @override
  String get settingsPrivacy => 'Privacy e dati';

  @override
  String get settingsPrivacyStatement =>
      'I tuoi dati sono salvati solo su questo dispositivo e cifrati. Nessun account, nessuna analisi, nessun tracciamento.';

  @override
  String get settingsBackup => 'Crea backup cifrato';

  @override
  String get settingsBackupDesc => 'Protetto da una password a tua scelta';

  @override
  String get settingsRestore => 'Ripristina da backup';

  @override
  String get settingsRestoreDesc => 'Sostituisce tutti i dati su questo dispositivo';

  @override
  String get settingsErase => 'Cancella tutti i dati';

  @override
  String get settingsEraseDesc => 'Elimina definitivamente tutto da questo dispositivo';

  @override
  String get settingsEraseConfirmTitle => 'Cancellare tutti i dati?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Attività, note, carte, obiettivi, abitudini, eventi e sessioni verranno eliminati definitivamente. Digita $word per confermare.';
  }

  @override
  String get settingsEraseWord => 'CANCELLA';

  @override
  String get settingsErased => 'Tutti i dati cancellati';

  @override
  String get backupPassword => 'Password del backup';

  @override
  String get backupPasswordConfirm => 'Conferma password';

  @override
  String backupPasswordHint(int count) {
    return 'Almeno $count caratteri. Se la perdi, non può essere recuperata.';
  }

  @override
  String get backupPasswordMismatch => 'Le password non coincidono';

  @override
  String get backupPasswordShort => 'La password è troppo corta';

  @override
  String get backupCreating => 'Cifratura del backup…';

  @override
  String get backupCreated => 'Backup pronto da salvare';

  @override
  String get backupRestoring => 'Verifica e ripristino…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementi ripristinati',
      one: '1 elemento ripristinato',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Password errata o file modificato.';

  @override
  String get backupNotABackup => 'Questo file non è un backup di Deep Focus.';

  @override
  String get backupCorrupted => 'Il file di backup è danneggiato.';

  @override
  String get backupNewer =>
      'Questo backup è stato creato da una versione più recente dell\'app. Aggiorna prima l\'app.';

  @override
  String get backupRestoreConfirmTitle => 'Sostituire tutti i dati?';

  @override
  String get backupRestoreConfirmBody =>
      'Tutto ciò che è ora su questo dispositivo sarà sostituito dal backup. Se il ripristino non riesce, non cambia nulla.';

  @override
  String get settingsAbout => 'Informazioni';

  @override
  String settingsVersion(String version) {
    return 'Versione $version';
  }

  @override
  String get settingsLicenses => 'Licenze open source';

  @override
  String get settingsAssistant => 'Assistente';

  @override
  String get settingsAssistantEnable => 'Attiva assistente';

  @override
  String get settingsDashboard => 'Sezioni della home';

  @override
  String get settingsTrash => 'Cestino';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Il cestino è vuoto';

  @override
  String get trashHint => 'Gli elementi eliminati restano qui finché non li rimuovi.';

  @override
  String get trashTasks => 'Attività';

  @override
  String get trashNotes => 'Note';

  @override
  String get onboardWelcomeTitle => 'Benvenuto nel tuo nuovo spazio di lavoro';

  @override
  String get onboardWelcomeBody =>
      'Attività, focus, calendario, note, flashcard, obiettivi e abitudini: tutto insieme, meravigliosamente semplice.';

  @override
  String get onboardPrivateTitle => 'Privata per natura';

  @override
  String get onboardPrivateBody =>
      'Tutto resta su questo dispositivo, cifrato. Nessun account. Nessun tracciamento. Il controllo è tuo.';

  @override
  String get onboardLanguageTitle => 'Scegli la lingua';

  @override
  String get onboardNotifTitle => 'Promemoria discreti';

  @override
  String get onboardNotifBody =>
      'Consenti le notifiche per i promemoria delle attività e gli avvisi di focus. Puoi cambiarlo quando vuoi.';

  @override
  String get onboardGetStarted => 'Inizia';

  @override
  String onboardStep(int current, int total) {
    return 'Passo $current di $total';
  }

  @override
  String get notifChannelReminders => 'Promemoria';

  @override
  String get notifChannelRemindersDesc => 'Promemoria di attività, eventi, abitudini e obiettivi';

  @override
  String get notifChannelFocus => 'Timer di focus';

  @override
  String get notifChannelFocusDesc => 'Avvisi al termine di una sessione di focus o di una pausa';

  @override
  String get notifTaskTitle => 'Promemoria attività';

  @override
  String get notifEventTitle => 'Evento in arrivo';

  @override
  String notifEventBody(String title, String time) {
    return '$title alle $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sessione di focus completata';

  @override
  String get notifFocusDoneBody => 'Ottimo lavoro. È ora di una pausa.';

  @override
  String get notifBreakDoneTitle => 'La pausa è finita';

  @override
  String get notifBreakDoneBody => 'Pronto per la prossima sessione di focus?';

  @override
  String get notifHabitTitle => 'Promemoria abitudine';

  @override
  String get notifReviewTitle => 'Le flashcard sono pronte';

  @override
  String get notifReviewBody => 'Un breve ripasso mantiene forte la memoria.';

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
  String get weekdaysShort => 'L,M,M,G,V,S,D';

  @override
  String a11yProgress(int value) {
    return 'Avanzamento $value percento';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorità: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Colore $index';
  }

  @override
  String get analyticsRangeLabel => 'Intervallo di tempo';

  @override
  String get analyticsRefresh => 'Aggiorna';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done di $total attività in scadenza completate in tempo';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done di $total attività completate';
  }

  @override
  String get analyticsNoProjects => 'Nessun progetto attivo';

  @override
  String get analyticsNoFocus => 'Nessuna sessione di focus in questo intervallo';

  @override
  String get analyticsHabitsNone => 'Nessuna abitudine attiva';

  @override
  String get analyticsRetentionNote => 'Quota di carte consolidate che hai ricordato';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Il tempo libero conta $start–$end nei giorni lavorativi ($days), meno gli eventi con orario. Il lavoro stimato è la somma delle stime delle attività aperte in scadenza nei prossimi 7 giorni.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Lunedì–venerdì';

  @override
  String get assistantWorkdaysSunThu => 'Domenica–giovedì';

  @override
  String get assistantWorkloadDayOff => 'Giorno libero';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated pianificati · $free liberi';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Pianificato da ora fino alle $end, tra gli eventi di oggi. Prima le attività in ritardo, poi priorità, scadenza e stima.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Pianifica come blocchi di tempo';

  @override
  String get assistantScheduleConfirmTitle => 'Aggiungere blocchi di tempo al calendario?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Verranno aggiunti $count blocchi di tempo al calendario di oggi.',
      one: 'Verrà aggiunto 1 blocco di tempo al calendario di oggi.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blocchi di tempo aggiunti',
      one: '1 blocco di tempo aggiunto',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Già nel calendario';

  @override
  String get assistantPlanTimeline => 'Ci sta oggi';

  @override
  String get assistantNoEstimate => 'Aggiungi una stima per pianificarle';

  @override
  String get assistantNoNotes => 'Ancora nessuna nota. Scrivi prima una nota.';

  @override
  String get assistantNoteEmpty => 'Questa nota è vuota.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività create',
      one: '1 attività creata',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte create',
      one: '1 carta creata',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Crea $count',
      one: 'Crea 1',
      zero: 'Nessuna selezione',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Riconosciuti: caselle non spuntate \"- [ ]\" e righe che iniziano con TODO: o To do:';

  @override
  String get assistantCardsHint =>
      'Riconosciuti: \"termine: definizione\", \"termine — definizione\" e coppie di righe con Q: e A:';

  @override
  String get assistantProviderHint =>
      'Usa qualsiasi servizio compatibile con OpenAI. La chiave resta nell\'archivio sicuro del dispositivo e non viene mai inclusa nei backup.';

  @override
  String get assistantEndpointHelp => 'Per esempio https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Lascia vuoto per mantenere la chiave salvata';

  @override
  String get assistantApiKeyRequired => 'Inserisci una chiave API';

  @override
  String get assistantProviderSaved => 'Fornitore salvato';

  @override
  String get assistantProviderRemoved => 'Fornitore rimosso e chiave eliminata';

  @override
  String get assistantRemoveProviderConfirm =>
      'Rimuovere il fornitore ed eliminare la chiave API salvata da questo dispositivo?';

  @override
  String get assistantAskEveryTime => 'Chiedi prima di ogni richiesta';

  @override
  String get assistantSummarizing => 'Riassunto in corso…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generato da $host. Controlla prima di farci affidamento.';
  }

  @override
  String get assistantCopy => 'Copia';

  @override
  String get assistantCopied => 'Copiato';

  @override
  String get assistantConfigure => 'Configura fornitore';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Tutti gli eventi di questa serie sono stati spostati';

  @override
  String get calendarEventReminder => 'Promemoria';

  @override
  String get calendarEventRepeat => 'Ripeti';

  @override
  String get calendarEventColor => 'Colore';

  @override
  String get calendarDefaultColor => 'Usa il colore del tipo';

  @override
  String get calendarEventLinkedTask => 'Attività collegata';

  @override
  String get calendarEventNoTask => 'Nessuna attività collegata';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventi',
      one: '1 evento',
      zero: 'Nessun evento',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività in scadenza',
      one: '1 attività in scadenza',
      zero: 'nessuna attività in scadenza',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Aggiungi un evento o un blocco di tempo per pianificare questo giorno.';

  @override
  String get calendarNow => 'Ora attuale';

  @override
  String get calendarRecurring => 'Si ripete';

  @override
  String get calendarEventNotFound => 'Questo evento non esiste più';

  @override
  String get calendarEventLocalTime => 'Gli orari sono mostrati nel fuso orario del dispositivo';

  @override
  String get calendarEventDeleted => 'Evento spostato nel cestino';

  @override
  String get calendarConflictMarker => 'Si sovrappone a un altro evento';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Le modifiche valgono per ogni evento di questa serie';

  @override
  String get calendarDragHintSeries => 'Trascinare un evento ricorrente sposta tutta la serie';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, attività in scadenza';
  }

  @override
  String get startupErrorTitle => 'Impossibile aprire i tuoi dati';

  @override
  String get startupErrorLocked =>
      'La chiave di cifratura dei dati di questo dispositivo non è disponibile. Non è stato eliminato nulla. Riavviare il dispositivo spesso aiuta. Se hai ripristinato il dispositivo di recente, ripristina i dati da un backup cifrato.';

  @override
  String get startupErrorCipher =>
      'Questo dispositivo non supporta l\'archiviazione cifrata richiesta dall\'app. Non è stato salvato nulla senza cifratura.';

  @override
  String get startupErrorRetry => 'Riprova';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte da ripassare',
      one: '1 carta da ripassare',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count da ripassare';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nuove';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Carte consolidate: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Inserisci 0 o più';

  @override
  String get flashcardsSearchCards => 'Cerca carte';

  @override
  String get flashcardsSearchEmpty => 'Nessuna carta corrisponde alla ricerca';

  @override
  String get flashcardsCardAdded => 'Carta aggiunta';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Ripasso $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copia negli appunti';

  @override
  String get flashcardsExportTitle => 'Esporta mazzo';

  @override
  String get flashcardsDeleteDeck => 'Elimina mazzo';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, prossimo ripasso tra $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Domanda: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Risposta: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Mostra domanda';

  @override
  String get flashcardsImportField => 'Carte da importare';

  @override
  String get flashcardsNothingToStudy => 'Niente da studiare';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte pronte da studiare',
      one: '1 carta pronta da studiare',
      zero: 'Nessuna carta pronta',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Per valutazione';

  @override
  String get flashcardsDeckNotFound => 'Questo mazzo non è più disponibile.';

  @override
  String get focusSessionDeleted => 'Sessione eliminata';

  @override
  String get focusDeleteConfirm =>
      'Eliminare questa sessione dalla cronologia? Il suo tempo non conterà più per i tuoi obiettivi.';

  @override
  String get focusUnlinkTask => 'Rimuovi attività collegata';

  @override
  String get focusNoteHint => 'Su cosa hai lavorato?';

  @override
  String get focusTargetCaption => 'Misurato dalle sessioni salvate';

  @override
  String get focusModeLabel => 'Modalità timer';

  @override
  String focusUpNext(String phase) {
    return 'A seguire: $phase';
  }

  @override
  String get focusStopwatchHint => 'Conta in avanti finché non ti fermi.';

  @override
  String get focusOpenHint => 'Nessun limite di tempo. Fermati quando hai finito.';

  @override
  String get focusNotificationsDisabledInApp =>
      'I promemoria sono disattivati nelle impostazioni. Non riceverai avvisi alla fine di una sessione.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Tutti';

  @override
  String get goalsFilterPeriod => 'Filtro periodo';

  @override
  String get goalsFilterStatus => 'Filtro stato';

  @override
  String get goalsEmptyFiltered => 'Nessun obiettivo corrisponde a questo filtro';

  @override
  String goalsDueOn(String date) {
    return 'Scade $date';
  }

  @override
  String get goalsDeadline => 'Scadenza (facoltativa)';

  @override
  String get goalsNoDeadline => 'Nessuna scadenza';

  @override
  String get goalsSetDeadline => 'Imposta scadenza';

  @override
  String get goalsRemoveDeadline => 'Rimuovi scadenza';

  @override
  String get goalsDescription => 'Descrizione (facoltativa)';

  @override
  String get goalsTitleLabel => 'Titolo';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Traguardo raggiunto';

  @override
  String get goalsLogged => 'Progresso registrato';

  @override
  String get goalsEntryDeleted => 'Voce rimossa';

  @override
  String get goalsDeleteEntry => 'Rimuovi voce';

  @override
  String get goalsDeleted => 'Obiettivo eliminato';

  @override
  String get goalsMarkActive => 'Segna come attivo';

  @override
  String get goalsNotFound => 'Questo obiettivo non è più disponibile';

  @override
  String get goalsLinkTask => 'Collega un\'attività';

  @override
  String get goalsNoLinkedTasks => 'Ancora nessuna attività collegata';

  @override
  String get goalsUnlinkTask => 'Scollega attività';

  @override
  String get goalsTaskOpen => 'Non ancora completata';

  @override
  String get goalsTaskLinked => 'Attività collegata';

  @override
  String get goalsTaskUnlinked => 'Attività scollegata';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività collegate completate',
      one: '1 attività collegata completata',
    );
    return 'Include $_temp0 in questo periodo';
  }

  @override
  String get goalsHistoryAllTime =>
      'Le voci dei periodi precedenti restano qui ma contano solo per il loro periodo.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done di $total fatte oggi';
  }

  @override
  String get habitsNothingToday => 'Nessuna abitudine prevista per oggi';

  @override
  String get habitsDecrease => 'Togli una spunta';

  @override
  String get habitsResetToday => 'Azzera oggi';

  @override
  String get habitsCheckInHint => 'Tieni premuto per modificare';

  @override
  String get habitsName => 'Nome';

  @override
  String get habitsColor => 'Colore';

  @override
  String get habitsValidationDays => 'Scegli almeno un giorno';

  @override
  String habitsReminderAt(String time) {
    return 'Ogni giorno alle $time';
  }

  @override
  String get habitsSetReminder => 'Imposta un orario di promemoria';

  @override
  String get habitsRemoveReminder => 'Rimuovi promemoria';

  @override
  String get habitsReminderNote =>
      'I promemoria compaiono nei giorni previsti se le notifiche sono consentite.';

  @override
  String get habitsArchived => 'Abitudine archiviata';

  @override
  String get habitsNotFound => 'Questa abitudine non è più disponibile';

  @override
  String get habitsLast30 => 'Ultimi 30 giorni';

  @override
  String get habitsConsistencyNone => 'Dati ancora insufficienti';

  @override
  String get habitsCalendar => 'Cronologia delle spunte';

  @override
  String get habitsCalendarHint => 'Tocca un giorno per correggerlo.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count su $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Spunte degli ultimi 90 giorni. Costanza $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Spunte degli ultimi 90 giorni. Dati ancora insufficienti.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'I giorni in pausa non influiscono sulla tua serie.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archivia abitudine';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count volte al giorno',
      one: 'Una volta al giorno',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Altre note';

  @override
  String get notesAllNotebooks => 'Tutti i quaderni';

  @override
  String get notesNotebookName => 'Nome del quaderno';

  @override
  String get notesNotebookColor => 'Colore';

  @override
  String get notesDeleteNotebook => 'Elimina quaderno';

  @override
  String get notesDeleteNotebookMessage =>
      'Il quaderno viene rimosso. Le sue note restano e compaiono in Tutti i quaderni.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fissa le note importanti per tenerle in alto.';

  @override
  String get notesEmptyFavorites => 'Le note che segni come preferite appaiono qui.';

  @override
  String get notesEmptyArchived => 'Le note archiviate appaiono qui.';

  @override
  String get notesEmptyFiltered => 'Nessuna nota corrisponde a questi filtri.';

  @override
  String get notesArchivedSnack => 'Nota archiviata';

  @override
  String get notesUnarchivedSnack => 'Nota riportata tra le tue note';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done di $total fatte';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formattazione';

  @override
  String get notesWrite => 'Scrivi';

  @override
  String get notesPreviewEmpty => 'Ancora niente da mostrare in anteprima.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Nessun\'altra nota rimanda qui. Collega questa nota con [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dai un titolo a questa nota perché altre note possano collegarla.';

  @override
  String get notesLinkedTasksEmpty => 'Nessuna attività collegata a questa nota.';

  @override
  String notesLinkMissing(String title) {
    return 'Non esiste ancora una nota intitolata \"$title\".';
  }

  @override
  String get notesNotFound => 'Questa nota non esiste più.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Voce della checklist: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Apri la nota $title';
  }

  @override
  String get notesTagsHint => 'Aggiungi tag scrivendo #tag nella nota.';

  @override
  String get notesTaskDone => 'Completata';

  @override
  String get notifTimerDoneBody => 'Il tempo impostato è trascorso.';

  @override
  String get onboardingPrivatePointDevice => 'Salvato solo su questo dispositivo, cifrato';

  @override
  String get onboardingPrivatePointAccount => 'Nessun account necessario';

  @override
  String get onboardingPrivatePointTracking => 'Nessuna analisi, nessun tracciamento';

  @override
  String get onboardingLanguageBody => 'Puoi cambiarla quando vuoi nelle Impostazioni.';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get projectsActive => 'Attivi';

  @override
  String get projectNameHint => 'es. Lancio del prodotto';

  @override
  String get projectGoalHint => 'Come capirai che è finito?';

  @override
  String get projectNoDeadline => 'Nessuna scadenza';

  @override
  String get projectTasksOpen => 'Attività aperte';

  @override
  String get projectTasksCompleted => 'Attività completate';

  @override
  String get projectAddTask => 'Aggiungi attività al progetto';

  @override
  String get projectAddNote => 'Nuova nota di progetto';

  @override
  String get projectLinkedNotes => 'Note';

  @override
  String get projectNoTasks => 'Ancora nessuna attività in questo progetto';

  @override
  String get projectArchivedBadge => 'Archiviato';

  @override
  String get projectDeleted => 'Progetto spostato nel cestino';

  @override
  String get projectDeleteMessage => 'Le attività restano nel tuo elenco senza progetto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, completato al $percent percento';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count risultati',
      one: '1 risultato',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtra per tipo';

  @override
  String searchRecentTap(String query) {
    return 'Cerca di nuovo $query';
  }

  @override
  String get settingsLanguageHint =>
      'Scegli la lingua dell\'intera app. I nomi sono scritti nella loro lingua.';

  @override
  String get settingsThemeHint => 'Chiaro, scuro o come il sistema';

  @override
  String settingsDecrease(String setting) {
    return 'Diminuisci $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Aumenta $setting';
  }

  @override
  String get settingsQuietStart => 'Inizio';

  @override
  String get settingsQuietEnd => 'Fine';

  @override
  String get settingsNotificationsHint =>
      'Salva la tua preferenza nell\'app. Il sistema potrebbe chiedere anche l\'autorizzazione.';

  @override
  String get settingsDashboardHint =>
      'Trascina per riordinare. Disattiva le sezioni che non ti servono.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Riordina $section';
  }

  @override
  String get settingsDashboardReset => 'Ripristina ordine predefinito';

  @override
  String get settingsAssistantDesc =>
      'Aiuto facoltativo alla pianificazione. Nulla lascia il dispositivo, a meno che tu non colleghi un fornitore.';

  @override
  String get settingsAssistantSetup => 'Assistente e configurazione del fornitore';

  @override
  String get settingsTrashDesc => 'Ripristina o elimina definitivamente gli elementi rimossi';

  @override
  String get settingsEraseFirstBody =>
      'Non si può annullare. Valuta di creare prima un backup cifrato.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Digita $word';
  }

  @override
  String get settingsEraseFailed => 'Impossibile cancellare i dati. Non è cambiato nulla.';

  @override
  String get settingsAboutTagline =>
      'Uno spazio di produttività privato, che lavora prima di tutto in locale.';

  @override
  String get backupShowPassword => 'Mostra password';

  @override
  String get backupHidePassword => 'Nascondi password';

  @override
  String get backupSaved => 'Backup salvato';

  @override
  String get backupFailed => 'Impossibile creare il backup. I tuoi dati sono invariati.';

  @override
  String get backupReadFailed => 'Impossibile leggere il file selezionato.';

  @override
  String get backupRestoreFailed => 'Ripristino non riuscito. Non è cambiato nulla.';

  @override
  String get backupShareSubject => 'Backup cifrato di Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ogni $count giorni',
      one: 'Ogni giorno',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ogni $count settimane',
      one: 'Ogni settimana',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ogni $count mesi',
      one: 'Ogni mese',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ogni $count anni',
      one: 'Ogni anno',
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
    return 'il $days';
  }

  @override
  String get repeatEndsLabel => 'Termina';

  @override
  String get repeatEndsAfter => 'Dopo un certo numero di volte';

  @override
  String get repeatCountLabel => 'Ricorrenze';

  @override
  String get reminderNone => 'Nessun promemoria';

  @override
  String get reminderCustomTime => 'A un orario preciso';

  @override
  String get a11yDecrease => 'Diminuisci';

  @override
  String get a11yIncrease => 'Aumenta';

  @override
  String get pickTaskTitle => 'Scegli un\'attività';

  @override
  String get pickTaskEmpty => 'Nessuna attività aperta';

  @override
  String get tasksSearchTooltip => 'Cerca attività';

  @override
  String get tasksSectionOverdue => 'In ritardo';

  @override
  String get tasksSectionToday => 'Oggi';

  @override
  String get tasksRecurringSemantics => 'Si ripete';

  @override
  String get tasksFilterPriorityAtLeast => 'Priorità minima';

  @override
  String get tasksFilterCategory => 'Categoria';

  @override
  String get tasksFilterAnyCategory => 'Qualsiasi categoria';

  @override
  String get tasksFilterLabel => 'Etichetta';

  @override
  String get tasksFilterAnyLabel => 'Qualsiasi etichetta';

  @override
  String get tasksFilterReset => 'Azzera filtri';

  @override
  String get tasksViewByProject => 'Per progetto';

  @override
  String get tasksViewByPriority => 'Per priorità';

  @override
  String get tasksViewByCategory => 'Per categoria';

  @override
  String get tasksGroupNoCategory => 'Nessuna categoria';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività',
      one: '1 attività',
    );
    return 'Bloccata da $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Questa attività è bloccata da attività non completate. Completarla comunque?';

  @override
  String get taskStartFocus => 'Concentrati su questa attività';

  @override
  String get taskRemoveDate => 'Rimuovi data';

  @override
  String get taskAllDay => 'Nessun orario preciso';

  @override
  String get taskSaved => 'Attività salvata';

  @override
  String get taskCreated => 'Attività creata';

  @override
  String get taskReminderNeedsDue => 'Imposta una scadenza per usare i promemoria relativi';

  @override
  String get taskSubtaskDetailsHint =>
      'Salva prima l\'attività per aggiungere sottoattività, voci di checklist, etichette e dipendenze.';

  @override
  String get taskLabelName => 'Nome dell\'etichetta';

  @override
  String get taskMoreDetails => 'Dettagli';

  @override
  String get taskPlanning => 'Pianificazione';

  @override
  String get taskOrganize => 'Organizzazione';

  @override
  String get taskBreakdown => 'Suddivisione';

  @override
  String get trashDeleteTaskTitle => 'Eliminare questa attività per sempre?';

  @override
  String get trashDeleteNoteTitle => 'Eliminare questa nota per sempre?';

  @override
  String get trashDeleteBody => 'Non si può annullare.';

  @override
  String get trashEmptyTitle => 'Svuotare il cestino?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementi verranno eliminati definitivamente.',
      one: '1 elemento verrà eliminato definitivamente.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Ripristinato';

  @override
  String get trashPurged => 'Eliminato per sempre';

  @override
  String trashDeletedOn(String date) {
    return 'Eliminato il $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementi',
      one: '1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Leggi ad alta voce';

  @override
  String get flashcardsTtsUnavailable =>
      'La sintesi vocale non è disponibile su questo dispositivo.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Nessuna voce installata per questa lingua. Aggiungine una nelle impostazioni di sintesi vocale di Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Scintilla',
      'rocket': 'Razzo',
      'book': 'Libro',
      'work': 'Lavoro',
      'home': 'Casa',
      'heart': 'Cuore',
      'code': 'Codice',
      'palette': 'Tavolozza',
      'fitness': 'Fitness',
      'school': 'Scuola',
      'travel': 'Viaggi',
      'money': 'Risparmi',
      'other': 'Icona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Altri campi';

  @override
  String get cardFieldExample => 'Esempio';

  @override
  String get cardFieldExplanation => 'Spiegazione';

  @override
  String get cardFieldPronunciation => 'Pronuncia';

  @override
  String get cardFieldNotes => 'Note aggiuntive';

  @override
  String get projectMilestones => 'Traguardi';

  @override
  String get milestoneAdd => 'Aggiungi traguardo';

  @override
  String get milestoneEdit => 'Modifica traguardo';

  @override
  String get milestoneTitleLabel => 'Traguardo';

  @override
  String get milestoneNoDate => 'Nessuna data';

  @override
  String get milestonesEmpty =>
      'Ancora nessun traguardo. Aggiungi tappe con data per seguire il progetto nel calendario.';

  @override
  String get milestoneDeleted => 'Traguardo eliminato';

  @override
  String milestoneDoneA11y(String title) {
    return 'Segna il traguardo \"$title\" come fatto';
  }

  @override
  String calendarMilestone(String project) {
    return 'Traguardo · $project';
  }

  @override
  String get tasksViewInbox => 'In arrivo';

  @override
  String get tasksViewArchived => 'Archiviate';

  @override
  String get tasksEmptyInbox =>
      'Qui finiscono le attività senza progetto né data. Ordinale quando hai un minuto.';

  @override
  String get tasksEmptyArchived =>
      'Le attività archiviate restano qui, fuori dai tuoi elenchi e promemoria.';

  @override
  String get taskArchivedBadge => 'Archiviata';

  @override
  String get taskStatusInProgress => 'In corso';

  @override
  String get taskArchived => 'Attività archiviata';

  @override
  String get taskUnarchived => 'Attività tolta dall\'archivio';

  @override
  String get focusPlanTitle => 'Piano di sessioni';

  @override
  String focusPlanTotal(String duration) {
    return 'Totale $duration';
  }

  @override
  String get focusPlanRounds => 'Sessioni di focus';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pausa lunga dopo';

  @override
  String get focusPlanSkipLastBreak => 'Salta l\'ultima pausa';

  @override
  String get focusPlanAutoBreaks => 'Avvia le pause automaticamente';

  @override
  String get focusPlanAutoFocus => 'Avvia il focus automaticamente dopo una pausa';

  @override
  String get focusPlanSave => 'Salva piano';

  @override
  String get focusPlanNameHint => 'es. Preparazione esame';

  @override
  String get focusPlanSaved => 'Piano salvato';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min di focus, $rest min di pausa';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Diminuisci $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Aumenta $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sessione $current di $total';
  }

  @override
  String get focusSeriesComplete => 'Serie completata. Ottimo lavoro!';

  @override
  String get filterAll => 'Tutti';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importate · $duplicates duplicati saltati · $invalid righe incomplete';
  }

  @override
  String get flashcardsSuspend => 'Sospendi carta';

  @override
  String get flashcardsResume => 'Riprendi carta';

  @override
  String get flashcardsSuspended => 'Carta sospesa: non verrà programmata';

  @override
  String get flashcardsResumed => 'Carta ripresa';

  @override
  String get flashcardsSuspendedFilter => 'Sospesa';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown di $total carte';
  }

  @override
  String get flashcardsImportFile => 'Da file';

  @override
  String get speechTitle => 'Voce';

  @override
  String get speechAppLanguage => 'Lingua dell\'app';

  @override
  String get speechFrontLanguage => 'Lingua del fronte';

  @override
  String get speechBackLanguage => 'Lingua del retro';

  @override
  String get speechRepeat => 'Ripeti ogni lettura';

  @override
  String get speechRate => 'Velocità';

  @override
  String get speechAutoRead => 'Leggi la domanda automaticamente';

  @override
  String get speechHint =>
      'Usa le voci installate su questo dispositivo, offline. Se una lingua non ha una voce, te lo diciamo e non viene usato nient\'altro.';

  @override
  String get studyHowTitle => 'Come vuoi studiare?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ripassa $count carte',
      one: 'Ripassa 1 carta',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Esercitati su tutte le carte (programma invariato)';

  @override
  String get studyPracticeMistakes => 'Esercitati sugli errori recenti';

  @override
  String get studyPracticeHint =>
      'Gli esercizi non cambiano mai le scadenze delle carte. Il ripasso aggiorna il programma.';

  @override
  String get studyModeClassic => 'Classica';

  @override
  String get studyModeReverse => 'Inversa';

  @override
  String get studyModeMixed => 'In entrambi i sensi';

  @override
  String get studyModeTyped => 'Scrivi la risposta';

  @override
  String get studyModeChoice => 'Scelta multipla';

  @override
  String get studyModeListening => 'Ascolto';

  @override
  String get studyPractice => 'esercizio';

  @override
  String get studyNoMistakes => 'Nessun errore recente in questo mazzo. Ottimo!';

  @override
  String get studyTypeAnswer => 'Scrivi la tua risposta';

  @override
  String get studyCheck => 'Verifica';

  @override
  String get studyKnewIt => 'Lo sapevo';

  @override
  String get studyDidntKnow => 'Non lo sapevo';

  @override
  String studyMistakes(int count) {
    return 'Mancate ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Ripeti le carte mancate';

  @override
  String get studyCorrect => 'Corretto';

  @override
  String get studyAlmost => 'Quasi: controlla l\'ortografia';

  @override
  String get studyWrong => 'Non proprio';

  @override
  String get studyShowText => 'Mostra il testo';

  @override
  String get flashcardsImportFileFailed =>
      'Impossibile aprire il file. Puoi incollarne il contenuto.';

  @override
  String get studyNoMatchingCards => 'Ancora nessuna carta per questa scelta.';

  @override
  String get studyPracticeNew => 'Solo nuove';

  @override
  String get studyPracticeHard => 'Carte difficili';

  @override
  String get studyPracticeFavorites => 'Preferite';

  @override
  String get studySessionSize => 'Carte per sessione';

  @override
  String get studySessionAll => 'Tutte';

  @override
  String get studyOrder => 'Ordine';

  @override
  String get studyOrderDue => 'Prima le più in ritardo';

  @override
  String get studyOrderRandom => 'Casuale';

  @override
  String get studyOrderHardest => 'Prima le più difficili';

  @override
  String get flashcardsHard => 'Difficili';

  @override
  String get flashcardsFavorites => 'Preferite';

  @override
  String get flashcardsFavorite => 'Aggiungi ai preferiti';

  @override
  String get flashcardsUnfavorite => 'Rimuovi dai preferiti';

  @override
  String get flashcardsDuplicate => 'Duplica';

  @override
  String get flashcardsMoveTo => 'Sposta in un mazzo';

  @override
  String get flashcardsNoOtherDeck => 'Crea prima un altro mazzo.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte spostate',
      one: 'Carta spostata',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Aggiungi tag';

  @override
  String get flashcardsTagHint => 'es. verbi';

  @override
  String flashcardsSelected(int count) {
    return '$count selezionate';
  }

  @override
  String get flashcardsSelectAll => 'Seleziona tutte quelle mostrate';

  @override
  String flashcardsSelectCard(String front) {
    return 'Seleziona $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Ricordo $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Possibile duplicato';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Questo mazzo contiene già «$front» → «$back». Salvare comunque?';
  }

  @override
  String get flashcardsSaveAnyway => 'Salva comunque';

  @override
  String get flashcardsStats => 'Statistiche';

  @override
  String get flashcardsStatTotal => 'Carte';

  @override
  String get flashcardsStatLearning => 'In apprendimento';

  @override
  String get flashcardsStatMatureCaption => 'Ricordate per 21+ giorni';

  @override
  String get flashcardsStatReviewsToday => 'Ripassi di oggi';

  @override
  String get flashcardsStatCorrect => 'Risposte corrette';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Ultimi $days giorni';
  }

  @override
  String get flashcardsStatForget => 'Tasso di dimenticanza';

  @override
  String get flashcardsStatForgetCaption => '\"Di nuovo\" su carte imparate';

  @override
  String get flashcardsStatRecall => 'Ricordo ora';

  @override
  String get flashcardsStatRecallCaption => 'Stima FSRS, carte ripassate';

  @override
  String flashcardsStatActivity(int count) {
    return 'Ripassi al giorno · $count in totale';
  }

  @override
  String get flashcardsStatHistory => 'Ultime risposte';

  @override
  String get flashcardsStatNoHistory =>
      'Ancora nessun ripasso. Studia il mazzo per vedere qui i tuoi progressi.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Leggi $field ad alta voce';
  }

  @override
  String get speechVoice => 'Voce';

  @override
  String get speechVoiceDefault => 'Automatica';

  @override
  String get speechVoiceOnline => 'richiede internet';

  @override
  String get speechTest => 'Prova voce';

  @override
  String get importNext => 'Anteprima';

  @override
  String get importPreviewTitle => 'Associa le colonne ai campi';

  @override
  String get importIgnoreColumn => 'Ignora';

  @override
  String importColumn(int n) {
    return 'Colonna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready carte pronte · $invalid righe incomplete verranno saltate';
  }

  @override
  String get importNeedFrontBack => 'Scegli quali colonne sono il fronte e il retro.';

  @override
  String get actionMoveUp => 'Sposta su';

  @override
  String get actionMoveDown => 'Sposta giù';

  @override
  String get flashcardsLayoutTitle => 'Layout della carta';

  @override
  String get flashcardsLayoutHint =>
      'Rinomina, nascondi o riordina i campi extra di questo mazzo. Il contenuto delle carte non cambia mai.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Mostra $field durante lo studio';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Mostra la risposta passo dopo passo';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Prima appare il retro; ogni campo extra si apre con un tocco.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Mostra $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Questo file supera $mb MB.';
  }

  @override
  String get flashcardsImage => 'Immagine';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Aggiungi immagine';

  @override
  String get flashcardsAddAudio => 'Aggiungi audio';

  @override
  String get flashcardsPlayAudio => 'Riproduci registrazione';

  @override
  String get flashcardsAudioUnavailable =>
      'Questa registrazione non può essere riprodotta su questo dispositivo.';

  @override
  String get flashcardsCustomFields => 'I tuoi campi';

  @override
  String get flashcardsTemplates => 'Modelli';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Campo $n';
  }

  @override
  String get flashcardsAddField => 'Aggiungi campo';

  @override
  String get flashcardsFieldName => 'Nome del campo';

  @override
  String get flashcardsFieldLangDefault => 'Lingua del lato';

  @override
  String get flashcardsTemplateConfirm =>
      'Il modello stabilisce come mostrare i campi e aggiunge i suoi campi. Le tue carte e i campi esistenti restano come sono.';

  @override
  String get flashcardsApplyTemplate => 'Applica';

  @override
  String get templateVocabulary => 'Vocaboli';

  @override
  String get templateTwoTranslations => 'Parola con due traduzioni';

  @override
  String get templateQuestionAnswer => 'Domanda e risposta';

  @override
  String get templateDefinition => 'Termine e definizione';

  @override
  String get templateGrammar => 'Regola grammaticale';

  @override
  String get templateFieldPlural => 'Plurale';

  @override
  String get templateFieldTranslation2 => 'Seconda traduzione';

  @override
  String get templateFieldSynonyms => 'Sinonimi';

  @override
  String get templateFieldRule => 'Regola';

  @override
  String get deckCategory => 'Livello o argomento';

  @override
  String get deckCategoryHint => 'es. A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Cerca in tutte le carte';

  @override
  String get flashcardsSearchAllHint => 'Parola, traduzione, esempio, nota, tag…';

  @override
  String get flashcardsAllDecks => 'Tutti i mazzi';

  @override
  String get flashcardsAllLanguages => 'Tutte le lingue';

  @override
  String get flashcardsLangUnset => 'Lingua non impostata';

  @override
  String get flashcardsLevelUnset => 'Nessun livello o argomento';

  @override
  String get flashcardsByLanguage => 'Progressi per lingua';

  @override
  String get flashcardsByLevel => 'Progressi per livello o argomento';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks mazzi · $cards carte · $mature consolidate · $due da ripassare · $correct corrette (30 giorni)';
  }

  @override
  String get flashcardsRecord => 'Registra';

  @override
  String get flashcardsRecording => 'Registrazione…';

  @override
  String get flashcardsRecordStop => 'Ferma e conserva';

  @override
  String get flashcardsMicDenied =>
      'L\'accesso al microfono è disattivato. Consentilo nelle impostazioni di sistema per registrare.';

  @override
  String get flashcardsRecordFailed => 'La registrazione non è disponibile su questo dispositivo.';

  @override
  String get soundsTitle => 'Suoni';

  @override
  String get soundsNature => 'Natura';

  @override
  String get soundsNoise => 'Rumore per il focus';

  @override
  String get soundRain => 'Pioggia';

  @override
  String get soundStorm => 'Temporale';

  @override
  String get soundRiver => 'Fiume';

  @override
  String get soundOcean => 'Onde del mare';

  @override
  String get soundFire => 'Falò';

  @override
  String get soundForest => 'Uccelli nel bosco';

  @override
  String get soundNight => 'Notte d\'estate';

  @override
  String get soundWhite => 'Rumore bianco';

  @override
  String get soundPink => 'Rumore rosa';

  @override
  String get soundBrown => 'Rumore marrone';

  @override
  String get soundsPlay => 'Riproduci';

  @override
  String get soundsSleep => 'Timer di spegnimento';

  @override
  String get soundsSleepOff => 'Disattivato';

  @override
  String soundsSleepAt(String time) {
    return 'Si ferma alle $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Possono suonare fino a $count suoni insieme.';
  }

  @override
  String get soundsHint => 'Tocca un suono per iniziare. Mescolane diversi e regola ogni volume.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume di $name';
  }

  @override
  String get soundsChannel => 'Suoni della natura';

  @override
  String get settingsEndTone => 'Suono di fine timer';

  @override
  String get toneGentle => 'Bip leggeri';

  @override
  String get toneBeeps => 'Bip';

  @override
  String get toneWood => 'Colpi sul legno';

  @override
  String get toneBird => 'Canto d\'uccello';

  @override
  String get toneStream => 'Ruscello';

  @override
  String get toneSystem => 'Suono del telefono';

  @override
  String get speechOnPhone => 'Su questo telefono';

  @override
  String get speechAllLanguages => 'Tutte le lingue';

  @override
  String get speechSearchLanguage => 'Cerca lingue';

  @override
  String get speechGetVoices => 'Scarica altre voci';

  @override
  String get speechGetVoicesHint =>
      'Le lingue senza voce si possono scaricare nelle impostazioni vocali del telefono.';

  @override
  String get speechSettingsFailed =>
      'Impossibile aprire le impostazioni vocali su questo telefono.';

  @override
  String get speechVoiceMissing => 'Nessuna voce installata';

  @override
  String get speechPause => 'Pausa tra le ripetizioni';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Leggi l\'esempio con la risposta';

  @override
  String get flashListen => 'Ascolta';

  @override
  String get flashListenNext => 'Carta successiva';

  @override
  String get flashListenEmpty => 'Nessuna carta da ascoltare.';

  @override
  String get flashViewTable => 'Tabella';

  @override
  String get flashViewCards => 'Carte';

  @override
  String get flashSwapSides => 'Scambia colonne';

  @override
  String get flashSort => 'Ordina';

  @override
  String get flashSortNewest => 'Prima le più recenti';

  @override
  String get flashSortAlpha => 'Dalla A alla Z';

  @override
  String get flashSortDue => 'Prima quelle da ripassare';

  @override
  String get flashSortHard => 'Prima le più difficili';

  @override
  String get flashPasteCards => 'Incolla carte';

  @override
  String get flashClipboardEmpty => 'Gli appunti non contengono testo.';

  @override
  String get flashMenuAdd => 'Aggiungi carte';

  @override
  String get flashMenuDeck => 'Mazzo';

  @override
  String get flashToday => 'Oggi';

  @override
  String get flashStudyNow => 'Studia';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte risposte',
      one: '1 carta risposta',
      zero: 'Nessuna carta risposta',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Pioggia nel bosco';

  @override
  String get autoBackupTitle => 'Backup automatici';

  @override
  String get autoBackupDesc => 'Ogni giorno su questo telefono; si conservano gli ultimi 7';

  @override
  String get autoBackupHint =>
      'Queste copie restano su questo telefono e vengono eliminate se disinstalli l\'app. Per passare a un nuovo telefono, usa “Backup” per salvare un file.';

  @override
  String get autoBackupNone => 'Ancora nessun backup automatico. Il primo viene creato oggi.';

  @override
  String get autoBackupRestore => 'Ripristina';

  @override
  String autoBackupConfirm(String date) {
    return 'Sostituire tutti i dati attuali con il backup del $date?';
  }

  @override
  String get autoBackupRestored => 'Ripristinato.';

  @override
  String get errorLogTitle => 'Registro errori';

  @override
  String get errorLogHint =>
      'Se qualcosa va storto, viene annotato qui: solo il tipo di errore e il punto del codice, mai i tuoi contenuti. Condividilo per aiutare a risolvere il problema.';

  @override
  String get errorLogEmpty => 'Nessun errore registrato.';

  @override
  String get errorLogClear => 'Cancella';

  @override
  String get soundsWithFocus => 'Riproduci con le sessioni di focus';

  @override
  String get soundsWithFocusHint =>
      'Il tuo mix parte con una sessione di focus e si mette in pausa durante le pause.';

  @override
  String get soundsSavedMixes => 'Mix salvati';

  @override
  String get soundsSaveMix => 'Salva questo mix';

  @override
  String get soundsMixNameHint => 'Nome, es. Biblioteca sotto la pioggia';

  @override
  String soundsDeleteMix(String name) {
    return 'Eliminare il mix “$name”?';
  }

  @override
  String get settingsReviewReminderHint =>
      'Una volta al giorno, solo se ci sono carte da ripassare';

  @override
  String get settingsReviewTime => 'Orario del promemoria';

  @override
  String get shortcutFocus => 'Focus';

  @override
  String get shortcutNewTask => 'Nuova attività';

  @override
  String get shortcutReview => 'Ripassa carte';

  @override
  String get shortcutSounds => 'Suoni natura';

  @override
  String get myDayTitle => 'Inizia la giornata';

  @override
  String get myDayHint => 'La tua giornata a colpo d\'occhio, poi un tocco per concentrarti';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count attività per oggi',
      one: '1 attività per oggi',
      zero: 'Nessuna attività per oggi',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Nessun altro evento oggi';

  @override
  String myDayNextEvent(String title, String time) {
    return 'A seguire: $title alle $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mancano $count abitudini',
      one: 'Manca 1 abitudine',
      zero: 'Tutte le abitudini fatte',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Inizia con una sessione di focus';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi\' al-awwal';

  @override
  String get hijriMonth4 => 'Rabi\' al-thani';

  @override
  String get hijriMonth5 => 'Jumada al-ula';

  @override
  String get hijriMonth6 => 'Jumada al-akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Sha\'ban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu l-qa\'da';

  @override
  String get hijriMonth12 => 'Dhu l-hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year E.';
  }

  @override
  String get settingsHijri => 'Date dell\'Egira';

  @override
  String get settingsHijriHint => 'Mostrate nel calendario e nella home (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count giorni',
      one: '1 giorno',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done di $goal carte oggi';
  }

  @override
  String get studyGoalReached => 'Obiettivo giornaliero raggiunto. Ottimo!';

  @override
  String get studyWeekTitle => 'La tua settimana';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count carte risposte in 7 giorni',
      one: '1 carta risposta in 7 giorni',
      zero: 'Nessuna carta risposta in 7 giorni',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration di focus in 7 giorni';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Serie: $current · Migliore: $best';
  }

  @override
  String get studyGoalTitle => 'Obiettivo giornaliero (carte)';

  @override
  String get studyGoalOff => 'Disattivato';

  @override
  String get focusDndTitle => 'Non disturbare durante il focus';

  @override
  String get focusDndHint => 'Si attiva per ogni sessione di focus e si disattiva alla pausa';

  @override
  String get focusDndNeedsAccess =>
      'Consenti l\'accesso nelle impostazioni del telefono per usarlo';

  @override
  String get voiceInput => 'Detta il testo';

  @override
  String get voiceInputPrompt => 'Parla ora';

  @override
  String get voiceInputUnavailable =>
      'La dettatura non è disponibile su questo telefono. Installa o attiva un servizio vocale (per esempio Riconoscimento e sintesi vocale di Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Alba';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Lega musulmana mondiale';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, La Mecca';

  @override
  String get prayerMethodEgypt => 'Autorità generale egiziana';

  @override
  String get prayerMethodJordan => 'Giordania, Ministero degli Awqaf';

  @override
  String get prayerMethodKarachi => 'Università di Scienze Islamiche, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regione del Golfo';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turchia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malesia, Indonesia';

  @override
  String get prayerMethodFrance => 'Francia (12°)';

  @override
  String get prayerMethodRussia => 'Russia, Amministrazione spirituale';

  @override
  String prayerNotifTitle(String name) {
    return 'È l\'ora di $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Ora della preghiera · $time';
  }

  @override
  String get prayerTitle => 'Orari di preghiera';

  @override
  String get prayerOffHint =>
      'Scegli la tua città per vedere gli orari di preghiera. Sono calcolati sul telefono; non serve l\'accesso alla posizione.';

  @override
  String get prayerChooseCity => 'Scegli la città';

  @override
  String get prayerCity => 'Città';

  @override
  String get prayerCitySearch => 'Cerca una città';

  @override
  String get prayerMethod => 'Metodo di calcolo';

  @override
  String get prayerHanafiAsr => 'Asr hanafita (orario più tardo)';

  @override
  String get prayerReminders => 'Avvisa a ogni preghiera';

  @override
  String get prayerPauseFocus => 'Metti in pausa il focus all\'ora della preghiera';

  @override
  String get prayerPauseFocusHint =>
      'Una sessione in corso va in pausa; riprendi dopo la preghiera';

  @override
  String get prayerTurnOff => 'Disattiva gli orari di preghiera';

  @override
  String get prayerAccuracyNote =>
      'Gli orari calcolati possono differire di qualche minuto da quelli della tua moschea.';

  @override
  String prayerNext(String name, String time) {
    return '$name alle $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Questo file Anki usa il formato più recente. In Anki esporta di nuovo con “Supporta versioni precedenti di Anki” attivo, poi importa quel file.';

  @override
  String get importTemplate => 'Modello di foglio di calcolo';

  @override
  String get importTemplateFront => 'mela';

  @override
  String get importTemplateBack => 'un frutto rotondo';

  @override
  String get importTemplateExample => 'Mangio una mela ogni giorno.';

  @override
  String get importTemplateTag => 'cibo';

  @override
  String get starterTitle => 'Mazzi per iniziare';

  @override
  String get starterHint =>
      'Aggiungine uno per provare subito a studiare. Potrai modificarlo o eliminarlo in seguito.';

  @override
  String get starterAdd => 'Aggiungi';

  @override
  String get starterWords => 'Parole inglesi di tutti i giorni (con l\'arabo)';

  @override
  String get starterCapitals => 'Capitali del mondo';

  @override
  String get starterElements => 'Elementi chimici';

  @override
  String get settingsAccent => 'Colore principale';

  @override
  String get accentViolet => 'Viola';

  @override
  String get accentBlue => 'Blu';

  @override
  String get accentTeal => 'Verde acqua';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Ambra';

  @override
  String get settingsFlashTextSize => 'Dimensione del testo delle flashcard';

  @override
  String get settingsFlashTextSample => 'Esempio';

  @override
  String get widgetStartFocus => 'Tocca per concentrarti';

  @override
  String widgetFocusUntil(String time) {
    return 'Focus fino alle $time';
  }

  @override
  String get widgetNoCardsDue => 'Carte: tutto fatto';

  @override
  String get faqMyDayQ => 'Cosa fa “Inizia la giornata”?';

  @override
  String get faqMyDayA =>
      'Una volta al giorno la home te lo propone: vedi le attività di oggi, il prossimo evento, le abitudini rimaste e le carte da ripassare, poi avvia una sessione di focus con un tocco. Tieni premuta l\'icona dell\'app per le azioni rapide, o aggiungi il widget per vedere tempo di focus e carte da ripassare.';

  @override
  String get faqTasksQ => 'Come aggiungo un\'attività con promemoria?';

  @override
  String get faqTasksA =>
      'Tocca Nuova attività nella home o + in Attività. Scrivi il titolo o dettalo con il microfono, poi imposta scadenza, orario e promemoria. Le attività in ritardo compaiono per prime.';

  @override
  String get faqFocusQ => 'Come funziona il timer di focus?';

  @override
  String get faqFocusA =>
      'Scegli Pomodoro, un conto alla rovescia o tempo libero e premi Avvia; le pause possono seguire in automatico. Nelle Impostazioni puoi scegliere il suono di fine, attivare Non disturbare durante il focus e riprodurre i suoni della natura a ogni sessione.';

  @override
  String get faqSoundsQ => 'Posso mescolare i suoni della natura?';

  @override
  String get faqSoundsA =>
      'Attiva fino a sei registrazioni reali, regola ogni volume e salva il mix con un nome. Continuano in background e un timer di spegnimento può fermarli. Non si usa musica.';

  @override
  String get faqCalendarQ => 'Il calendario può mostrare le date dell\'Egira?';

  @override
  String get faqCalendarA =>
      'Sì. Le date dell\'Egira (Umm al-Qura) compaiono automaticamente in arabo e si possono attivare nelle Impostazioni per qualsiasi lingua. Eventi, attività con scadenza e traguardi dei progetti compaiono insieme.';

  @override
  String get faqFlashcardsQ => 'Come sceglie il ripasso quali carte vedo?';

  @override
  String get faqFlashcardsA =>
      'Le carte che conosci bene tornano dopo intervalli più lunghi e quelle che sbagli tornano presto (ripetizione dilazionata). Valuta ogni risposta con Di nuovo, Difficile, Bene o Facile. Imposta un obiettivo giornaliero e mantieni la serie nella scheda Oggi. Imposta una data d\'esame in un mazzo per vedere i giorni rimasti e quante nuove carte imparare ogni giorno. Ordina per \"Il mio ordine\" per trascinare le carte, tocca l\'altoparlante su un lato per ascoltarlo e regola velocità e ripetizioni nel menu Voce.';

  @override
  String get faqImportQ => 'Posso portare carte da Anki o Excel?';

  @override
  String get faqImportA =>
      'Sì. In un mazzo scegli Importa, poi un file: Anki (.apkg), Excel (.xlsx) o CSV, e associa le colonne. Usa “Modello di foglio di calcolo” per scrivere carte al computer. Immagini e suoni nei file Anki non vengono importati.';

  @override
  String get faqNotesQ => 'Cosa possono fare le note?';

  @override
  String get faqNotesA =>
      'Scrivi liberamente con checklist e formattazione, fissa o rendi preferite le note importanti, aggiungi tag e collega le note alle attività. Il pulsante del microfono permette di dettare. Una nuova nota può partire da un modello (lezione, riassunto di libro, diario, piano settimanale) e il pulsante immagine aggiunge foto.';

  @override
  String get faqHabitsQ => 'Come si contano le serie delle abitudini?';

  @override
  String get faqHabitsA =>
      'Un giorno conta quando raggiungi il traguardo dell\'abitudine in un giorno previsto. Mettere in pausa un\'abitudine protegge la serie. Ogni abitudine può avere il suo orario di promemoria.';

  @override
  String get faqGoalsQ => 'Come seguono i progressi gli obiettivi?';

  @override
  String get faqGoalsA =>
      'Dai a un obiettivo un traguardo e un\'unità, poi registra i progressi. La sua scheda mostra a che punto sei e quanto manca alla scadenza.';

  @override
  String get faqProjectsQ => 'A cosa servono i progetti?';

  @override
  String get faqProjectsA =>
      'Raggruppa le attività in un progetto, aggiungi traguardi con date e segui l\'avanzamento complessivo. I traguardi compaiono anche nel calendario.';

  @override
  String get faqInsightsQ => 'Cosa mostrano le Statistiche?';

  @override
  String get faqInsightsA =>
      'Il tuo tempo di focus, le attività completate e lo studio nei giorni e nelle settimane, con suggerimenti discreti. Tutto è calcolato sul telefono.';

  @override
  String get faqSpacesQ => 'Dove sono tutte le sezioni?';

  @override
  String get faqSpacesA =>
      'Spazi elenca ogni parte dell\'app (note, mazzi, abitudini, obiettivi, progetti, suoni e altro) così la barra principale resta semplice.';

  @override
  String get faqBackupQ => 'Come vengono salvati i miei dati?';

  @override
  String get faqBackupA =>
      'Ogni giorno l\'app conserva in silenzio una copia cifrata su questo telefono e tiene le ultime 7. Nelle Impostazioni puoi anche esportare un file di backup protetto da password e ripristinarlo su un altro telefono.';

  @override
  String get faqPrayerQ => 'Come funzionano gli orari di preghiera?';

  @override
  String get faqPrayerA =>
      'Scegli la tua città in Impostazioni → Orari di preghiera. Gli orari sono calcolati sul telefono con il metodo usato lì, e puoi cambiare metodo e scuola per l\'Asr. Puoi ricevere un avviso a ogni preghiera, e una sessione di focus in corso va in pausa.';

  @override
  String get faqPrivacyQ => 'Dove sono salvati i miei dati?';

  @override
  String get faqPrivacyA =>
      'Solo sul tuo telefono, in un database cifrato. Nessun account e nessun tracciamento. Internet è usato solo dalle funzioni che attivi tu, come l\'assistente facoltativo.';

  @override
  String get faqAssistantQ => 'Cos\'è l\'assistente?';

  @override
  String get faqAssistantA =>
      'Un aiuto facoltativo che colleghi al tuo servizio di IA nelle Impostazioni. È disattivato di default e chiede prima di inviare il testo di una nota.';

  @override
  String get tourPlanTitle => 'Pianifica la giornata';

  @override
  String get tourPlanBody =>
      'Attività, calendario e abitudini in un unico posto tranquillo. Inizia ogni mattina con “Inizia la giornata”.';

  @override
  String get tourFocusTitle => 'Concentrati a fondo';

  @override
  String get tourFocusBody =>
      'Sessioni a tempo con veri suoni della natura, Non disturbare e suoni di fine delicati.';

  @override
  String get tourLearnTitle => 'Impara per davvero';

  @override
  String get tourLearnBody =>
      'Flashcard con ripetizione dilazionata, voce in molte lingue e import da Anki o Excel.';

  @override
  String get helpTitle => 'Aiuto e domande';

  @override
  String get helpOpen => 'Apri';

  @override
  String get helpTour => 'Rivedi il tour';

  @override
  String get tourNext => 'Avanti';

  @override
  String get tourDone => 'Iniziamo';

  @override
  String get transferColTitle => 'Titolo';

  @override
  String get transferColNotes => 'Note';

  @override
  String get transferColBody => 'Testo';

  @override
  String get transferColDue => 'Scadenza';

  @override
  String get transferColPriority => 'Priorità (0-3)';

  @override
  String get transferColDone => 'Fatta';

  @override
  String get transferColProject => 'Progetto';

  @override
  String get transferColCategory => 'Categoria';

  @override
  String get transferTitle => 'Importa ed esporta';

  @override
  String get transferSaveAs => 'Salva come';

  @override
  String get transferImport => 'Importa da un file';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV o una tabella in Word. Colonne: titolo, scadenza (2026-12-31), priorità 0-3, fatta, progetto, note. Le attività già presenti nell\'app vengono saltate.';

  @override
  String get transferImportNotesHint =>
      'I file Word, Markdown o di testo diventano una nota. Excel o CSV: una nota per riga (titolo, testo).';

  @override
  String get transferSaved => 'File salvato';

  @override
  String get transferFailed => 'Impossibile creare il file. Non è cambiato nulla.';

  @override
  String get transferUnsupported =>
      'Questo file non si può leggere qui. Usa Excel, CSV, Word, Markdown o testo.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added aggiunti',
      one: '1 aggiunto',
      zero: 'Niente di nuovo da aggiungere',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Testo';

  @override
  String get transferAllNotes => 'Tutte le note';

  @override
  String get transferThisNote => 'Questa nota';

  @override
  String get transferDeckFormats => 'Salva come Excel, Word o PDF';

  @override
  String get faqFilesQ => 'Posso usare file Excel, Word o PDF?';

  @override
  String get faqFilesA =>
      'Sì. Attività e Note hanno in alto un pulsante di importazione ed esportazione (due frecce), e ogni mazzo lo ha nel suo menu. Salva come Excel, CSV, Word o PDF, oppure importa file Excel, CSV, Word, Markdown o di testo. I nomi delle colonne possono essere in qualsiasi lingua dell\'app, e i file salvati si possono sempre reimportare.';

  @override
  String get tplLecture => 'Lezione';

  @override
  String get tplBook => 'Riassunto di un libro';

  @override
  String get tplJournal => 'Diario';

  @override
  String get tplWeek => 'Piano settimanale';

  @override
  String get tplLectureBody => '## Punti chiave\n- \n\n## Domande\n- [ ] \n\n## Riassunto\n';

  @override
  String get tplBookBody =>
      '## Idea principale\n\n## Cosa ho imparato\n- \n\n## Citazioni\n> \n\n## Da applicare\n- [ ] \n';

  @override
  String get tplJournalBody => '## Sono grato per\n- \n\n## Il focus di oggi\n- [ ] \n\n## Note\n';

  @override
  String get tplWeekBody =>
      '## Obiettivi della settimana\n- [ ] \n\n### Sabato\n- [ ] \n\n### Domenica\n- [ ] \n\n### Lunedì\n- [ ] \n\n### Martedì\n- [ ] \n\n### Mercoledì\n- [ ] \n\n### Giovedì\n- [ ] \n\n### Venerdì\n- [ ] \n';

  @override
  String get tplHint => 'Parti da un modello';

  @override
  String get noteImage => 'Immagine';

  @override
  String get noteAddImage => 'Aggiungi immagine';

  @override
  String get noteImageUnreadable => 'Questo file non è un\'immagine che l\'app può leggere.';

  @override
  String get noteImageTooLarge => 'Questa immagine è troppo grande.';

  @override
  String get examSet => 'Imposta data d\'esame';

  @override
  String get examDate => 'Data d\'esame';

  @override
  String get examToday => 'Esame oggi. In bocca al lupo!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Esame tra $count giorni',
      one: 'Esame domani',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'impara $count carte nuove al giorno',
      one: 'impara 1 carta nuova al giorno',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'tutte le carte imparate, continua a ripassare';

  @override
  String examRaiseLimit(int count) {
    return 'Mostra $count carte nuove al giorno';
  }

  @override
  String get backupDriveHint =>
      'Per tenere una copia online, scegli Google Drive (o un\'altra app cloud) nella schermata di salvataggio che si apre.';

  @override
  String get flashShareDeck => 'Condividi il mazzo con un amico';

  @override
  String get flashSortManual => 'Il mio ordine (trascina)';

  @override
  String get flashReorderHint => 'Tieni la maniglia e trascina una carta per spostarla.';

  @override
  String get flashReorderNeedsAll => 'Cancella ricerca e filtri per trascinare le carte.';

  @override
  String get flashDragHandle => 'Trascina per spostare';

  @override
  String get reportTitle => 'Report mensile';

  @override
  String get reportFocus => 'Tempo di focus';

  @override
  String reportSessions(int count) {
    return '$count sessioni';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Giorno migliore: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count giorni attivi';
  }

  @override
  String get reportCards => 'Carte ripassate';

  @override
  String reportCardsKnown(String percent) {
    return '$percent ricordate';
  }

  @override
  String get reportTasks => 'Attività completate';

  @override
  String get reportHabits => 'Spunte delle abitudini';

  @override
  String get reportEmpty => 'Ancora nulla registrato questo mese.';

  @override
  String get reportSave => 'Salva come PDF o Word';

  @override
  String get reportPrevMonth => 'Mese precedente';

  @override
  String get reportNextMonth => 'Mese successivo';

  @override
  String get careTitle => 'Cura del telefono e dei dati';

  @override
  String get storageTitle => 'Spazio di archiviazione';

  @override
  String get storageSubtitle => 'Cosa occupa spazio e pulizia delle immagini inutilizzate';

  @override
  String get storagePictures => 'Immagini nelle note';

  @override
  String get storageCardMedia => 'Immagini e audio nelle carte';

  @override
  String get storageText => 'Testo delle note';

  @override
  String get storageFree => 'Libero sul telefono';

  @override
  String get storageLow =>
      'Il telefono è quasi pieno. Libera un po\' di spazio perché backup e promemoria continuino a funzionare.';

  @override
  String storageUnused(int count, String size) {
    return '$count immagini inutilizzate ($size)';
  }

  @override
  String get storageNoUnused => 'Nessuna immagine inutilizzata. Tutto in ordine.';

  @override
  String get storageClean => 'Rimuovi immagini inutilizzate';

  @override
  String storageCleaned(int count) {
    return '$count immagini rimosse';
  }

  @override
  String get storageHint =>
      'Un\'immagine è considerata inutilizzata solo se nessuna nota la mostra, comprese quelle nel cestino.';

  @override
  String get batteryTitle => 'Promemoria sempre puntuali';

  @override
  String get batterySubtitle => 'Alcuni telefoni fermano le app in background. Controlla il tuo.';

  @override
  String get batteryStatusOk =>
      'Il risparmio energetico non limita questa app. Promemoria e suoni dovrebbero arrivare in orario.';

  @override
  String get batteryStatusLimited =>
      'Il risparmio energetico potrebbe fermare l\'app in background: promemoria e suoni possono arrivare tardi o mancare.';

  @override
  String get batteryOpen => 'Apri impostazioni batteria';

  @override
  String get batteryOpenApp => 'Apri impostazioni app';

  @override
  String get batteryGeneric =>
      'Nelle impostazioni della batteria scegli questa app e impostala su Senza restrizioni (o Non ottimizzare).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: apri anche Sicurezza › Autorizzazioni › Avvio automatico e attiva questa app, poi imposta Risparmio batteria su Nessuna restrizione.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: apri Batteria › questa app e consenti attività in background e avvio automatico; blocca l\'app nell\'elenco delle app recenti.';

  @override
  String get batterySamsung =>
      'Samsung: Batteria › Limiti utilizzo in background: togli questa app da App in sospensione e App in sospensione profonda.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Avvio app › questa app › gestisci manualmente, e consenti avvio automatico, avvio secondario ed esecuzione in background.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batteria › Consumo in background › consenti questa app, e attiva l\'avvio automatico nelle autorizzazioni.';

  @override
  String get whatsNewTitle => 'Novità';

  @override
  String get whatsNewSubtitle => 'Le ultime modifiche in poche righe';

  @override
  String get whatsNewDone => 'Ho capito';

  @override
  String get whatsNewOrderTitle => 'Trascina le carte nel tuo ordine';

  @override
  String get whatsNewOrderBody =>
      'In un mazzo scegli Ordina › Il mio ordine, poi tieni la maniglia e trascina.';

  @override
  String get whatsNewSpeechTitle => 'Un altoparlante su ogni lato della carta';

  @override
  String get whatsNewSpeechBody =>
      'Toccalo per ascoltare la parola o la traduzione. Velocità, ripetizioni e voce sono nel menu del ripasso. La lingua viene riconosciuta dal testo.';

  @override
  String get whatsNewReportTitle => 'Report mensile';

  @override
  String get whatsNewReportBody =>
      'In Statistiche tocca l\'icona del report per vedere il mese e salvarlo come PDF o Word.';

  @override
  String get whatsNewCareTitle => 'Cura del telefono e dei dati';

  @override
  String get whatsNewCareBody =>
      'Le Impostazioni ora hanno una pagina di archiviazione con pulizia delle immagini e una guida alla batteria per la marca del tuo telefono.';

  @override
  String get whatsNewSoundTitle => 'Suoni più calmi';

  @override
  String get whatsNewSoundBody =>
      'I suoni della natura sono più morbidi e tenui, e le schede con le immagini sono più belle.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Controllato il $date: l\'ultimo backup si apre correttamente.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Controllato il $date: è stato trovato un backup danneggiato e sostituito con uno nuovo.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Controllato il $date: impossibile aprire l\'ultimo backup. Salva tu un file di backup dalle Impostazioni.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Di solito studi verso le $time';
  }

  @override
  String get smartReviewTimeUse => 'Usa questo orario';

  @override
  String get widgetNewNote => 'Nuova nota';

  @override
  String get noteConnections => 'Tag, link e attività';

  @override
  String get navCards => 'Carte';

  @override
  String get studyAnswerWay => 'Come rispondere';

  @override
  String get studyMorePractice => 'Esercizi extra';

  @override
  String get studySessionSettings => 'Impostazioni della sessione';

  @override
  String get focusAdjustTitle => 'La tua sessione';

  @override
  String get focusPresetsTitle => 'Pronte all\'uso';

  @override
  String get focusPresetStudy => 'Studio';

  @override
  String get focusPresetDeep => 'Lavoro profondo';

  @override
  String get focusPresetQuick => 'Sprint veloce';

  @override
  String get focusPresetReading => 'Lettura';

  @override
  String get focusPresetWorkout => 'Serie di allenamento';

  @override
  String get focusAdjustMinutes => 'Durata del focus';

  @override
  String get focusAdjustBreak => 'Durata della pausa';

  @override
  String get focusAdjustRounds => 'Round';

  @override
  String get focusRoundsOpen => 'Senza limite';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tocca per cambiare il tempo';

  @override
  String get flashArrangeDecks => 'Riordina mazzi';

  @override
  String get flashDeckActions => 'Opzioni del mazzo';

  @override
  String get starterBrowse => 'Mazzi pronti';

  @override
  String get starterBrowseHint => 'Aggiungine uno con un tocco e inizia a imparare';

  @override
  String get dashOpenDecks => 'Apri le tue carte';

  @override
  String speechVoiceNumber(String n) {
    return 'Voce $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Bel ritmo. Pausa di $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Inizia pausa';

  @override
  String tasksFinishAt(String time) {
    return 'Inizia ora e finirai tutto entro le $time';
  }

  @override
  String get focusCalmPacing => 'Ritmo calmo';

  @override
  String get focusCalmPacingHint => 'Solo minuti interi e l\'anello, niente secondi che scorrono';

  @override
  String get focusFlipHint => 'Capovolgi il telefono per iniziare';

  @override
  String get focusImmersive => 'Modalità immersiva';

  @override
  String get focusImmersiveBlack => 'Nero puro (risparmia batteria)';

  @override
  String get focusFlipToFocus => 'Capovolgi per concentrarti';

  @override
  String get focusFlipToFocusHint =>
      'In modalità immersiva: a faccia in giù parte, sollevandolo va in pausa';

  @override
  String get guardTitle => 'Protezione dalle distrazioni';

  @override
  String get guardSubtitle => 'Metti in pausa le app che distraggono mentre ti concentri';

  @override
  String get guardSwitch => 'Metti in pausa le app che distraggono';

  @override
  String get guardSwitchHint => 'Durante le sessioni di focus e le ore della fascia protetta';

  @override
  String get guardNeedsAccess => 'Serve l\'interruttore di accessibilità: tocca per attivarlo';

  @override
  String get guardDisclosureTitle => 'Come funziona la protezione';

  @override
  String get guardDisclosureBody =>
      'Per mettere in pausa le app che scegli, Deep Focus usa il servizio di accessibilità di Android per vedere quale app è aperta. Con “Chiudi Shorts e Reels” attivo, controlla anche se sullo schermo c\'è un lettore di video brevi.\n\nNon legge testo, non salva nulla di ciò che vede e non invia nulla: tutto resta sul tuo telefono. Puoi disattivarla quando vuoi nelle impostazioni di Accessibilità.';

  @override
  String get guardAgree => 'Accetta e apri impostazioni';

  @override
  String get guardModeGentle => 'Delicata';

  @override
  String get guardModeStrict => 'Rigida';

  @override
  String get guardGentleHint => 'Una pausa di 5 secondi per respirare, poi decidi tu';

  @override
  String get guardStrictHint => 'Le app scelte restano chiuse fino alla fine del focus';

  @override
  String get guardApps => 'App da mettere in pausa';

  @override
  String get guardAppsAllowed => 'App consentite';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count app',
      one: '1 app',
      zero: 'Nessuna scelta',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Consenti solo le app scelte';

  @override
  String get guardAllowlistHint =>
      'Tutte le altre app vanno in pausa; chiamate, impostazioni e tastiera funzionano sempre';

  @override
  String get guardShorts => 'Chiudi Shorts e Reels';

  @override
  String get guardShortsHint =>
      'Ogni volta che la protezione è attiva. Senza garanzie: queste app cambiano spesso';

  @override
  String get guardSchedule => 'Fascia protetta';

  @override
  String get guardScheduleHint => 'Proteggi anche in giorni e orari fissi, come scuola o lavoro';

  @override
  String get guardFrom => 'Dalle';

  @override
  String get guardTo => 'Alle';

  @override
  String get guardSearchApps => 'Cerca app';

  @override
  String get guardNoApps => 'Nessuna app trovata';

  @override
  String get guardPrivacy =>
      'Funziona solo sul tuo telefono: la protezione vede quale app è aperta, mai cosa contiene, e non invia nulla.';

  @override
  String get guardBreathe => 'Inspira… ed espira';

  @override
  String get guardQuestion => 'Ti serve questa app adesso?';

  @override
  String get guardBackToFocus => 'Torna al focus';

  @override
  String get guardOpenFive => 'Apri per 5 minuti';

  @override
  String get guardStrictBody => 'Questa app è in pausa fino alla fine del tuo focus.';

  @override
  String get guardShortsClosed => 'I video brevi sono chiusi finché la protezione è attiva';

  @override
  String get faqGuardQ => 'Come blocco le app che distraggono mentre mi concentro?';

  @override
  String get faqGuardA =>
      'Apri Focus → impostazioni del timer → Protezione dalle distrazioni. Scegli le app, poi Delicata (5 secondi di respiro e la domanda “Ti serve questa app adesso?”) o Rigida (restano chiuse). Funziona durante le sessioni di focus e, con la fascia protetta, nei giorni e orari che scegli. “Consenti solo le app scelte” mette in pausa tutto il resto; chiamate, impostazioni e tastiera funzionano sempre. Android ti chiede una volta di attivare la protezione nelle impostazioni di Accessibilità. Vede solo quale app è aperta e non invia nulla.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Spostata in $name';
  }

  @override
  String get notesDragHint => 'Tieni premuta una nota e trascinala su un quaderno';

  @override
  String get guardReviewCards => 'Ripassa le carte invece';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ti aspettano $count carte',
      one: 'Ti aspetta 1 carta',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emergenza: tieni premuto 10 secondi';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Continua a tenere… $n';
  }

  @override
  String get guardWeekTitle => 'Questa settimana';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pause',
      one: '1 pausa',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'tornato al focus $count volte',
      one: 'tornato al focus 1 volta',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Rinomina parole';

  @override
  String get wordsSubtitle => 'Usa le tue parole per qualsiasi testo dell\'app';

  @override
  String get wordsHint =>
      'Tocca un testo per cambiarlo. Le tue parole valgono solo per questa lingua e sono incluse nei backup.';

  @override
  String get wordsSearch => 'Cerca testi';

  @override
  String get wordsChangedOnly => 'Solo modificati';

  @override
  String wordsOriginal(String text) {
    return 'Originale: $text';
  }

  @override
  String get wordsReset => 'Usa l\'originale';

  @override
  String get wordsResetAll => 'Ripristina tutte le parole';

  @override
  String get wordsResetAllConfirm => 'Ogni testo in questa lingua torna all\'originale.';

  @override
  String get wordsNone => 'Nessun testo trovato';
}
