// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Inici';

  @override
  String get navTasks => 'Tasques';

  @override
  String get navFocus => 'Concentració';

  @override
  String get navCalendar => 'Calendari';

  @override
  String get navSpaces => 'Espais';

  @override
  String get moduleProjects => 'Projectes';

  @override
  String get moduleNotes => 'Notes';

  @override
  String get moduleFlashcards => 'Targetes';

  @override
  String get moduleGoals => 'Objectius';

  @override
  String get moduleHabits => 'Hàbits';

  @override
  String get moduleAnalytics => 'Estadístiques';

  @override
  String get moduleSearch => 'Cerca';

  @override
  String get moduleAssistant => 'Assistent';

  @override
  String get moduleSettings => 'Configuració';

  @override
  String get moduleTrash => 'Paperera';

  @override
  String get actionSave => 'Desa';

  @override
  String get actionCancel => 'Cancel·la';

  @override
  String get actionDelete => 'Suprimeix';

  @override
  String get actionEdit => 'Edita';

  @override
  String get actionDone => 'Fet';

  @override
  String get actionAdd => 'Afegeix';

  @override
  String get actionCreate => 'Crea';

  @override
  String get actionClose => 'Tanca';

  @override
  String get actionBack => 'Enrere';

  @override
  String get actionUndo => 'Desfés';

  @override
  String get actionRestore => 'Restaura';

  @override
  String get actionRetry => 'Torna-ho a provar';

  @override
  String get actionContinue => 'Continua';

  @override
  String get actionSkip => 'Omet';

  @override
  String get actionArchive => 'Arxiva';

  @override
  String get actionUnarchive => 'Desarxiva';

  @override
  String get actionPin => 'Fixa';

  @override
  String get actionUnpin => 'Deixa de fixar';

  @override
  String get actionMore => 'Més opcions';

  @override
  String get actionClear => 'Esborra';

  @override
  String get actionSearch => 'Cerca';

  @override
  String get actionSort => 'Ordena';

  @override
  String get actionShare => 'Comparteix';

  @override
  String get actionImport => 'Importa';

  @override
  String get actionExport => 'Exporta';

  @override
  String get actionPause => 'Pausa';

  @override
  String get actionResume => 'Reprèn';

  @override
  String get actionStart => 'Inicia';

  @override
  String get actionStop => 'Atura';

  @override
  String get actionComplete => 'Completa';

  @override
  String get actionDeleteForever => 'Suprimeix definitivament';

  @override
  String get actionEmptyTrash => 'Buida la paperera';

  @override
  String get actionUnlink => 'Desvincula';

  @override
  String get actionCustomize => 'Personalitza';

  @override
  String get actionPreview => 'Previsualització';

  @override
  String get actionLog => 'Registra el progrés';

  @override
  String get stateLoading => 'S’està carregant…';

  @override
  String get stateSaving => 'S’està desant…';

  @override
  String get stateSaved => 'Desat';

  @override
  String get stateUnsaved => 'Canvis sense desar';

  @override
  String get errorGenericTitle => 'Alguna cosa ha anat malament';

  @override
  String get errorGenericMessage => 'Les teves dades estan segures. Torna-ho a provar.';

  @override
  String get errorLoadFailed => 'No s’ha pogut carregar aquest contingut.';

  @override
  String get errorSaveFailed => 'No s’ha pogut desar. Els teus canvis encara hi són.';

  @override
  String get validationRequired => 'Aquest camp és obligatori';

  @override
  String get validationTitleRequired => 'Introdueix un títol';

  @override
  String get validationNameRequired => 'Introdueix un nom';

  @override
  String get validationTooLong => 'És massa llarg';

  @override
  String get validationEndBeforeStart => 'El final ha de ser després de l’inici';

  @override
  String get validationStartAfterDue => 'La data d’inici ha de ser anterior a la data límit';

  @override
  String get validationPositiveNumber => 'Introdueix un nombre més gran que zero';

  @override
  String get validationDependencyCycle => 'Això crearia una dependència circular';

  @override
  String get validationInvalidRepeat => 'Aquesta regla de repetició no és vàlida';

  @override
  String get deletedItem => 'S’ha mogut a la paperera';

  @override
  String get untitled => 'Sense títol';

  @override
  String get noProject => 'Sense projecte';

  @override
  String get greetingMorning => 'Bon dia';

  @override
  String get greetingAfternoon => 'Bona tarda';

  @override
  String get greetingEvening => 'Bon vespre';

  @override
  String get dashFocusToday => 'Concentració d’avui';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done de $target';
  }

  @override
  String get dashStartFocus => 'Comença a concentrar-te';

  @override
  String get dashFocusRunning => 'Sessió en curs';

  @override
  String get dashTodayTasks => 'Venç avui';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Hàbits d’avui';

  @override
  String get dashGoals => 'Objectius';

  @override
  String get dashReview => 'Repàs';

  @override
  String get dashRecentNotes => 'Notes recents';

  @override
  String get dashInsight => 'Suggeriment';

  @override
  String get dashSeeAll => 'Mostra-ho tot';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes per repassar',
      one: '1 targeta per repassar',
      zero: 'Cap targeta per repassar',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repassa ara';

  @override
  String get dashCustomizeTitle => 'Seccions de l’inici';

  @override
  String get dashCustomizeHint => 'Tria què apareix a la pantalla d’inici.';

  @override
  String get dashSectionFocus => 'Concentració';

  @override
  String get dashSectionToday => 'Tasques que vencen avui';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Hàbits';

  @override
  String get dashSectionGoals => 'Objectius';

  @override
  String get dashSectionReview => 'Repàs de targetes';

  @override
  String get dashSectionNotes => 'Notes recents';

  @override
  String get dashSectionInsight => 'Suggeriments';

  @override
  String get quickAddTask => 'Tasca nova';

  @override
  String get quickAddNote => 'Nota nova';

  @override
  String get quickAddEvent => 'Esdeveniment nou';

  @override
  String get quickStartFocus => 'Concentració';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tens $count tasques endarrerides. Comença per la més important.',
      one: 'Tens 1 tasca endarrerida. Reprograma-la o acaba-la primer.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Et falten $minutes minuts per arribar a l’objectiu diari de concentració.';
  }

  @override
  String get insightCardsDue => 'Repassa ara les targetes pendents mentre les tens fresques.';

  @override
  String get insightAllClear => 'Tot va bé. Planifica demà o fes una pausa conscient.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantén la ratxa: $habit encara està pendent avui.';
  }

  @override
  String get focusTitle => 'Concentració';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Temporitzador';

  @override
  String get focusModeCountUp => 'Cronòmetre';

  @override
  String get focusModeOpen => 'Lliure';

  @override
  String get focusPhaseWork => 'Concentració';

  @override
  String get focusPhaseShortBreak => 'Pausa curta';

  @override
  String get focusPhaseLongBreak => 'Pausa llarga';

  @override
  String get focusReady => 'Comença quan vulguis';

  @override
  String get focusPaused => 'En pausa';

  @override
  String get focusRunning => 'Concentrat';

  @override
  String get focusDuration => 'Durada';

  @override
  String get focusLinkTask => 'Vincula una tasca';

  @override
  String get focusLinkedTask => 'Treballant en';

  @override
  String get focusNoTask => 'Cap tasca vinculada';

  @override
  String focusCycle(int current, int total) {
    return 'Cicle $current de $total';
  }

  @override
  String get focusSkipBreak => 'Omet la pausa';

  @override
  String get focusStartBreak => 'Comença la pausa';

  @override
  String get focusStartNext => 'Comença la concentració següent';

  @override
  String get focusSessionComplete => 'Sessió completada';

  @override
  String get focusSessionStopped => 'Sessió desada';

  @override
  String focusSessionSummary(String duration) {
    return 'T’has concentrat durant $duration.';
  }

  @override
  String get focusAddNote => 'Afegeix una nota sobre aquesta sessió';

  @override
  String get focusHistory => 'Historial';

  @override
  String get focusNoHistory => 'Les sessions completades apareixeran aquí';

  @override
  String get focusTargets => 'Objectius';

  @override
  String get focusDailyTarget => 'Objectiu diari';

  @override
  String get focusWeeklyTarget => 'Objectiu setmanal';

  @override
  String get focusOutcomeCompleted => 'Completada';

  @override
  String get focusOutcomeInterrupted => 'Aturada abans d’hora';

  @override
  String get focusRecovered => 'La sessió ha continuat mentre l’aplicació estava tancada.';

  @override
  String get focusCompletedWhileAway =>
      'Una sessió ha acabat mentre l’aplicació estava tancada i s’ha desat.';

  @override
  String get focusNotificationsOff =>
      'Les notificacions estan desactivades. No rebràs cap avís quan acabi una sessió.';

  @override
  String get focusBatteryHint =>
      'Alguns dispositius posen en pausa les aplicacions en segon pla. El temporitzador continua sent precís, però els avisos es poden endarrerir. Permet l’ús de bateria sense restriccions perquè els avisos siguin fiables.';

  @override
  String get focusOpenSettings => 'Obre la configuració';

  @override
  String get focusStopConfirmTitle => 'Vols aturar aquesta sessió?';

  @override
  String get focusStopConfirmMessage => 'Es desarà el temps de concentració fins ara.';

  @override
  String get focusDiscard => 'Descarta';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuts',
      one: '1 minut',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, queden $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, han passat $time';
  }

  @override
  String get focusDeleteSession => 'Suprimeix la sessió';

  @override
  String get tasksTitle => 'Tasques';

  @override
  String get tasksViewToday => 'Avui';

  @override
  String get tasksViewUpcoming => 'Properes';

  @override
  String get tasksViewAll => 'Totes';

  @override
  String get tasksViewOverdue => 'Endarrerides';

  @override
  String get tasksViewCompleted => 'Completades';

  @override
  String get tasksQuickAddHint => 'Afegeix una tasca…';

  @override
  String get tasksEmptyTitle => 'Tot fet';

  @override
  String get tasksEmptyMessage => 'Afegeix una tasca per començar a organitzar el dia.';

  @override
  String get tasksEmptyCompleted => 'Les tasques completades apareixeran aquí.';

  @override
  String get taskNew => 'Tasca nova';

  @override
  String get taskEdit => 'Edita la tasca';

  @override
  String get taskTitleLabel => 'Títol';

  @override
  String get taskTitleHint => 'Què cal fer?';

  @override
  String get taskDescriptionLabel => 'Descripció';

  @override
  String get taskNotesLabel => 'Notes';

  @override
  String get taskPriority => 'Prioritat';

  @override
  String get priorityNone => 'Cap';

  @override
  String get priorityLow => 'Baixa';

  @override
  String get priorityMedium => 'Mitjana';

  @override
  String get priorityHigh => 'Alta';

  @override
  String get priorityUrgent => 'Urgent';

  @override
  String get taskDueDate => 'Data límit';

  @override
  String get taskStartDate => 'Data d’inici';

  @override
  String get taskReminder => 'Recordatori';

  @override
  String get taskRepeat => 'Repetició';

  @override
  String get taskProject => 'Projecte';

  @override
  String get taskCategory => 'Categoria';

  @override
  String get taskCategoryHint => 'p. ex. Feina, Casa, Estudis';

  @override
  String get taskEstimateMinutes => 'Estimació (minuts)';

  @override
  String get taskTracked => 'Concentració registrada';

  @override
  String get taskLabels => 'Etiquetes';

  @override
  String get taskAddLabel => 'Etiqueta nova';

  @override
  String get taskChecklist => 'Llista de verificació';

  @override
  String get taskAddChecklistItem => 'Afegeix un element';

  @override
  String get taskSubtasks => 'Subtasques';

  @override
  String get taskAddSubtask => 'Afegeix una subtasca';

  @override
  String get taskDependencies => 'Bloquejada per';

  @override
  String get taskAddDependency => 'Afegeix una tasca que la bloqueja';

  @override
  String get taskLinkedNotes => 'Notes vinculades';

  @override
  String get taskSetTime => 'Defineix l’hora';

  @override
  String get taskNoDate => 'Sense data';

  @override
  String get taskCompleted => 'Tasca completada';

  @override
  String get taskNextOccurrence => 'S’ha creat la repetició següent';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dies de retard',
      one: '1 dia de retard',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marca «$title» com a feta';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marca «$title» com a no feta';
  }

  @override
  String get sortSmart => 'Intel·ligent';

  @override
  String get sortDueDate => 'Data límit';

  @override
  String get sortPriority => 'Prioritat';

  @override
  String get sortCreated => 'Més recents';

  @override
  String get sortTitle => 'Títol';

  @override
  String get filterAllProjects => 'Tots els projectes';

  @override
  String get filterAnyPriority => 'Qualsevol prioritat';

  @override
  String get filterTitle => 'Filtra i ordena';

  @override
  String get dateToday => 'Avui';

  @override
  String get dateTomorrow => 'Demà';

  @override
  String get dateYesterday => 'Ahir';

  @override
  String get repeatNever => 'No es repeteix';

  @override
  String get repeatDaily => 'Cada dia';

  @override
  String get repeatWeekdays => 'Cada dia laborable';

  @override
  String get repeatWeekly => 'Cada setmana';

  @override
  String get repeatMonthly => 'Cada mes';

  @override
  String get repeatYearly => 'Cada any';

  @override
  String get repeatCustom => 'Personalitzat';

  @override
  String get repeatEvery => 'Repeteix cada';

  @override
  String get repeatOnDays => 'Els dies';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dies', one: 'dia');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'setmanes',
      one: 'setmana',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'mesos', one: 'mes');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'anys', one: 'any');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vegades',
      one: '1 vegada',
    );
    return 'Acaba després de $_temp0';
  }

  @override
  String get repeatEndsNever => 'No acaba mai';

  @override
  String get reminderAtTime => 'A l’hora de l’esdeveniment';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minuts abans',
      one: '1 minut abans',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours hores abans',
      one: '1 hora abans',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 dia abans';

  @override
  String get projectsTitle => 'Projectes';

  @override
  String get projectsEmptyTitle => 'Encara no hi ha projectes';

  @override
  String get projectsEmptyMessage => 'Agrupa tasques, notes i temps de concentració relacionats.';

  @override
  String get projectNew => 'Projecte nou';

  @override
  String get projectEdit => 'Edita el projecte';

  @override
  String get projectName => 'Nom';

  @override
  String get projectDescription => 'Descripció';

  @override
  String get projectGoal => 'Objectiu';

  @override
  String get projectDeadline => 'Data límit';

  @override
  String get projectColor => 'Color';

  @override
  String get projectIcon => 'Icona';

  @override
  String get projectProgress => 'Progrés';

  @override
  String projectTasksDone(int done, int total) {
    return '$done de $total tasques fetes';
  }

  @override
  String get projectFocusTime => 'Temps de concentració';

  @override
  String get projectArchived => 'Projectes arxivats';

  @override
  String get projectShowArchived => 'Mostra els arxivats';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Queden $days dies',
      one: 'Queda 1 dia',
      zero: 'Venç avui',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Data límit superada';

  @override
  String get calendarTitle => 'Calendari';

  @override
  String get calendarMonth => 'Mes';

  @override
  String get calendarWeek => 'Setmana';

  @override
  String get calendarDay => 'Dia';

  @override
  String get calendarToday => 'Avui';

  @override
  String get calendarPrevious => 'Anterior';

  @override
  String get calendarNext => 'Següent';

  @override
  String get calendarNoEvents => 'Res programat';

  @override
  String get calendarAllDay => 'Tot el dia';

  @override
  String get eventNew => 'Esdeveniment nou';

  @override
  String get eventEdit => 'Edita l’esdeveniment';

  @override
  String get eventTitleHint => 'Títol de l’esdeveniment';

  @override
  String get eventStarts => 'Comença';

  @override
  String get eventEnds => 'Acaba';

  @override
  String get eventKind => 'Tipus';

  @override
  String get eventKindEvent => 'Esdeveniment';

  @override
  String get eventKindTimeBlock => 'Bloc de temps';

  @override
  String get eventKindFocus => 'Sessió de concentració';

  @override
  String get eventKindGoal => 'Objectiu personal';

  @override
  String get eventDescription => 'Detalls';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se solapa amb $count esdeveniments',
      one: 'Se solapa amb 1 esdeveniment',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflictes de programació aquest dia';

  @override
  String get calendarTaskDue => 'Tasca que venç';

  @override
  String get calendarDragHint => 'Mantén premut i arrossega un esdeveniment per reprogramar-lo';

  @override
  String get calendarRescheduled => 'Esdeveniment mogut';

  @override
  String get calendarScheduleTask => 'Programa com a bloc de temps';

  @override
  String get notesTitle => 'Notes';

  @override
  String get notesViewAll => 'Totes';

  @override
  String get notesViewPinned => 'Fixades';

  @override
  String get notesViewFavorites => 'Preferides';

  @override
  String get notesViewArchived => 'Arxivades';

  @override
  String get notesTags => 'Etiquetes';

  @override
  String get notesNewNotebook => 'Llibreta nova';

  @override
  String get notesNoNotebook => 'Sense llibreta';

  @override
  String get notesEmptyTitle => 'Un full en blanc';

  @override
  String get notesEmptyMessage => 'Captura idees, notes de reunions i coneixement.';

  @override
  String get noteTitleHint => 'Títol';

  @override
  String get noteBodyHint =>
      'Comença a escriure… Fes servir # per a etiquetes i [[Títol]] per vincular notes.';

  @override
  String get noteFavorite => 'Preferida';

  @override
  String get noteUnfavorite => 'Treu de les preferides';

  @override
  String get noteMoveTo => 'Mou a la llibreta';

  @override
  String get noteBacklinks => 'Enllaçada des de';

  @override
  String get noteLinkedTasks => 'Tasques vinculades';

  @override
  String get noteLinkTask => 'Vincula una tasca';

  @override
  String get noteLinkProject => 'Projecte';

  @override
  String get noteFormatHeading => 'Encapçalament';

  @override
  String get noteFormatBold => 'Negreta';

  @override
  String get noteFormatItalic => 'Cursiva';

  @override
  String get noteFormatList => 'Llista de pics';

  @override
  String get noteFormatChecklist => 'Llista de verificació';

  @override
  String get noteFormatLink => 'Enllaç';

  @override
  String noteEdited(String time) {
    return 'Editada $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count paraules',
      one: '1 paraula',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Targetes';

  @override
  String get flashEmptyTitle => 'Crea la teva primera baralla';

  @override
  String get flashEmptyMessage =>
      'La repetició espaiada mostra cada targeta just abans que l’oblidis.';

  @override
  String get deckNew => 'Baralla nova';

  @override
  String get deckEdit => 'Edita la baralla';

  @override
  String get deckName => 'Nom de la baralla';

  @override
  String get deckDescription => 'Descripció';

  @override
  String get deckDailyNew => 'Targetes noves per dia';

  @override
  String get deckDailyReview => 'Objectiu diari de repàs';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes',
      one: '1 targeta',
      zero: 'Cap targeta',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Pendents';

  @override
  String get deckNewCards => 'Noves';

  @override
  String get deckMature => 'Consolidades';

  @override
  String get deckStudy => 'Estudia';

  @override
  String get deckNothingDue => 'Ara no hi ha res pendent. Torna més tard.';

  @override
  String get deckEmptyCards => 'Afegeix targetes per començar a aprendre.';

  @override
  String get cardNew => 'Targeta nova';

  @override
  String get cardEdit => 'Edita la targeta';

  @override
  String get cardFront => 'Anvers';

  @override
  String get cardBack => 'Revers';

  @override
  String get cardFrontHint => 'Pregunta o terme';

  @override
  String get cardBackHint => 'Resposta o definició';

  @override
  String get cardTags => 'Etiquetes';

  @override
  String get cardAddAnother => 'Desa i afegeix-ne una altra';

  @override
  String get reviewShowAnswer => 'Mostra la resposta';

  @override
  String get reviewAgain => 'De nou';

  @override
  String get reviewHard => 'Difícil';

  @override
  String get reviewGood => 'Bé';

  @override
  String get reviewEasy => 'Fàcil';

  @override
  String reviewProgress(int done, int total) {
    return '$done de $total';
  }

  @override
  String get reviewFinishedTitle => 'Sessió completada';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Has repassat $count targetes.',
      one: 'Has repassat 1 targeta.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Toca per veure la resposta';

  @override
  String get importCardsTitle => 'Importa targetes';

  @override
  String get importCardsHint =>
      'Enganxa una targeta per línia (anvers i revers separats per una tabulació o un punt i coma), o tria un fitxer: Excel (.xlsx), CSV, una baralla d’Anki (.apkg) o una baralla exportada.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han importat $count targetes',
      one: 'S’ha importat 1 targeta',
      zero: 'No s’ha importat cap targeta',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'No s’ha pogut importar aquest contingut.';

  @override
  String get exportCopied => 'Baralla exportada';

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
      other: '$count dies',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Objectius';

  @override
  String get goalsEmptyTitle => 'Apunta alt';

  @override
  String get goalsEmptyMessage =>
      'Defineix objectius diaris, setmanals, mensuals o a llarg termini i segueix el progrés real.';

  @override
  String get goalNew => 'Objectiu nou';

  @override
  String get goalEdit => 'Edita l’objectiu';

  @override
  String get goalTitleHint => 'Què vols aconseguir?';

  @override
  String get goalPeriod => 'Període';

  @override
  String get goalPeriodDaily => 'Diari';

  @override
  String get goalPeriodWeekly => 'Setmanal';

  @override
  String get goalPeriodMonthly => 'Mensual';

  @override
  String get goalPeriodLongTerm => 'A llarg termini';

  @override
  String get goalTarget => 'Meta';

  @override
  String get goalUnit => 'Unitat';

  @override
  String get goalUnitHint => 'p. ex. pàgines, km, hores';

  @override
  String get goalStatusActive => 'Actiu';

  @override
  String get goalStatusPaused => 'En pausa';

  @override
  String get goalStatusAchieved => 'Assolit';

  @override
  String get goalPause => 'Posa en pausa l’objectiu';

  @override
  String get goalResume => 'Reprèn l’objectiu';

  @override
  String get goalMarkAchieved => 'Marca com a assolit';

  @override
  String goalProgressOf(String current, String target) {
    return '$current de $target';
  }

  @override
  String get goalLogAmount => 'Quantitat';

  @override
  String get goalLogNote => 'Nota (opcional)';

  @override
  String get goalHistory => 'Historial';

  @override
  String get goalNoHistory => 'El progrés registrat apareixerà aquí';

  @override
  String get goalLinkedTasks => 'Tasques vinculades';

  @override
  String get goalLinkedTasksHint =>
      'Cada tasca vinculada completada compta com a 1 per a aquest objectiu.';

  @override
  String get goalThisPeriod => 'Aquest període';

  @override
  String get habitsTitle => 'Hàbits';

  @override
  String get habitsEmptyTitle => 'Petits passos, cada dia';

  @override
  String get habitsEmptyMessage => 'Crea un hàbit i marca’l quan el facis.';

  @override
  String get habitNew => 'Hàbit nou';

  @override
  String get habitEdit => 'Edita l’hàbit';

  @override
  String get habitNameHint => 'p. ex. Llegir 20 pàgines';

  @override
  String get habitDays => 'Programació';

  @override
  String get habitEveryDay => 'Cada dia';

  @override
  String get habitTargetPerDay => 'Vegades al dia';

  @override
  String get habitReminder => 'Recordatori diari';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ratxa de $count dies',
      one: 'Ratxa d’1 dia',
      zero: 'Sense ratxa',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Millor ratxa';

  @override
  String get habitCurrentStreak => 'Ratxa actual';

  @override
  String get habitConsistency => 'Constància';

  @override
  String get habitLast90 => 'Últims 90 dies';

  @override
  String get habitPaused => 'En pausa';

  @override
  String get habitPause => 'Posa en pausa l’hàbit';

  @override
  String get habitResume => 'Reprèn l’hàbit';

  @override
  String get habitDoneToday => 'Fet avui';

  @override
  String habitCountToday(int count, int target) {
    return '$count de $target avui';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Marca «$name»';
  }

  @override
  String get habitNotScheduledToday => 'No programat avui';

  @override
  String get analyticsTitle => 'Estadístiques';

  @override
  String get rangeWeek => '7 dies';

  @override
  String get rangeMonth => '30 dies';

  @override
  String get rangeQuarter => '90 dies';

  @override
  String get statFocusTime => 'Temps de concentració';

  @override
  String get statSessions => 'Sessions';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed completades · $interrupted aturades abans d’hora';
  }

  @override
  String get statTasksDone => 'Tasques completades';

  @override
  String get statCompletionRate => 'Completades a temps';

  @override
  String get statHabitConsistency => 'Constància dels hàbits';

  @override
  String get statRetention => 'Retenció de targetes';

  @override
  String get statReviews => 'Repassos';

  @override
  String get statActiveGoals => 'Objectius actius';

  @override
  String get statEstimated => 'Feina estimada completada';

  @override
  String get statEstimatedNote => 'Basat en les teves estimacions, no en temps mesurat';

  @override
  String get statMeasuredNote => 'Mesurat a partir de les sessions de concentració';

  @override
  String get chartFocusByDay => 'Minuts de concentració per dia';

  @override
  String get chartTasksByDay => 'Tasques completades per dia';

  @override
  String get chartTimeByProject => 'Temps per projecte';

  @override
  String get chartProjectProgress => 'Progrés dels projectes';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, millor dia $best';
  }

  @override
  String get analyticsNoData => 'Encara no hi ha prou dades';

  @override
  String get analyticsUnassigned => 'Sense assignar';

  @override
  String get searchHint => 'Cerca-ho tot…';

  @override
  String get searchRecent => 'Cerques recents';

  @override
  String get searchClearRecent => 'Esborra les cerques recents';

  @override
  String searchNoResults(String query) {
    return 'No hi ha resultats per a «$query»';
  }

  @override
  String get searchStartTyping =>
      'Cerca a tasques, notes, targetes, objectius, esdeveniments i més. La cerca es queda en aquest dispositiu.';

  @override
  String get searchCatTask => 'Tasques';

  @override
  String get searchCatProject => 'Projectes';

  @override
  String get searchCatNote => 'Notes';

  @override
  String get searchCatFlashcard => 'Targetes';

  @override
  String get searchCatDeck => 'Baralles';

  @override
  String get searchCatGoal => 'Objectius';

  @override
  String get searchCatHabit => 'Hàbits';

  @override
  String get searchCatEvent => 'Esdeveniments';

  @override
  String get searchCatSession => 'Sessions';

  @override
  String get searchAll => 'Tot';

  @override
  String get assistantTitle => 'Assistent';

  @override
  String get assistantIntro =>
      'Ajuda per planificar que funciona al teu dispositiu. Opcionalment, connecta un proveïdor d’IA que triïs per a resums i generació.';

  @override
  String get assistantOnDevice => 'Al dispositiu';

  @override
  String get assistantCloud => 'Proveïdor d’IA';

  @override
  String get assistantPlanDay => 'Planifica el meu dia';

  @override
  String get assistantPlanDayDesc =>
      'Ordena les tasques obertes per urgència, prioritat i estimació, i les encaixa entre els teus esdeveniments.';

  @override
  String get assistantExtractTasks => 'Extreu tasques d’una nota';

  @override
  String get assistantExtractTasksDesc =>
      'Troba elements de llista de verificació i línies d’acció en una nota i els converteix en tasques.';

  @override
  String get assistantMakeCards => 'Crea targetes a partir d’una nota';

  @override
  String get assistantMakeCardsDesc =>
      'Converteix les línies «terme: definició» i de pregunta/resposta en targetes.';

  @override
  String get assistantSummarize => 'Resumeix una nota';

  @override
  String get assistantSummarizeDesc =>
      'Cal un proveïdor d’IA. La nota només s’envia després que ho confirmis.';

  @override
  String get assistantWorkload => 'Resum de la càrrega de feina';

  @override
  String get assistantWorkloadDesc =>
      'Compara la feina estimada amb el teu temps lliure d’aquesta setmana.';

  @override
  String get assistantPlanEmpty => 'No hi ha tasques obertes per planificar. Gaudeix de l’espai.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Temps lliure de concentració avui: $time';
  }

  @override
  String get assistantPlanOverflow => 'Potser aquestes no hi caben avui:';

  @override
  String get assistantChooseNote => 'Tria una nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han trobat $count tasques',
      one: 'S’ha trobat 1 tasca',
      zero: 'No s’han trobat tasques en aquesta nota',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han trobat $count targetes',
      one: 'S’ha trobat 1 targeta',
      zero: 'No s’han trobat targetes en aquesta nota',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Tria una baralla';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Feina estimada: $estimated. Temps lliure: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Tens més feina planificada que temps disponible. Considera moure les tasques de prioritat més baixa.';

  @override
  String get assistantWorkloadOk => 'El teu pla cap en el temps disponible.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasques obertes no tenen estimació.',
      one: '1 tasca oberta no té estimació.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Proveïdor d’IA';

  @override
  String get assistantProviderOff =>
      'Cap proveïdor connectat. Les eines del dispositiu continuen funcionant.';

  @override
  String assistantProviderOn(String host) {
    return 'Connectat a $host';
  }

  @override
  String get assistantEndpoint => 'Punt final de l’API (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'Clau de l’API';

  @override
  String get assistantApiKeyStored => 'Desada de manera segura en aquest dispositiu';

  @override
  String get assistantHttpsOnly => 'Només es permeten punts finals HTTPS';

  @override
  String get assistantConsentTitle => 'Vols enviar aquest contingut al teu proveïdor d’IA?';

  @override
  String assistantConsentBody(String host) {
    return 'El text de la nota seleccionada sortirà d’aquest dispositiu i el processarà $host. No s’envia res més.';
  }

  @override
  String get assistantConsentAlways => 'No ho tornis a preguntar per a aquest proveïdor';

  @override
  String get assistantSend => 'Envia';

  @override
  String get assistantUnavailable =>
      'No s’ha pogut contactar amb el proveïdor d’IA. Torna-ho a provar més tard.';

  @override
  String get assistantDisabledTitle => 'L’assistent està desactivat';

  @override
  String get assistantDisabledMessage =>
      'Activa’l per fer servir les eines de planificació. Cap dada surt del dispositiu tret que connectis un proveïdor i confirmis cada sol·licitud.';

  @override
  String get assistantSummaryTitle => 'Resum';

  @override
  String get assistantRemoveProvider => 'Elimina el proveïdor';

  @override
  String get settingsTitle => 'Configuració';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Idioma del dispositiu';

  @override
  String get settingsAppearance => 'Aparença';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Clar';

  @override
  String get themeDark => 'Fosc';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Redueix el moviment';

  @override
  String get settingsReduceMotionDesc => 'Minimitza les animacions i els fons en moviment';

  @override
  String get settingsFocus => 'Temporitzador de concentració';

  @override
  String get settingsWorkLength => 'Durada de la concentració';

  @override
  String get settingsShortBreak => 'Pausa curta';

  @override
  String get settingsLongBreak => 'Pausa llarga';

  @override
  String get settingsLongBreakEvery => 'Pausa llarga després de';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions',
      one: '1 sessió',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Inicia les pauses automàticament';

  @override
  String get settingsSound => 'So de finalització';

  @override
  String get settingsDailyFocusTarget => 'Objectiu diari de concentració';

  @override
  String get settingsWeeklyFocusTarget => 'Objectiu setmanal de concentració';

  @override
  String get settingsNotifications => 'Notificacions';

  @override
  String get settingsNotificationsEnable => 'Permet els recordatoris';

  @override
  String get settingsQuietHours => 'Hores de silenci';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Els recordatoris d’hàbits, objectius i repassos se silencien de $start a $end';
  }

  @override
  String get settingsReviewReminder => 'Recordatori de repàs de targetes';

  @override
  String get settingsPermissionDenied =>
      'Les notificacions estan bloquejades a la configuració del sistema.';

  @override
  String get settingsPrivacy => 'Privadesa i dades';

  @override
  String get settingsPrivacyStatement =>
      'Les teves dades només es desen en aquest dispositiu i estan xifrades. No hi ha compte, ni analítiques ni seguiment.';

  @override
  String get settingsBackup => 'Crea una còpia de seguretat xifrada';

  @override
  String get settingsBackupDesc => 'Protegida amb una contrasenya que tries tu';

  @override
  String get settingsRestore => 'Restaura des d’una còpia de seguretat';

  @override
  String get settingsRestoreDesc => 'Substitueix totes les dades d’aquest dispositiu';

  @override
  String get settingsErase => 'Esborra totes les dades';

  @override
  String get settingsEraseDesc => 'Suprimeix definitivament tot el que hi ha en aquest dispositiu';

  @override
  String get settingsEraseConfirmTitle => 'Vols esborrar totes les dades?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Totes les tasques, notes, targetes, objectius, hàbits, esdeveniments i sessions se suprimiran definitivament. Escriu $word per confirmar-ho.';
  }

  @override
  String get settingsEraseWord => 'ESBORRA';

  @override
  String get settingsErased => 'S’han esborrat totes les dades';

  @override
  String get backupPassword => 'Contrasenya de la còpia';

  @override
  String get backupPasswordConfirm => 'Confirma la contrasenya';

  @override
  String backupPasswordHint(int count) {
    return 'Com a mínim $count caràcters. No es pot recuperar si la perds.';
  }

  @override
  String get backupPasswordMismatch => 'Les contrasenyes no coincideixen';

  @override
  String get backupPasswordShort => 'La contrasenya és massa curta';

  @override
  String get backupCreating => 'S’està xifrant la còpia…';

  @override
  String get backupCreated => 'Còpia de seguretat a punt per desar';

  @override
  String get backupRestoring => 'S’està verificant i restaurant…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han restaurat $count elements',
      one: 'S’ha restaurat 1 element',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Contrasenya incorrecta, o el fitxer s’ha modificat.';

  @override
  String get backupNotABackup => 'Aquest fitxer no és una còpia de seguretat de Deep Focus.';

  @override
  String get backupCorrupted => 'El fitxer de la còpia de seguretat està malmès.';

  @override
  String get backupNewer =>
      'Aquesta còpia la va fer una versió més nova de l’aplicació. Primer actualitza-la.';

  @override
  String get backupRestoreConfirmTitle => 'Vols substituir totes les dades?';

  @override
  String get backupRestoreConfirmBody =>
      'Tot el que hi ha ara en aquest dispositiu se substituirà per la còpia. Si la restauració falla, no canvia res.';

  @override
  String get settingsAbout => 'Quant a';

  @override
  String settingsVersion(String version) {
    return 'Versió $version';
  }

  @override
  String get settingsLicenses => 'Llicències de codi obert';

  @override
  String get settingsAssistant => 'Assistent';

  @override
  String get settingsAssistantEnable => 'Activa l’assistent';

  @override
  String get settingsDashboard => 'Seccions de l’inici';

  @override
  String get settingsTrash => 'Paperera';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'La paperera és buida';

  @override
  String get trashHint => 'Els elements suprimits es queden aquí fins que els eliminis.';

  @override
  String get trashTasks => 'Tasques';

  @override
  String get trashNotes => 'Notes';

  @override
  String get onboardWelcomeTitle => 'Et donem la benvinguda al teu espai de treball del futur';

  @override
  String get onboardWelcomeBody =>
      'Tasques, concentració, calendari, notes, targetes, objectius i hàbits: tot junt i bellament senzill.';

  @override
  String get onboardPrivateTitle => 'Privat per disseny';

  @override
  String get onboardPrivateBody =>
      'Tot es queda en aquest dispositiu, xifrat. Sense compte. Sense seguiment. Tu tens el control.';

  @override
  String get onboardLanguageTitle => 'Tria el teu idioma';

  @override
  String get onboardNotifTitle => 'Recordatoris amables';

  @override
  String get onboardNotifBody =>
      'Permet les notificacions per als recordatoris de tasques i els avisos de concentració. Ho pots canviar quan vulguis.';

  @override
  String get onboardGetStarted => 'Comença';

  @override
  String onboardStep(int current, int total) {
    return 'Pas $current de $total';
  }

  @override
  String get notifChannelReminders => 'Recordatoris';

  @override
  String get notifChannelRemindersDesc =>
      'Recordatoris de tasques, esdeveniments, hàbits i objectius';

  @override
  String get notifChannelFocus => 'Temporitzador de concentració';

  @override
  String get notifChannelFocusDesc => 'Avisos quan acaba una sessió de concentració o una pausa';

  @override
  String get notifTaskTitle => 'Recordatori de tasca';

  @override
  String get notifEventTitle => 'Esdeveniment proper';

  @override
  String notifEventBody(String title, String time) {
    return '$title a les $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sessió de concentració completada';

  @override
  String get notifFocusDoneBody => 'Molt bona feina. És hora de fer una pausa.';

  @override
  String get notifBreakDoneTitle => 'La pausa s’ha acabat';

  @override
  String get notifBreakDoneBody => 'A punt per a la sessió de concentració següent?';

  @override
  String get notifHabitTitle => 'Recordatori d’hàbit';

  @override
  String get notifReviewTitle => 'Les targetes estan a punt';

  @override
  String get notifReviewBody => 'Un repàs curt manté la memòria forta.';

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
  String get weekdaysShort => 'dl,dt,dc,dj,dv,ds,dg';

  @override
  String a11yProgress(int value) {
    return 'Progrés $value per cent';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioritat: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Color $index';
  }

  @override
  String get analyticsRangeLabel => 'Interval de temps';

  @override
  String get analyticsRefresh => 'Actualitza';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done de $total tasques amb data límit fetes a temps';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done de $total tasques fetes';
  }

  @override
  String get analyticsNoProjects => 'No hi ha projectes actius';

  @override
  String get analyticsNoFocus => 'No hi ha sessions de concentració en aquest interval';

  @override
  String get analyticsHabitsNone => 'No hi ha hàbits actius';

  @override
  String get analyticsRetentionNote => 'Proporció de targetes consolidades que has recordat';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'El temps lliure compta de $start a $end els dies laborables ($days), menys els esdeveniments amb hora. La feina estimada és la suma de les estimacions de les tasques obertes que vencen en els propers 7 dies.';
  }

  @override
  String get assistantWorkdaysMonFri => 'De dilluns a divendres';

  @override
  String get assistantWorkdaysSunThu => 'De diumenge a dijous';

  @override
  String get assistantWorkloadDayOff => 'Dia lliure';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planificat · $free lliure';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planificat des d’ara fins a les $end, al voltant dels esdeveniments d’avui. Primer les tasques endarrerides, després la prioritat, la data límit i l’estimació.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Programa com a blocs de temps';

  @override
  String get assistantScheduleConfirmTitle => 'Vols afegir blocs de temps al calendari?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’afegiran $count blocs de temps al calendari d’avui.',
      one: 'S’afegirà 1 bloc de temps al calendari d’avui.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han afegit $count blocs de temps',
      one: 'S’ha afegit 1 bloc de temps',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Ja és al teu calendari';

  @override
  String get assistantPlanTimeline => 'Hi cap avui';

  @override
  String get assistantNoEstimate => 'Afegeix una estimació per planificar-les';

  @override
  String get assistantNoNotes => 'Encara no hi ha notes. Escriu-ne una primer.';

  @override
  String get assistantNoteEmpty => 'Aquesta nota és buida.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han creat $count tasques',
      one: 'S’ha creat 1 tasca',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S’han creat $count targetes',
      one: 'S’ha creat 1 targeta',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Crea’n $count',
      one: 'Crea’n 1',
      zero: 'No hi ha res seleccionat',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Es reconeixen: caselles sense marcar «- [ ]» i línies que comencen per TODO: o To do:';

  @override
  String get assistantCardsHint =>
      'Es reconeixen: «terme: definició», «terme — definició» i parells de línies Q:/A:';

  @override
  String get assistantProviderHint =>
      'Fes servir qualsevol servei compatible amb OpenAI. La clau es queda a l’emmagatzematge segur d’aquest dispositiu i mai no s’inclou a les còpies de seguretat.';

  @override
  String get assistantEndpointHelp => 'Per exemple, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Deixa-ho en blanc per conservar la clau desada';

  @override
  String get assistantApiKeyRequired => 'Introdueix una clau de l’API';

  @override
  String get assistantProviderSaved => 'Proveïdor desat';

  @override
  String get assistantProviderRemoved => 'Proveïdor eliminat i clau suprimida';

  @override
  String get assistantRemoveProviderConfirm =>
      'Vols eliminar el proveïdor i suprimir la clau de l’API desada en aquest dispositiu?';

  @override
  String get assistantAskEveryTime => 'Pregunta abans de cada sol·licitud';

  @override
  String get assistantSummarizing => 'S’està resumint…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generat per $host. Revisa-ho abans de confiar-hi.';
  }

  @override
  String get assistantCopy => 'Copia';

  @override
  String get assistantCopied => 'Copiat';

  @override
  String get assistantConfigure => 'Configura el proveïdor';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'S’han mogut tots els esdeveniments d’aquesta sèrie';

  @override
  String get calendarEventReminder => 'Recordatori';

  @override
  String get calendarEventRepeat => 'Repetició';

  @override
  String get calendarEventColor => 'Color';

  @override
  String get calendarDefaultColor => 'Fes servir el color del tipus';

  @override
  String get calendarEventLinkedTask => 'Tasca vinculada';

  @override
  String get calendarEventNoTask => 'Cap tasca vinculada';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count esdeveniments',
      one: '1 esdeveniment',
      zero: 'Cap esdeveniment',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasques que vencen',
      one: '1 tasca que venç',
      zero: 'cap tasca que venci',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Afegeix un esdeveniment o un bloc de temps per planificar aquest dia.';

  @override
  String get calendarNow => 'Hora actual';

  @override
  String get calendarRecurring => 'Es repeteix';

  @override
  String get calendarEventNotFound => 'Aquest esdeveniment ja no existeix';

  @override
  String get calendarEventLocalTime => 'Les hores es mostren en el fus horari del dispositiu';

  @override
  String get calendarEventDeleted => 'Esdeveniment mogut a la paperera';

  @override
  String get calendarConflictMarker => 'Se solapa amb un altre esdeveniment';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote =>
      'Els canvis s’apliquen a tots els esdeveniments d’aquesta sèrie';

  @override
  String get calendarDragHintSeries =>
      'Arrossegar un esdeveniment que es repeteix mou tota la sèrie';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tasca que venç';
  }

  @override
  String get startupErrorTitle => 'No s’han pogut obrir les teves dades';

  @override
  String get startupErrorLocked =>
      'La clau de xifratge de les dades d’aquest dispositiu no està disponible. No s’ha suprimit res. Sovint ajuda reiniciar el dispositiu. Si fa poc l’has restaurat, restaura les dades des d’una còpia de seguretat xifrada.';

  @override
  String get startupErrorCipher =>
      'Aquest dispositiu no admet l’emmagatzematge xifrat que necessita l’aplicació. No s’ha desat res sense xifrar.';

  @override
  String get startupErrorRetry => 'Torna-ho a provar';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes pendents de repàs',
      one: '1 targeta pendent de repàs',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count pendents';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count noves';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Targetes consolidades: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Introdueix 0 o més';

  @override
  String get flashcardsSearchCards => 'Cerca targetes';

  @override
  String get flashcardsSearchEmpty => 'Cap targeta coincideix amb la cerca';

  @override
  String get flashcardsCardAdded => 'Targeta afegida';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Venç $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copia al porta-retalls';

  @override
  String get flashcardsExportTitle => 'Exporta la baralla';

  @override
  String get flashcardsDeleteDeck => 'Suprimeix la baralla';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, proper repàs d’aquí a $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pregunta: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Resposta: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Mostra la pregunta';

  @override
  String get flashcardsImportField => 'Targetes per importar';

  @override
  String get flashcardsNothingToStudy => 'No hi ha res per estudiar';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes a punt per estudiar',
      one: '1 targeta a punt per estudiar',
      zero: 'Cap targeta a punt',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Per valoració';

  @override
  String get flashcardsDeckNotFound => 'Aquesta baralla ja no està disponible.';

  @override
  String get focusSessionDeleted => 'Sessió suprimida';

  @override
  String get focusDeleteConfirm =>
      'Vols suprimir aquesta sessió de l’historial? El seu temps ja no comptarà per als teus objectius.';

  @override
  String get focusUnlinkTask => 'Elimina la tasca vinculada';

  @override
  String get focusNoteHint => 'En què has treballat?';

  @override
  String get focusTargetCaption => 'Mesurat a partir de les sessions desades';

  @override
  String get focusModeLabel => 'Mode del temporitzador';

  @override
  String focusUpNext(String phase) {
    return 'A continuació: $phase';
  }

  @override
  String get focusStopwatchHint => 'Compta cap amunt fins que l’aturis.';

  @override
  String get focusOpenHint => 'Sense límit de temps. Atura quan acabis.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Els recordatoris estan desactivats a la configuració. No rebràs cap avís quan acabi una sessió.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Tots';

  @override
  String get goalsFilterPeriod => 'Filtre de període';

  @override
  String get goalsFilterStatus => 'Filtre d’estat';

  @override
  String get goalsEmptyFiltered => 'Cap objectiu coincideix amb aquest filtre';

  @override
  String goalsDueOn(String date) {
    return 'Venç $date';
  }

  @override
  String get goalsDeadline => 'Data límit (opcional)';

  @override
  String get goalsNoDeadline => 'Sense data límit';

  @override
  String get goalsSetDeadline => 'Defineix la data límit';

  @override
  String get goalsRemoveDeadline => 'Elimina la data límit';

  @override
  String get goalsDescription => 'Descripció (opcional)';

  @override
  String get goalsTitleLabel => 'Títol';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Meta assolida';

  @override
  String get goalsLogged => 'Progrés registrat';

  @override
  String get goalsEntryDeleted => 'Entrada eliminada';

  @override
  String get goalsDeleteEntry => 'Elimina l’entrada';

  @override
  String get goalsDeleted => 'Objectiu suprimit';

  @override
  String get goalsMarkActive => 'Marca com a actiu';

  @override
  String get goalsNotFound => 'Aquest objectiu ja no està disponible';

  @override
  String get goalsLinkTask => 'Vincula una tasca';

  @override
  String get goalsNoLinkedTasks => 'Encara no hi ha tasques vinculades';

  @override
  String get goalsUnlinkTask => 'Desvincula la tasca';

  @override
  String get goalsTaskOpen => 'Encara no s’ha completat';

  @override
  String get goalsTaskLinked => 'Tasca vinculada';

  @override
  String get goalsTaskUnlinked => 'Tasca desvinculada';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasques vinculades completades',
      one: '1 tasca vinculada completada',
    );
    return 'Inclou $_temp0 en aquest període';
  }

  @override
  String get goalsHistoryAllTime =>
      'Les entrades de períodes anteriors es conserven aquí, però només compten per al seu període.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done de $total fets avui';
  }

  @override
  String get habitsNothingToday => 'No hi ha cap hàbit programat per avui';

  @override
  String get habitsDecrease => 'Treu una marca';

  @override
  String get habitsResetToday => 'Restableix avui';

  @override
  String get habitsCheckInHint => 'Mantén premut per ajustar';

  @override
  String get habitsName => 'Nom';

  @override
  String get habitsColor => 'Color';

  @override
  String get habitsValidationDays => 'Tria com a mínim un dia';

  @override
  String habitsReminderAt(String time) {
    return 'Cada dia a les $time';
  }

  @override
  String get habitsSetReminder => 'Defineix l’hora del recordatori';

  @override
  String get habitsRemoveReminder => 'Elimina el recordatori';

  @override
  String get habitsReminderNote =>
      'Els recordatoris apareixen els dies programats si les notificacions estan permeses.';

  @override
  String get habitsArchived => 'Hàbit arxivat';

  @override
  String get habitsNotFound => 'Aquest hàbit ja no està disponible';

  @override
  String get habitsLast30 => 'Últims 30 dies';

  @override
  String get habitsConsistencyNone => 'Encara no hi ha prou dades';

  @override
  String get habitsCalendar => 'Historial de marques';

  @override
  String get habitsCalendarHint => 'Toca un dia per corregir-lo.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count de $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Marques dels últims 90 dies. Constància $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Marques dels últims 90 dies. Encara no hi ha prou dades.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Els dies en pausa no afecten la ratxa.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arxiva l’hàbit';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cops al dia',
      one: 'Un cop al dia',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Altres notes';

  @override
  String get notesAllNotebooks => 'Totes les llibretes';

  @override
  String get notesNotebookName => 'Nom de la llibreta';

  @override
  String get notesNotebookColor => 'Color';

  @override
  String get notesDeleteNotebook => 'Suprimeix la llibreta';

  @override
  String get notesDeleteNotebookMessage =>
      'La llibreta s’elimina. Les notes es conserven i apareixen a Totes les llibretes.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fixa les notes importants perquè es quedin a dalt.';

  @override
  String get notesEmptyFavorites => 'Les notes que marquis com a preferides apareixeran aquí.';

  @override
  String get notesEmptyArchived => 'Les notes arxivades apareixen aquí.';

  @override
  String get notesEmptyFiltered => 'Cap nota coincideix amb aquests filtres.';

  @override
  String get notesArchivedSnack => 'Nota arxivada';

  @override
  String get notesUnarchivedSnack => 'La nota ha tornat a les teves notes';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done de $total fets';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Format';

  @override
  String get notesWrite => 'Escriu';

  @override
  String get notesPreviewEmpty => 'Encara no hi ha res per previsualitzar.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Encara no hi ha cap altra nota que hi enllaci. Enllaça-hi amb [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Posa un títol a aquesta nota perquè altres notes hi puguin enllaçar.';

  @override
  String get notesLinkedTasksEmpty => 'No hi ha cap tasca vinculada a aquesta nota.';

  @override
  String notesLinkMissing(String title) {
    return 'Encara no hi ha cap nota titulada «$title».';
  }

  @override
  String get notesNotFound => 'Aquesta nota ja no existeix.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Element de la llista: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Obre la nota $title';
  }

  @override
  String get notesTaskDone => 'Completada';

  @override
  String get notifTimerDoneBody => 'El temps que has definit s’ha esgotat.';

  @override
  String get onboardingPrivatePointDevice => 'Desat només en aquest dispositiu, xifrat';

  @override
  String get onboardingPrivatePointAccount => 'No cal cap compte';

  @override
  String get onboardingPrivatePointTracking => 'Sense analítiques ni seguiment';

  @override
  String get onboardingLanguageBody => 'Ho pots canviar quan vulguis a la configuració.';

  @override
  String get onboardingNext => 'Següent';

  @override
  String get projectsActive => 'Actius';

  @override
  String get projectNameHint => 'p. ex. Llançament de producte';

  @override
  String get projectGoalHint => 'Com és el resultat acabat?';

  @override
  String get projectNoDeadline => 'Sense data límit';

  @override
  String get projectTasksOpen => 'Tasques obertes';

  @override
  String get projectTasksCompleted => 'Tasques completades';

  @override
  String get projectAddTask => 'Afegeix una tasca al projecte';

  @override
  String get projectAddNote => 'Nota nova del projecte';

  @override
  String get projectLinkedNotes => 'Notes';

  @override
  String get projectNoTasks => 'Encara no hi ha tasques en aquest projecte';

  @override
  String get projectArchivedBadge => 'Arxivat';

  @override
  String get projectDeleted => 'Projecte mogut a la paperera';

  @override
  String get projectDeleteMessage => 'Les tasques es queden a la llista sense projecte.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent per cent completat';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultats',
      one: '1 resultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtra per tipus';

  @override
  String searchRecentTap(String query) {
    return 'Torna a cercar $query';
  }

  @override
  String get settingsLanguageHint =>
      'Tria l’idioma de tota l’aplicació. Els noms es mostren en el seu propi idioma.';

  @override
  String get settingsThemeHint => 'Clar, fosc o segons el sistema';

  @override
  String settingsDecrease(String setting) {
    return 'Redueix $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Augmenta $setting';
  }

  @override
  String get settingsQuietStart => 'Comença';

  @override
  String get settingsQuietEnd => 'Acaba';

  @override
  String get settingsNotificationsHint =>
      'Això desa la teva preferència a l’aplicació. És possible que el sistema també demani permís.';

  @override
  String get settingsDashboardHint =>
      'Arrossega per reordenar. Desactiva les seccions que no necessitis.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reordena $section';
  }

  @override
  String get settingsDashboardReset => 'Restaura l’ordre per defecte';

  @override
  String get settingsAssistantDesc =>
      'Ajuda opcional per planificar. Res no surt d’aquest dispositiu tret que connectis un proveïdor.';

  @override
  String get settingsAssistantSetup => 'Assistent i configuració del proveïdor';

  @override
  String get settingsTrashDesc => 'Restaura o suprimeix definitivament els elements eliminats';

  @override
  String get settingsEraseFirstBody =>
      'No es pot desfer. Considera crear primer una còpia de seguretat xifrada.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Escriu $word';
  }

  @override
  String get settingsEraseFailed => 'No s’han pogut esborrar les dades. No s’ha canviat res.';

  @override
  String get settingsAboutTagline => 'Un espai de productivitat privat que funciona en local.';

  @override
  String get backupShowPassword => 'Mostra la contrasenya';

  @override
  String get backupHidePassword => 'Amaga la contrasenya';

  @override
  String get backupSaved => 'Còpia de seguretat desada';

  @override
  String get backupFailed =>
      'No s’ha pogut crear la còpia de seguretat. Les teves dades no han canviat.';

  @override
  String get backupReadFailed => 'No s’ha pogut llegir el fitxer seleccionat.';

  @override
  String get backupRestoreFailed => 'La restauració ha fallat. No s’ha canviat res.';

  @override
  String get backupShareSubject => 'Còpia de seguretat xifrada de Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count dies',
      one: 'Cada dia',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count setmanes',
      one: 'Cada setmana',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count mesos',
      one: 'Cada mes',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count anys',
      one: 'Cada any',
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
    return 'els $days';
  }

  @override
  String get repeatEndsLabel => 'Acaba';

  @override
  String get repeatEndsAfter => 'Després d’un nombre de vegades';

  @override
  String get repeatCountLabel => 'Repeticions';

  @override
  String get reminderNone => 'Sense recordatori';

  @override
  String get reminderCustomTime => 'A una hora concreta';

  @override
  String get a11yDecrease => 'Redueix';

  @override
  String get a11yIncrease => 'Augmenta';

  @override
  String get pickTaskTitle => 'Tria una tasca';

  @override
  String get pickTaskEmpty => 'No hi ha tasques obertes';

  @override
  String get tasksSearchTooltip => 'Cerca tasques';

  @override
  String get tasksSectionOverdue => 'Endarrerides';

  @override
  String get tasksSectionToday => 'Avui';

  @override
  String get tasksRecurringSemantics => 'Es repeteix';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioritat mínima';

  @override
  String get tasksFilterCategory => 'Categoria';

  @override
  String get tasksFilterAnyCategory => 'Qualsevol categoria';

  @override
  String get tasksFilterLabel => 'Etiqueta';

  @override
  String get tasksFilterAnyLabel => 'Qualsevol etiqueta';

  @override
  String get tasksFilterReset => 'Restableix els filtres';

  @override
  String get tasksViewByProject => 'Per projecte';

  @override
  String get tasksViewByPriority => 'Per prioritat';

  @override
  String get tasksViewByCategory => 'Per categoria';

  @override
  String get tasksGroupNoCategory => 'Sense categoria';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasques',
      one: '1 tasca',
    );
    return 'Bloquejada per $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Aquesta tasca està bloquejada per tasques sense acabar. Vols completar-la igualment?';

  @override
  String get taskStartFocus => 'Concentra’t en aquesta tasca';

  @override
  String get taskRemoveDate => 'Elimina la data';

  @override
  String get taskAllDay => 'Sense hora concreta';

  @override
  String get taskSaved => 'Tasca desada';

  @override
  String get taskCreated => 'Tasca creada';

  @override
  String get taskReminderNeedsDue => 'Defineix una data límit per fer servir recordatoris relatius';

  @override
  String get taskLabelName => 'Nom de l’etiqueta';

  @override
  String get taskPlanning => 'Planificació';

  @override
  String get taskOrganize => 'Organització';

  @override
  String get taskBreakdown => 'Desglossament';

  @override
  String get trashDeleteTaskTitle => 'Vols suprimir aquesta tasca definitivament?';

  @override
  String get trashDeleteNoteTitle => 'Vols suprimir aquesta nota definitivament?';

  @override
  String get trashDeleteBody => 'No es pot desfer.';

  @override
  String get trashEmptyTitle => 'Vols buidar la paperera?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se suprimiran $count elements definitivament.',
      one: 'Se suprimirà 1 element definitivament.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restaurat';

  @override
  String get trashPurged => 'Suprimit definitivament';

  @override
  String trashDeletedOn(String date) {
    return 'Suprimit el $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elements',
      one: '1 element',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Llegeix en veu alta';

  @override
  String get flashcardsTtsUnavailable =>
      'La conversió de text a veu no està disponible en aquest dispositiu.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'No hi ha cap veu instal·lada per a aquest idioma. Afegeix-ne una a la configuració de text a veu d’Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Espurna',
      'rocket': 'Coet',
      'book': 'Llibre',
      'work': 'Feina',
      'home': 'Casa',
      'heart': 'Cor',
      'code': 'Codi',
      'palette': 'Paleta',
      'fitness': 'Fitness',
      'school': 'Escola',
      'travel': 'Viatges',
      'money': 'Estalvis',
      'other': 'Icona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Més camps';

  @override
  String get cardFieldExample => 'Exemple';

  @override
  String get cardFieldExplanation => 'Explicació';

  @override
  String get cardFieldPronunciation => 'Pronunciació';

  @override
  String get cardFieldNotes => 'Notes addicionals';

  @override
  String get projectMilestones => 'Fites';

  @override
  String get milestoneAdd => 'Afegeix una fita';

  @override
  String get milestoneEdit => 'Edita la fita';

  @override
  String get milestoneTitleLabel => 'Fita';

  @override
  String get milestoneNoDate => 'Sense data';

  @override
  String get milestonesEmpty =>
      'Encara no hi ha fites. Afegeix punts de control amb dates per seguir el projecte al calendari.';

  @override
  String get milestoneDeleted => 'Fita suprimida';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marca la fita «$title» com a feta';
  }

  @override
  String calendarMilestone(String project) {
    return 'Fita · $project';
  }

  @override
  String get tasksViewInbox => 'Safata d’entrada';

  @override
  String get tasksViewArchived => 'Arxivades';

  @override
  String get tasksEmptyInbox =>
      'Les tasques sense projecte ni data arriben aquí. Ordena-les quan tinguis un minut.';

  @override
  String get tasksEmptyArchived =>
      'Les tasques arxivades es guarden aquí, fora de les llistes i dels recordatoris.';

  @override
  String get taskArchivedBadge => 'Arxivada';

  @override
  String get taskStatusInProgress => 'En curs';

  @override
  String get taskArchived => 'Tasca arxivada';

  @override
  String get taskUnarchived => 'Tasca restaurada de l’arxiu';

  @override
  String get focusPlanTitle => 'Pla de sessions';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sessions de concentració';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pausa llarga després de';

  @override
  String get focusPlanSkipLastBreak => 'Omet l’última pausa';

  @override
  String get focusPlanAutoBreaks => 'Inicia les pauses automàticament';

  @override
  String get focusPlanAutoFocus => 'Inicia la concentració automàticament després d’una pausa';

  @override
  String get focusPlanSave => 'Desa el pla';

  @override
  String get focusPlanNameHint => 'p. ex. Preparació d’examen';

  @override
  String get focusPlanSaved => 'Pla desat';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min de concentració, $rest min de pausa';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Redueix $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Augmenta $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sessió $current de $total';
  }

  @override
  String get focusSeriesComplete => 'Sèrie completada. Molt bé!';

  @override
  String get filterAll => 'Totes';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importades · $duplicates duplicades omeses · $invalid files incompletes';
  }

  @override
  String get flashcardsSuspend => 'Suspèn la targeta';

  @override
  String get flashcardsResume => 'Reprèn la targeta';

  @override
  String get flashcardsSuspended => 'Targeta suspesa: no es programarà';

  @override
  String get flashcardsResumed => 'Targeta represa';

  @override
  String get flashcardsSuspendedFilter => 'Suspesa';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown de $total targetes';
  }

  @override
  String get flashcardsImportFile => 'Des d’un fitxer';

  @override
  String get speechTitle => 'Veu';

  @override
  String get speechAppLanguage => 'Idioma de l’aplicació';

  @override
  String get speechFrontLanguage => 'Idioma de l’anvers';

  @override
  String get speechBackLanguage => 'Idioma del revers';

  @override
  String get speechRepeat => 'Repeteix cada lectura';

  @override
  String get speechRate => 'Velocitat';

  @override
  String get speechAutoRead => 'Llegeix la pregunta automàticament';

  @override
  String get speechHint =>
      'Fa servir les veus instal·lades en aquest dispositiu, sense connexió. Si un idioma no té veu, t’ho dirà i no se’n farà servir cap altra.';

  @override
  String get studyHowTitle => 'Com vols estudiar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repassa $count targetes',
      one: 'Repassa 1 targeta',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Practica totes les targetes (la programació no canvia)';

  @override
  String get studyPracticeMistakes => 'Practica els errors recents';

  @override
  String get studyPracticeHint =>
      'Les rondes de pràctica mai no canvien quan toca repassar les targetes. El repàs actualitza la programació.';

  @override
  String get studyModeClassic => 'Clàssic';

  @override
  String get studyModeReverse => 'Invers';

  @override
  String get studyModeMixed => 'En tots dos sentits';

  @override
  String get studyModeTyped => 'Escriu la resposta';

  @override
  String get studyModeChoice => 'Opció múltiple';

  @override
  String get studyModeListening => 'Escolta';

  @override
  String get studyPractice => 'pràctica';

  @override
  String get studyNoMistakes => 'No hi ha errors recents en aquesta baralla. Molt bé!';

  @override
  String get studyTypeAnswer => 'Escriu la teva resposta';

  @override
  String get studyCheck => 'Comprova';

  @override
  String get studyKnewIt => 'Ho sabia';

  @override
  String get studyDidntKnow => 'No ho sabia';

  @override
  String studyMistakes(int count) {
    return 'Fallades ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repeteix les targetes fallades';

  @override
  String get studyCorrect => 'Correcte';

  @override
  String get studyAlmost => 'Gairebé: revisa l’ortografia';

  @override
  String get studyWrong => 'No del tot';

  @override
  String get studyShowText => 'Mostra el text';

  @override
  String get flashcardsImportFileFailed =>
      'No s’ha pogut obrir el fitxer. En lloc d’això, pots enganxar-ne el contingut.';

  @override
  String get studyNoMatchingCards => 'Encara no hi ha cap targeta per a aquesta selecció.';

  @override
  String get studyPracticeNew => 'Només noves';

  @override
  String get studyPracticeHard => 'Targetes difícils';

  @override
  String get studyPracticeFavorites => 'Preferides';

  @override
  String get studySessionSize => 'Targetes per sessió';

  @override
  String get studySessionAll => 'Totes';

  @override
  String get studyOrder => 'Ordre';

  @override
  String get studyOrderDue => 'Primer les més endarrerides';

  @override
  String get studyOrderRandom => 'Aleatori';

  @override
  String get studyOrderHardest => 'Primer les més difícils';

  @override
  String get flashcardsHard => 'Difícil';

  @override
  String get flashcardsFavorites => 'Preferides';

  @override
  String get flashcardsFavorite => 'Afegeix a preferides';

  @override
  String get flashcardsUnfavorite => 'Treu de preferides';

  @override
  String get flashcardsDuplicate => 'Duplica';

  @override
  String get flashcardsMoveTo => 'Mou a la baralla';

  @override
  String get flashcardsNoOtherDeck => 'Crea primer una altra baralla.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes mogudes',
      one: 'Targeta moguda',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Afegeix una etiqueta';

  @override
  String get flashcardsTagHint => 'p. ex. verbs';

  @override
  String flashcardsSelected(int count) {
    return '$count seleccionades';
  }

  @override
  String get flashcardsSelectAll => 'Selecciona totes les visibles';

  @override
  String flashcardsSelectCard(String front) {
    return 'Selecciona $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Record $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Possible duplicat';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Aquesta baralla ja té «$front» → «$back». Vols desar-la igualment?';
  }

  @override
  String get flashcardsSaveAnyway => 'Desa igualment';

  @override
  String get flashcardsStats => 'Estadístiques';

  @override
  String get flashcardsStatTotal => 'Targetes';

  @override
  String get flashcardsStatLearning => 'En aprenentatge';

  @override
  String get flashcardsStatMatureCaption => 'Recordades 21+ dies';

  @override
  String get flashcardsStatReviewsToday => 'Repassos d’avui';

  @override
  String get flashcardsStatCorrect => 'Respostes correctes';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Últims $days dies';
  }

  @override
  String get flashcardsStatForget => 'Taxa d’oblit';

  @override
  String get flashcardsStatForgetCaption => '«De nou» en targetes apreses';

  @override
  String get flashcardsStatRecall => 'Record ara';

  @override
  String get flashcardsStatRecallCaption => 'Estimació FSRS, targetes repassades';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repassos per dia · $count en total';
  }

  @override
  String get flashcardsStatHistory => 'Últimes respostes';

  @override
  String get flashcardsStatNoHistory =>
      'Encara no hi ha repassos. Estudia la baralla per veure aquí el teu progrés.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Llegeix $field en veu alta';
  }

  @override
  String get speechVoice => 'Veu';

  @override
  String get speechVoiceDefault => 'Automàtica';

  @override
  String get speechVoiceOnline => 'cal internet';

  @override
  String get speechTest => 'Prova la veu';

  @override
  String get importNext => 'Previsualització';

  @override
  String get importPreviewTitle => 'Associa columnes a camps';

  @override
  String get importIgnoreColumn => 'Ignora';

  @override
  String importColumn(int n) {
    return 'Columna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready targetes a punt · s’ometran $invalid files incompletes';
  }

  @override
  String get importNeedFrontBack => 'Tria quines columnes són l’anvers i el revers.';

  @override
  String get actionMoveUp => 'Mou amunt';

  @override
  String get actionMoveDown => 'Mou avall';

  @override
  String get flashcardsLayoutTitle => 'Disseny de la targeta';

  @override
  String get flashcardsLayoutHint =>
      'Canvia el nom, amaga o reordena els camps addicionals d’aquesta baralla. El contingut de les targetes no canvia mai.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Mostra $field en estudiar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Revela la resposta pas a pas';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Primer apareix el revers; cada camp addicional s’obre amb un toc.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Mostra $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Aquest fitxer supera els $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imatge';

  @override
  String get flashcardsAudio => 'Àudio';

  @override
  String get flashcardsAddImage => 'Afegeix una imatge';

  @override
  String get flashcardsAddAudio => 'Afegeix àudio';

  @override
  String get flashcardsPlayAudio => 'Reprodueix l’enregistrament';

  @override
  String get flashcardsAudioUnavailable =>
      'Aquest enregistrament no es pot reproduir en aquest dispositiu.';

  @override
  String get flashcardsCustomFields => 'Els teus camps';

  @override
  String get flashcardsTemplates => 'Plantilles';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Camp $n';
  }

  @override
  String get flashcardsAddField => 'Afegeix un camp';

  @override
  String get flashcardsFieldName => 'Nom del camp';

  @override
  String get flashcardsFieldLangDefault => 'Idioma de la cara';

  @override
  String get flashcardsTemplateConfirm =>
      'La plantilla defineix com es mostren els camps i n’afegeix els seus. Les teves targetes i els camps existents no canvien.';

  @override
  String get flashcardsApplyTemplate => 'Aplica';

  @override
  String get templateVocabulary => 'Vocabulari';

  @override
  String get templateTwoTranslations => 'Paraula amb dues traduccions';

  @override
  String get templateQuestionAnswer => 'Pregunta i resposta';

  @override
  String get templateDefinition => 'Terme i definició';

  @override
  String get templateGrammar => 'Regla gramatical';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Segona traducció';

  @override
  String get templateFieldSynonyms => 'Sinònims';

  @override
  String get templateFieldRule => 'Regla';

  @override
  String get deckCategory => 'Nivell o tema';

  @override
  String get deckCategoryHint => 'p. ex. A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Cerca a totes les targetes';

  @override
  String get flashcardsSearchAllHint => 'Paraula, traducció, exemple, nota, etiqueta…';

  @override
  String get flashcardsAllDecks => 'Totes les baralles';

  @override
  String get flashcardsAllLanguages => 'Tots els idiomes';

  @override
  String get flashcardsLangUnset => 'Idioma no definit';

  @override
  String get flashcardsLevelUnset => 'Sense nivell ni tema';

  @override
  String get flashcardsByLanguage => 'Progrés per idioma';

  @override
  String get flashcardsByLevel => 'Progrés per nivell o tema';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks baralles · $cards targetes · $mature consolidades · $due pendents · $correct correctes (30 dies)';
  }

  @override
  String get flashcardsRecord => 'Enregistra';

  @override
  String get flashcardsRecording => 'S’està enregistrant…';

  @override
  String get flashcardsRecordStop => 'Atura i conserva';

  @override
  String get flashcardsMicDenied =>
      'L’accés al micròfon està desactivat. Permet-lo a la configuració del sistema per enregistrar.';

  @override
  String get flashcardsRecordFailed => 'L’enregistrament no està disponible en aquest dispositiu.';

  @override
  String get soundsTitle => 'Sons';

  @override
  String get soundsNature => 'Natura';

  @override
  String get soundsNoise => 'Soroll per concentrar-se';

  @override
  String get soundRain => 'Pluja';

  @override
  String get soundStorm => 'Tempesta';

  @override
  String get soundRiver => 'Riu';

  @override
  String get soundOcean => 'Onades del mar';

  @override
  String get soundFire => 'Foguera';

  @override
  String get soundForest => 'Ocells del bosc';

  @override
  String get soundNight => 'Nit d’estiu';

  @override
  String get soundWhite => 'Soroll blanc';

  @override
  String get soundPink => 'Soroll rosa';

  @override
  String get soundBrown => 'Soroll marró';

  @override
  String get soundsPlay => 'Reprodueix';

  @override
  String get soundsSleep => 'Temporitzador de son';

  @override
  String get soundsSleepOff => 'Desactivat';

  @override
  String soundsSleepAt(String time) {
    return 'S’atura a les $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Es poden reproduir fins a $count sons alhora.';
  }

  @override
  String get soundsHint =>
      'Toca un so per començar. Barreja’n uns quants i ajusta el volum de cadascun.';

  @override
  String get soundsMixer => 'Barreja';

  @override
  String soundsVolumeOf(String name) {
    return 'Volum de $name';
  }

  @override
  String get soundsChannel => 'Sons de la natura';

  @override
  String get settingsEndTone => 'So de final del temporitzador';

  @override
  String get toneGentle => 'Pitets suaus';

  @override
  String get toneBeeps => 'Pitets';

  @override
  String get toneWood => 'Cop a la fusta';

  @override
  String get toneBird => 'Cant d’ocell';

  @override
  String get toneStream => 'Rierol';

  @override
  String get toneSystem => 'So del telèfon';

  @override
  String get speechOnPhone => 'En aquest telèfon';

  @override
  String get speechAllLanguages => 'Tots els idiomes';

  @override
  String get speechSearchLanguage => 'Cerca idiomes';

  @override
  String get speechGetVoices => 'Baixa més veus';

  @override
  String get speechGetVoicesHint =>
      'Les veus dels idiomes que no en tenen es poden baixar a la configuració de veu del telèfon.';

  @override
  String get speechSettingsFailed => 'No s’ha pogut obrir la configuració de veu d’aquest telèfon.';

  @override
  String get speechVoiceMissing => 'Cap veu instal·lada';

  @override
  String get speechPause => 'Pausa entre repeticions';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Llegeix l’exemple amb la resposta';

  @override
  String get flashListen => 'Escolta';

  @override
  String get flashListenNext => 'Targeta següent';

  @override
  String get flashListenEmpty => 'No hi ha targetes per escoltar.';

  @override
  String get flashViewTable => 'Taula';

  @override
  String get flashViewCards => 'Targetes';

  @override
  String get flashSwapSides => 'Intercanvia les columnes';

  @override
  String get flashSort => 'Ordena';

  @override
  String get flashSortNewest => 'Primer les més noves';

  @override
  String get flashSortAlpha => 'De la A a la Z';

  @override
  String get flashSortDue => 'Primer les pendents';

  @override
  String get flashSortHard => 'Primer les més difícils';

  @override
  String get flashPasteCards => 'Enganxa targetes';

  @override
  String get flashClipboardEmpty => 'El porta-retalls no té text.';

  @override
  String get flashMenuAdd => 'Afegeix targetes';

  @override
  String get flashMenuDeck => 'Baralla';

  @override
  String get flashToday => 'Avui';

  @override
  String get flashStudyNow => 'Estudia';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes respostes',
      one: '1 targeta resposta',
      zero: 'Cap targeta resposta',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Pluja al bosc';

  @override
  String get autoBackupTitle => 'Còpies de seguretat automàtiques';

  @override
  String get autoBackupDesc => 'Cada dia en aquest telèfon; es conserven les 7 últimes';

  @override
  String get autoBackupHint =>
      'Aquestes còpies es queden en aquest telèfon i s’eliminen si desinstal·les l’aplicació. Per canviar de telèfon, fes servir «Còpia de seguretat» per desar un fitxer.';

  @override
  String get autoBackupNone => 'Encara no hi ha cap còpia automàtica. La primera es fa avui.';

  @override
  String get autoBackupRestore => 'Restaura';

  @override
  String autoBackupConfirm(String date) {
    return 'Vols substituir totes les dades actuals per la còpia del $date?';
  }

  @override
  String get autoBackupRestored => 'Restaurat.';

  @override
  String get errorLogTitle => 'Registre d’errors';

  @override
  String get errorLogHint =>
      'Si alguna cosa va malament, s’anota aquí: només el tipus d’error i on és al codi, mai el teu contingut. Comparteix-lo per ajudar a solucionar el problema.';

  @override
  String get errorLogEmpty => 'No s’ha registrat cap error.';

  @override
  String get errorLogClear => 'Esborra';

  @override
  String get soundsWithFocus => 'Reprodueix amb les sessions de concentració';

  @override
  String get soundsWithFocusHint =>
      'La barreja comença amb una sessió de concentració i es posa en pausa a les pauses.';

  @override
  String get soundsSavedMixes => 'Barreges desades';

  @override
  String get soundsSaveMix => 'Desa aquesta barreja';

  @override
  String get soundsMixNameHint => 'Nom, p. ex. Biblioteca plujosa';

  @override
  String soundsDeleteMix(String name) {
    return 'Vols suprimir la barreja «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Un cop al dia, només quan hi ha targetes per repassar';

  @override
  String get settingsReviewTime => 'Hora del recordatori';

  @override
  String get shortcutFocus => 'Concentració';

  @override
  String get shortcutNewTask => 'Tasca nova';

  @override
  String get shortcutReview => 'Repassa targetes';

  @override
  String get shortcutSounds => 'Sons de la natura';

  @override
  String get myDayTitle => 'Comença el dia';

  @override
  String get myDayHint => 'El teu dia d’un cop d’ull i, després, un toc per concentrar-te';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasques per avui',
      one: '1 tasca per avui',
      zero: 'Cap tasca per avui',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Avui no hi ha més esdeveniments';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Següent: $title a les $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Queden $count hàbits',
      one: 'Queda 1 hàbit',
      zero: 'Tots els hàbits fets',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Comença amb una sessió de concentració';

  @override
  String get hijriMonth1 => 'Muhàrram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi-al-awwal';

  @override
  String get hijriMonth4 => 'Rabi-ath-thani';

  @override
  String get hijriMonth5 => 'Jumada-al-ula';

  @override
  String get hijriMonth6 => 'Jumada-al-akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Xaban';

  @override
  String get hijriMonth9 => 'Ramadà';

  @override
  String get hijriMonth10 => 'Xawwal';

  @override
  String get hijriMonth11 => 'Dhu-l-qada';

  @override
  String get hijriMonth12 => 'Dhu-l-hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Dates de l’hègira';

  @override
  String get settingsHijriHint => 'Es mostren al calendari i a la pantalla d’inici (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done de $goal targetes avui';
  }

  @override
  String get studyGoalReached => 'Objectiu diari assolit. Molt bé!';

  @override
  String get studyWeekTitle => 'La teva setmana';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count targetes respostes en 7 dies',
      one: '1 targeta resposta en 7 dies',
      zero: 'Cap targeta resposta en 7 dies',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration de concentració en 7 dies';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Ratxa: $current · Millor: $best';
  }

  @override
  String get studyGoalTitle => 'Objectiu diari (targetes)';

  @override
  String get studyGoalOff => 'Desactivat';

  @override
  String get focusDndTitle => 'No molestis mentre et concentres';

  @override
  String get focusDndHint => 'S’activa a cada sessió de concentració i es desactiva a la pausa';

  @override
  String get focusDndNeedsAccess =>
      'Permet l’accés a la configuració del telèfon per fer-ho servir';

  @override
  String get voiceInput => 'Dicta';

  @override
  String get voiceInputPrompt => 'Parla ara';

  @override
  String get voiceInputUnavailable =>
      'L’entrada de veu no està disponible en aquest telèfon. Instal·la o activa un servei de veu (per exemple, Reconeixement i síntesi de veu de Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Sortida del sol';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Magrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Lliga Musulmana Mundial';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, la Meca';

  @override
  String get prayerMethodEgypt => 'Autoritat General Egípcia';

  @override
  String get prayerMethodJordan => 'Jordània, Ministeri d’Awqaf';

  @override
  String get prayerMethodKarachi => 'Universitat de Ciències Islàmiques, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Regió del Golf';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turquia, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malàisia, Indonèsia';

  @override
  String get prayerMethodFrance => 'França (12°)';

  @override
  String get prayerMethodRussia => 'Rússia, Administració Espiritual';

  @override
  String prayerNotifTitle(String name) {
    return 'Hora de $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Hora de pregària · $time';
  }

  @override
  String get prayerTitle => 'Hores de pregària';

  @override
  String get prayerOffHint =>
      'Tria la teva ciutat per veure les hores de pregària. Es calculen al telèfon; no cal accés a la ubicació.';

  @override
  String get prayerChooseCity => 'Tria una ciutat';

  @override
  String get prayerCity => 'Ciutat';

  @override
  String get prayerCitySearch => 'Cerca una ciutat';

  @override
  String get prayerMethod => 'Mètode de càlcul';

  @override
  String get prayerHanafiAsr => 'Asr hanafita (hora més tardana)';

  @override
  String get prayerReminders => 'Avisa a cada hora de pregària';

  @override
  String get prayerPauseFocus => 'Posa en pausa la concentració a l’hora de pregària';

  @override
  String get prayerPauseFocusHint =>
      'La sessió en curs es posa en pausa; continua després de la pregària';

  @override
  String get prayerTurnOff => 'Desactiva les hores de pregària';

  @override
  String get prayerAccuracyNote =>
      'Les hores calculades poden variar uns minuts respecte a la mesquita local.';

  @override
  String prayerNext(String name, String time) {
    return '$name a les $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Aquest fitxer d’Anki fa servir el format més nou. A Anki, torna’l a exportar amb «Support older Anki versions» activat i després importa aquell fitxer.';

  @override
  String get importTemplate => 'Plantilla de full de càlcul';

  @override
  String get importTemplateFront => 'poma';

  @override
  String get importTemplateBack => 'una fruita rodona';

  @override
  String get importTemplateExample => 'Cada dia em menjo una poma.';

  @override
  String get importTemplateTag => 'menjar';

  @override
  String get starterTitle => 'Baralles inicials';

  @override
  String get starterHint =>
      'Afegeix-ne una per començar a estudiar de seguida. Després la pots editar o suprimir.';

  @override
  String get starterAdd => 'Afegeix';

  @override
  String get starterWords => 'Paraules quotidianes en anglès (àrab)';

  @override
  String get starterCapitals => 'Capitals del món';

  @override
  String get starterElements => 'Elements químics';

  @override
  String get settingsAccent => 'Color d’èmfasi';

  @override
  String get accentViolet => 'Violeta';

  @override
  String get accentBlue => 'Blau';

  @override
  String get accentTeal => 'Verd blavós';

  @override
  String get accentGreen => 'Verd';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Ambre';

  @override
  String get settingsFlashTextSize => 'Mida del text de les targetes';

  @override
  String get settingsFlashTextSample => 'Exemple';

  @override
  String get widgetStartFocus => 'Toca per concentrar-te';

  @override
  String widgetFocusUntil(String time) {
    return 'Concentració fins a les $time';
  }

  @override
  String get widgetNoCardsDue => 'Targetes: tot fet';

  @override
  String get faqMyDayQ => 'Què fa «Comença el dia»?';

  @override
  String get faqMyDayA =>
      'Un cop al dia la pantalla d’inici te’l proposa: veus les tasques d’avui, el proper esdeveniment, els hàbits pendents i les targetes per repassar, i comences una sessió de concentració amb un toc. Mantén premuda la icona de l’aplicació per a accions ràpides, o afegeix el giny a la pantalla d’inici per veure el temps de concentració i les targetes pendents.';

  @override
  String get faqTasksQ => 'Com afegeixo una tasca amb recordatori?';

  @override
  String get faqTasksA =>
      'Toca Tasca nova a Inici o + a Tasques. Escriu el títol o dicta’l amb el micròfon i defineix una data límit, una hora i un recordatori. Les tasques endarrerides apareixen primer.';

  @override
  String get faqFocusQ => 'Com funciona el temporitzador de concentració?';

  @override
  String get faqFocusA =>
      'Tria Pomodoro, un compte enrere o temps lliure i prem Inicia; les pauses poden començar automàticament. A Configuració pots triar el so final, activar No molestis mentre et concentres i reproduir els sons de la natura a cada sessió.';

  @override
  String get faqSoundsQ => 'Puc barrejar sons de la natura?';

  @override
  String get faqSoundsA =>
      'Activa fins a sis enregistraments reals, ajusta el volum de cadascun i desa la barreja amb un nom. Continuen sonant en segon pla i un temporitzador de son els pot aturar. No s’hi fa servir música.';

  @override
  String get faqCalendarQ => 'El calendari pot mostrar dates de l’hègira?';

  @override
  String get faqCalendarA =>
      'Sí. Les dates de l’hègira (Umm al-Qura) es mostren automàticament en àrab i es poden activar a Configuració per a qualsevol idioma. Els esdeveniments, les tasques amb data límit i les fites dels projectes apareixen junts.';

  @override
  String get faqFlashcardsQ => 'Com decideix el repàs quines targetes veig?';

  @override
  String get faqFlashcardsA =>
      'Les targetes que coneixes bé tornen després d’intervals més llargs i les que falles tornen aviat (repetició espaiada). Valora cada resposta: De nou, Difícil, Bé o Fàcil. Defineix un objectiu diari i mantén la ratxa a la targeta Avui. Defineix una data d’examen en una baralla per veure els dies que queden i quantes targetes noves has d’aprendre cada dia. Ordena per «El meu ordre» per arrossegar les targetes al seu lloc, toca l’altaveu de qualsevol cara per escoltar-la i ajusta la velocitat i les repeticions al menú Veu.';

  @override
  String get faqImportQ => 'Puc portar targetes d’Anki o d’Excel?';

  @override
  String get faqImportA =>
      'Sí. En una baralla tria Importa i després un fitxer: Anki (.apkg), Excel (.xlsx) o CSV, i associa les columnes. Fes servir «Plantilla de full de càlcul» per escriure targetes a l’ordinador. Les imatges i els sons dels fitxers d’Anki no s’importen.';

  @override
  String get faqNotesQ => 'Què poden fer les notes?';

  @override
  String get faqNotesA =>
      'Escriu lliurement amb llistes de verificació i format, fixa o marca com a preferides les notes importants, afegeix etiquetes i vincula notes a tasques. El botó del micròfon et permet dictar. Una nota nova pot començar d’una plantilla (classe, resum de llibre, diari, pla setmanal), i el botó d’imatge afegeix fotos.';

  @override
  String get faqHabitsQ => 'Com es compten les ratxes d’hàbits?';

  @override
  String get faqHabitsA =>
      'Un dia compta quan assoleixes la meta de l’hàbit en un dia programat. Posar un hàbit en pausa protegeix la ratxa. Cada hàbit pot tenir la seva hora de recordatori.';

  @override
  String get faqGoalsQ => 'Com segueixen el progrés els objectius?';

  @override
  String get faqGoalsA =>
      'Dona a un objectiu una quantitat i una unitat, i registra el progrés. La seva targeta mostra fins on has arribat i quant queda abans de la data límit.';

  @override
  String get faqProjectsQ => 'Per a què serveixen els projectes?';

  @override
  String get faqProjectsA =>
      'Agrupa tasques en un projecte, afegeix fites amb dates i segueix el progrés global. Les fites també apareixen al calendari.';

  @override
  String get faqInsightsQ => 'Què mostren les Estadístiques?';

  @override
  String get faqInsightsA =>
      'El teu temps de concentració, les tasques acabades i l’estudi per dies i setmanes, amb suggeriments amables. Tot es calcula al teu telèfon.';

  @override
  String get faqSpacesQ => 'On són totes les seccions?';

  @override
  String get faqSpacesA =>
      'Espais recull totes les parts de l’aplicació (notes, baralles, hàbits, objectius, projectes, sons i més) perquè la barra principal sigui senzilla.';

  @override
  String get faqBackupQ => 'Com es fan les còpies de seguretat de les meves dades?';

  @override
  String get faqBackupA =>
      'Cada dia l’aplicació desa discretament una còpia xifrada en aquest telèfon i en conserva les 7 últimes. A Configuració també pots exportar un fitxer de còpia protegit amb contrasenya i restaurar-lo en un altre telèfon.';

  @override
  String get faqPrayerQ => 'Com funcionen les hores de pregària?';

  @override
  String get faqPrayerA =>
      'Tria la teva ciutat a Configuració → Hores de pregària. Les hores es calculen al telèfon amb el mètode que s’hi fa servir, i pots canviar el mètode i l’escola de l’Asr. Pots rebre un avís a cada pregària, i la sessió de concentració en curs es posa en pausa.';

  @override
  String get faqPrivacyQ => 'On es desen les meves dades?';

  @override
  String get faqPrivacyA =>
      'Només al teu telèfon, en una base de dades xifrada. No hi ha compte ni seguiment. Internet només el fan servir les funcions que actives tu, com l’assistent opcional.';

  @override
  String get faqAssistantQ => 'Què és l’assistent?';

  @override
  String get faqAssistantA =>
      'Un ajudant opcional que connectes al teu propi servei d’IA a Configuració. Està desactivat per defecte i pregunta abans d’enviar qualsevol text d’una nota.';

  @override
  String get tourPlanTitle => 'Planifica el dia';

  @override
  String get tourPlanBody =>
      'Tasques, calendari i hàbits en un lloc tranquil. Comença cada matí amb «Comença el dia».';

  @override
  String get tourFocusTitle => 'Concentra’t a fons';

  @override
  String get tourFocusBody =>
      'Sessions cronometrades amb sons reals de la natura, No molestis i tons finals suaus.';

  @override
  String get tourLearnTitle => 'Aprèn per sempre';

  @override
  String get tourLearnBody =>
      'Targetes amb repetició espaiada, veu en molts idiomes i importació des d’Anki o Excel.';

  @override
  String get helpTitle => 'Ajuda i preguntes';

  @override
  String get helpOpen => 'Obre';

  @override
  String get helpTour => 'Fes la visita guiada';

  @override
  String get tourNext => 'Següent';

  @override
  String get tourDone => 'Som-hi';

  @override
  String get transferColTitle => 'Títol';

  @override
  String get transferColNotes => 'Notes';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Data límit';

  @override
  String get transferColPriority => 'Prioritat (0-3)';

  @override
  String get transferColDone => 'Fet';

  @override
  String get transferColProject => 'Projecte';

  @override
  String get transferColCategory => 'Categoria';

  @override
  String get transferTitle => 'Importació i exportació';

  @override
  String get transferSaveAs => 'Desa com a';

  @override
  String get transferImport => 'Importa d’un fitxer';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV o una taula de Word. Columnes: títol, data límit (2026-12-31), prioritat 0-3, fet, projecte, notes. Les tasques que ja són a l’aplicació s’ometen.';

  @override
  String get transferImportNotesHint =>
      'Els fitxers de Word, Markdown o text es converteixen en una nota. Excel o CSV: una nota per fila (títol, text).';

  @override
  String get transferSaved => 'Fitxer desat';

  @override
  String get transferFailed => 'No s’ha pogut crear el fitxer. No s’ha canviat res.';

  @override
  String get transferUnsupported =>
      'Aquest fitxer no es pot llegir aquí. Fes servir Excel, CSV, Word, Markdown o text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added afegits',
      one: '1 afegit',
      zero: 'No hi ha res de nou per afegir',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'Totes les notes';

  @override
  String get transferThisNote => 'Aquesta nota';

  @override
  String get transferDeckFormats => 'Desa com a Excel, Word o PDF';

  @override
  String get faqFilesQ => 'Puc fer servir fitxers d’Excel, Word o PDF?';

  @override
  String get faqFilesA =>
      'Sí. Tasques i Notes tenen un botó d’importació i exportació (dues fletxes) a dalt, i cada baralla el té al seu menú. Desa com a Excel, CSV, Word o PDF, o porta fitxers d’Excel, CSV, Word, Markdown o text. Els noms de les columnes poden estar en qualsevol idioma de l’aplicació, i els fitxers que has desat sempre es poden tornar a importar.';

  @override
  String get tplLecture => 'Classe';

  @override
  String get tplBook => 'Resum de llibre';

  @override
  String get tplJournal => 'Diari';

  @override
  String get tplWeek => 'Pla setmanal';

  @override
  String get tplLectureBody => '## Punts clau\n- \n\n## Preguntes\n- [ ] \n\n## Resum\n';

  @override
  String get tplBookBody =>
      '## Idea principal\n\n## Què he après\n- \n\n## Citacions\n> \n\n## Per aplicar\n- [ ] \n';

  @override
  String get tplJournalBody => '## Agraeixo\n- \n\n## Focus d’avui\n- [ ] \n\n## Notes\n';

  @override
  String get tplWeekBody =>
      '## Objectius de la setmana\n- [ ] \n\n### Dissabte\n- [ ] \n\n### Diumenge\n- [ ] \n\n### Dilluns\n- [ ] \n\n### Dimarts\n- [ ] \n\n### Dimecres\n- [ ] \n\n### Dijous\n- [ ] \n\n### Divendres\n- [ ] \n';

  @override
  String get tplHint => 'Comença d’una plantilla';

  @override
  String get noteImage => 'Imatge';

  @override
  String get noteAddImage => 'Afegeix una imatge';

  @override
  String get noteImageUnreadable => 'Aquest fitxer no és una imatge que l’aplicació pugui llegir.';

  @override
  String get noteImageTooLarge => 'Aquesta imatge és massa gran.';

  @override
  String get examSet => 'Defineix la data de l’examen';

  @override
  String get examDate => 'Data de l’examen';

  @override
  String get examToday => 'L’examen és avui. Molta sort!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Examen d’aquí a $count dies',
      one: 'Examen demà',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'aprèn $count targetes noves al dia',
      one: 'aprèn 1 targeta nova al dia',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'totes les targetes apreses, continua repassant';

  @override
  String examRaiseLimit(int count) {
    return 'Mostra $count targetes noves al dia';
  }

  @override
  String get backupDriveHint =>
      'Per conservar una còpia en línia, tria Google Drive (o una altra aplicació al núvol) a la pantalla de desar que s’obrirà tot seguit.';

  @override
  String get flashShareDeck => 'Comparteix la baralla amb un amic';

  @override
  String get flashSortManual => 'El meu ordre (arrossega)';

  @override
  String get flashReorderHint => 'Mantén premuda la nansa i arrossega una targeta per moure-la.';

  @override
  String get flashReorderNeedsAll => 'Esborra la cerca i els filtres per arrossegar targetes.';

  @override
  String get flashDragHandle => 'Arrossega per moure';

  @override
  String get reportTitle => 'Informe mensual';

  @override
  String get reportFocus => 'Temps de concentració';

  @override
  String reportSessions(int count) {
    return '$count sessions';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Millor dia: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count dies actius';
  }

  @override
  String get reportCards => 'Targetes repassades';

  @override
  String reportCardsKnown(String percent) {
    return '$percent recordades';
  }

  @override
  String get reportTasks => 'Tasques completades';

  @override
  String get reportHabits => 'Marques d’hàbits';

  @override
  String get reportEmpty => 'Encara no s’ha registrat res aquest mes.';

  @override
  String get reportSave => 'Desa com a PDF o Word';

  @override
  String get reportPrevMonth => 'Mes anterior';

  @override
  String get reportNextMonth => 'Mes següent';

  @override
  String get careTitle => 'Cura del telèfon i de les dades';

  @override
  String get storageTitle => 'Emmagatzematge';

  @override
  String get storageSubtitle => 'Què ocupa espai i neteja d’imatges no utilitzades';

  @override
  String get storagePictures => 'Imatges a les notes';

  @override
  String get storageCardMedia => 'Imatges i àudio a les targetes';

  @override
  String get storageText => 'Text de les notes';

  @override
  String get storageFree => 'Lliure al telèfon';

  @override
  String get storageLow =>
      'El telèfon és gairebé ple. Allibera espai perquè les còpies de seguretat i els recordatoris continuïn funcionant.';

  @override
  String storageUnused(int count, String size) {
    return '$count imatges no utilitzades ($size)';
  }

  @override
  String get storageNoUnused => 'No hi ha imatges no utilitzades. Tot està en ordre.';

  @override
  String get storageClean => 'Elimina les imatges no utilitzades';

  @override
  String storageCleaned(int count) {
    return 'S’han eliminat $count imatges';
  }

  @override
  String get storageHint =>
      'Una imatge només es considera no utilitzada si cap nota la mostra, incloses les notes de la paperera.';

  @override
  String get batteryTitle => 'Perquè els recordatoris funcionin';

  @override
  String get batterySubtitle =>
      'Alguns telèfons aturen les aplicacions en segon pla. Comprova el teu.';

  @override
  String get batteryStatusOk =>
      'L’estalvi de bateria no limita aquesta aplicació. Els recordatoris i els sons haurien d’arribar a temps.';

  @override
  String get batteryStatusLimited =>
      'L’estalvi de bateria pot aturar aquesta aplicació en segon pla, de manera que els recordatoris i els sons poden arribar tard o no arribar.';

  @override
  String get batteryOpen => 'Obre la configuració de la bateria';

  @override
  String get batteryOpenApp => 'Obre la configuració de l’aplicació';

  @override
  String get batteryGeneric =>
      'A la configuració de la bateria, tria aquesta aplicació i posa-la a «Sense restriccions» (o «No optimitzis»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: obre també Seguretat › Permisos › Inici automàtic i activa aquesta aplicació, i posa l’estalvi de bateria a «Sense restriccions».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: obre Bateria › aquesta aplicació i permet l’activitat en segon pla i l’inici automàtic; bloqueja l’aplicació a la llista d’aplicacions recents.';

  @override
  String get batterySamsung =>
      'Samsung: Bateria › Límits d’ús en segon pla: treu aquesta aplicació de les aplicacions en repòs i en repòs profund.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Inici d’aplicacions › aquesta aplicació › gestiona manualment, i permet l’inici automàtic, l’inici secundari i l’execució en segon pla.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Bateria › Consum d’energia en segon pla › permet aquesta aplicació i activa l’inici automàtic als permisos.';

  @override
  String get whatsNewTitle => 'Novetats';

  @override
  String get whatsNewSubtitle => 'Els últims canvis en poques línies';

  @override
  String get whatsNewDone => 'Entesos';

  @override
  String get whatsNewOrderTitle => 'Arrossega les targetes al teu ordre';

  @override
  String get whatsNewOrderBody =>
      'En una baralla tria Ordena › El meu ordre, mantén premuda la nansa i arrossega.';

  @override
  String get whatsNewSpeechTitle => 'Un altaveu a cada cara de la targeta';

  @override
  String get whatsNewSpeechBody =>
      'Toca’l per escoltar la paraula o la traducció. La velocitat, les repeticions i la veu són al menú de repàs. L’idioma es detecta a partir del text.';

  @override
  String get whatsNewReportTitle => 'Informe mensual';

  @override
  String get whatsNewReportBody =>
      'A Estadístiques toca la icona de l’informe per veure el mes i desar-lo com a PDF o Word.';

  @override
  String get whatsNewCareTitle => 'Cura del telèfon i de les dades';

  @override
  String get whatsNewCareBody =>
      'Configuració té ara una pàgina d’emmagatzematge amb neteja d’imatges i una guia de bateria per a la marca del teu telèfon.';

  @override
  String get whatsNewSoundTitle => 'Sons més tranquils';

  @override
  String get whatsNewSoundBody =>
      'Els sons de la natura són més suaus i baixos, i les targetes d’imatge són més boniques.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Comprovat el $date: l’última còpia de seguretat s’obre correctament.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Comprovat el $date: s’ha trobat una còpia malmesa i s’ha substituït per una de nova.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Comprovat el $date: no s’ha pogut obrir l’última còpia de seguretat. Desa tu mateix un fitxer de còpia des de Configuració.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Normalment estudies cap a les $time';
  }

  @override
  String get smartReviewTimeUse => 'Fes-la servir';

  @override
  String get widgetNewNote => 'Nota nova';

  @override
  String get noteConnections => 'Etiquetes, enllaços i tasques';

  @override
  String get navCards => 'Targetes';

  @override
  String get studyAnswerWay => 'Com respondre';

  @override
  String get studyMorePractice => 'Pràctica addicional';

  @override
  String get studySessionSettings => 'Configuració de la sessió';

  @override
  String get focusAdjustTitle => 'La teva sessió';

  @override
  String get focusPresetsTitle => 'Predefinides';

  @override
  String get focusPresetStudy => 'Estudi';

  @override
  String get focusPresetDeep => 'Feina profunda';

  @override
  String get focusPresetQuick => 'Esprint ràpid';

  @override
  String get focusPresetReading => 'Lectura';

  @override
  String get focusPresetWorkout => 'Rondes d’exercici';

  @override
  String get focusAdjustMinutes => 'Durada de la concentració';

  @override
  String get focusAdjustBreak => 'Durada de la pausa';

  @override
  String get focusAdjustRounds => 'Rondes';

  @override
  String get focusRoundsOpen => 'Sense límit';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Toca per canviar el temps';

  @override
  String get flashArrangeDecks => 'Ordena les baralles';

  @override
  String get flashDeckActions => 'Opcions de la baralla';

  @override
  String get starterBrowse => 'Baralles predefinides';

  @override
  String get starterBrowseHint => 'Afegeix-ne una amb un toc i comença a aprendre';

  @override
  String get dashOpenDecks => 'Obre les teves targetes';

  @override
  String speechVoiceNumber(String n) {
    return 'Veu $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Bon ritme. Descanses $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Comença la pausa';

  @override
  String tasksFinishAt(String time) {
    return 'Comença ara i ho acabaràs tot a les $time';
  }

  @override
  String get focusCalmPacing => 'Ritme tranquil';

  @override
  String get focusCalmPacingHint => 'Només minuts sencers i l’anell, sense segons que avancen';

  @override
  String get focusFlipHint => 'Posa el telèfon cap per avall per començar';

  @override
  String get focusImmersive => 'Mode immersiu';

  @override
  String get focusImmersiveBlack => 'Negre pur (estalvia bateria)';

  @override
  String get focusFlipToFocus => 'Gira per concentrar-te';

  @override
  String get focusFlipToFocusHint =>
      'En mode immersiu: cap per avall comença, aixecar-lo posa en pausa';

  @override
  String get guardTitle => 'Protecció contra distraccions';

  @override
  String get guardSubtitle => 'Posa en pausa les aplicacions que distreuen mentre et concentres';

  @override
  String get guardSwitch => 'Posa en pausa les aplicacions que distreuen';

  @override
  String get guardSwitchHint =>
      'Durant les sessions de concentració i les hores de la Protecció horària';

  @override
  String get guardNeedsAccess => 'Cal l’interruptor d’accessibilitat: toca per activar-lo';

  @override
  String get guardDisclosureTitle => 'Com funciona la protecció';

  @override
  String get guardDisclosureBody =>
      'Per posar en pausa les aplicacions que tries, Deep Focus fa servir el servei d’accessibilitat d’Android per veure quina aplicació està oberta. Amb «Tanca Shorts i Reels» activat, també comprova si hi ha un reproductor de vídeos curts a la pantalla.\n\nNo llegeix cap text, no desa res del que veu i no envia res enlloc: tot es queda al teu telèfon. El pots desactivar quan vulguis a la configuració d’accessibilitat.';

  @override
  String get guardAgree => 'Accepta i obre la configuració';

  @override
  String get guardModeGentle => 'Suau';

  @override
  String get guardModeStrict => 'Estricte';

  @override
  String get guardGentleHint => 'Una pausa de 5 segons per respirar i després decideixes tu';

  @override
  String get guardStrictHint =>
      'Les aplicacions triades es queden tancades fins que s’acaba el temps de concentració';

  @override
  String get guardApps => 'Aplicacions per posar en pausa';

  @override
  String get guardAppsAllowed => 'Aplicacions permeses';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplicacions',
      one: '1 aplicació',
      zero: 'Encara no n’has triat cap',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Permet només les aplicacions triades';

  @override
  String get guardAllowlistHint =>
      'Totes les altres aplicacions es posen en pausa; les trucades, la configuració i el teclat sempre funcionen';

  @override
  String get guardShorts => 'Tanca Shorts i Reels';

  @override
  String get guardShortsHint =>
      'Sempre que la protecció estigui activada. Sense garanties: aquestes aplicacions canvien sovint';

  @override
  String get guardSchedule => 'Protecció horària';

  @override
  String get guardScheduleHint =>
      'Protegeix també els dies i les hores que triïs, com a l’escola o a la feina';

  @override
  String get guardFrom => 'De';

  @override
  String get guardTo => 'A';

  @override
  String get guardSearchApps => 'Cerca aplicacions';

  @override
  String get guardNoApps => 'No s’ha trobat cap aplicació';

  @override
  String get guardPrivacy =>
      'Només funciona al teu telèfon: la protecció veu quina aplicació està oberta, mai què hi ha a dins, i no envia res.';

  @override
  String get guardBreathe => 'Inspira… i expira';

  @override
  String get guardQuestion => 'Necessites aquesta aplicació ara?';

  @override
  String get guardBackToFocus => 'Torna a la concentració';

  @override
  String get guardOpenFive => 'Obre durant 5 minuts';

  @override
  String get guardStrictBody =>
      'Aquesta aplicació està en pausa fins que s’acabi el temps de concentració.';

  @override
  String get guardShortsClosed => 'Els vídeos curts es tanquen mentre la protecció està activada';

  @override
  String get faqGuardQ => 'Com aturo les aplicacions que distreuen mentre em concentro?';

  @override
  String get faqGuardA =>
      'Obre Concentració → la configuració del temporitzador → Protecció contra distraccions. Tria les aplicacions i després Suau (una respiració de 5 segons i la pregunta «Necessites aquesta aplicació ara?») o Estricte (es queden tancades). Funciona durant les sessions de concentració i, amb la Protecció horària, els dies i les hores que defineixis. «Permet només les aplicacions triades» posa en pausa tota la resta; les trucades, la configuració i el teclat sempre funcionen. Android et demana una vegada que activis la protecció a la configuració d’accessibilitat. Només veu quina aplicació està oberta i no envia res.';

  @override
  String notesMovedToNotebook(String name) {
    return 'S’ha mogut a $name';
  }

  @override
  String get notesDragHint => 'Mantén premuda una nota i arrossega-la a una llibreta';

  @override
  String get guardReviewCards => 'Repassa targetes en lloc d’això';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'T’esperen $count targetes',
      one: 'T’espera 1 targeta',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emergència: mantén premut 10 segons';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Continua prement… $n';
  }

  @override
  String get guardWeekTitle => 'Aquesta setmana';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauses',
      one: '1 pausa',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'has tornat a la concentració $count cops',
      one: 'has tornat a la concentració un cop',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Canvia el nom de les paraules';

  @override
  String get wordsSubtitle => 'Fes servir la teva paraula per a qualsevol text de l’aplicació';

  @override
  String get wordsHint =>
      'Toca un text per canviar-lo. Les teves paraules només s’apliquen a aquest idioma i es conserven a les còpies de seguretat.';

  @override
  String get wordsSearch => 'Cerca textos';

  @override
  String get wordsChangedOnly => 'Només els canviats';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Fes servir l’original';

  @override
  String get wordsResetAll => 'Restableix totes les paraules';

  @override
  String get wordsResetAllConfirm => 'Tots els textos d’aquest idioma tornen a l’original.';

  @override
  String get wordsNone => 'No s’ha trobat cap text';

  @override
  String get settingsLanguageSearch => 'Cerca idiomes';

  @override
  String get settingsLanguageNoMatch => 'Cap idioma coincideix';

  @override
  String get soundsMyMusic => 'El teu àudio';

  @override
  String get soundsMusicHint =>
      'Reprodueix un fitxer d\'àudio del telèfon. No es copia ni es puja res.';

  @override
  String get soundsChooseMusic => 'Tria un àudio';

  @override
  String get soundsRemoveMusic => 'Treu l\'àudio';

  @override
  String get wordPacksTitle => 'Paquets de paraules';

  @override
  String get wordPacksHint =>
      'Llistes de paraules per tema. Baixa només l\'idioma que vulguis i després edita o suprimeix les targetes lliurement.';

  @override
  String get wordPacksFailed => 'No s\'ha pogut baixar. Comprova la connexió.';

  @override
  String get wordPacksEmpty => 'Les paraules d\'aquest idioma encara s\'estan preparant.';
}
