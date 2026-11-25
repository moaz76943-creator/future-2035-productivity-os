// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Inicio';

  @override
  String get navTasks => 'Tarefas';

  @override
  String get navFocus => 'Concentración';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get navSpaces => 'Espazos';

  @override
  String get moduleProjects => 'Proxectos';

  @override
  String get moduleNotes => 'Notas';

  @override
  String get moduleFlashcards => 'Tarxetas';

  @override
  String get moduleGoals => 'Obxectivos';

  @override
  String get moduleHabits => 'Hábitos';

  @override
  String get moduleAnalytics => 'Estatísticas';

  @override
  String get moduleSearch => 'Busca';

  @override
  String get moduleAssistant => 'Asistente';

  @override
  String get moduleSettings => 'Configuración';

  @override
  String get moduleTrash => 'Lixo';

  @override
  String get actionSave => 'Gardar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionDone => 'Feito';

  @override
  String get actionAdd => 'Engadir';

  @override
  String get actionCreate => 'Crear';

  @override
  String get actionClose => 'Pechar';

  @override
  String get actionBack => 'Atrás';

  @override
  String get actionUndo => 'Desfacer';

  @override
  String get actionRestore => 'Restaurar';

  @override
  String get actionRetry => 'Tentar de novo';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get actionSkip => 'Omitir';

  @override
  String get actionArchive => 'Arquivar';

  @override
  String get actionUnarchive => 'Desarquivar';

  @override
  String get actionPin => 'Fixar';

  @override
  String get actionUnpin => 'Soltar';

  @override
  String get actionMore => 'Máis opcións';

  @override
  String get actionClear => 'Borrar';

  @override
  String get actionSearch => 'Buscar';

  @override
  String get actionSort => 'Ordenar';

  @override
  String get actionShare => 'Compartir';

  @override
  String get actionImport => 'Importar';

  @override
  String get actionExport => 'Exportar';

  @override
  String get actionPause => 'Pausar';

  @override
  String get actionResume => 'Retomar';

  @override
  String get actionStart => 'Iniciar';

  @override
  String get actionStop => 'Deter';

  @override
  String get actionComplete => 'Completar';

  @override
  String get actionDeleteForever => 'Eliminar para sempre';

  @override
  String get actionEmptyTrash => 'Baleirar o lixo';

  @override
  String get actionUnlink => 'Desvincular';

  @override
  String get actionCustomize => 'Personalizar';

  @override
  String get actionPreview => 'Vista previa';

  @override
  String get actionLog => 'Rexistrar progreso';

  @override
  String get stateLoading => 'Cargando…';

  @override
  String get stateSaving => 'Gardando…';

  @override
  String get stateSaved => 'Gardado';

  @override
  String get stateUnsaved => 'Cambios sen gardar';

  @override
  String get errorGenericTitle => 'Algo saíu mal';

  @override
  String get errorGenericMessage => 'Os teus datos están a salvo. Téntao de novo.';

  @override
  String get errorLoadFailed => 'Non se puido cargar este contido.';

  @override
  String get errorSaveFailed => 'Non se puido gardar. Os teus cambios seguen aquí.';

  @override
  String get validationRequired => 'Este campo é obrigatorio';

  @override
  String get validationTitleRequired => 'Introduce un título';

  @override
  String get validationNameRequired => 'Introduce un nome';

  @override
  String get validationTooLong => 'É demasiado longo';

  @override
  String get validationEndBeforeStart => 'O final debe ser posterior ao inicio';

  @override
  String get validationStartAfterDue => 'A data de inicio debe ser anterior á data límite';

  @override
  String get validationPositiveNumber => 'Introduce un número maior que cero';

  @override
  String get validationDependencyCycle => 'Isto crearía unha dependencia circular';

  @override
  String get validationInvalidRepeat => 'Esta regra de repetición non é válida';

  @override
  String get deletedItem => 'Movido ao lixo';

  @override
  String get untitled => 'Sen título';

  @override
  String get noProject => 'Sen proxecto';

  @override
  String get greetingMorning => 'Bos días';

  @override
  String get greetingAfternoon => 'Boas tardes';

  @override
  String get greetingEvening => 'Boas noites';

  @override
  String get dashFocusToday => 'Concentración de hoxe';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done de $target';
  }

  @override
  String get dashStartFocus => 'Comezar a concentración';

  @override
  String get dashFocusRunning => 'Sesión en curso';

  @override
  String get dashTodayTasks => 'Vencen hoxe';

  @override
  String get dashAgenda => 'Axenda';

  @override
  String get dashHabits => 'Hábitos de hoxe';

  @override
  String get dashGoals => 'Obxectivos';

  @override
  String get dashReview => 'Repaso';

  @override
  String get dashRecentNotes => 'Notas recentes';

  @override
  String get dashInsight => 'Suxestión';

  @override
  String get dashSeeAll => 'Ver todo';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas para repasar',
      one: '1 tarxeta para repasar',
      zero: 'Ningunha tarxeta para repasar',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repasar agora';

  @override
  String get dashCustomizeTitle => 'Seccións do inicio';

  @override
  String get dashCustomizeHint => 'Escolle o que aparece na pantalla de inicio.';

  @override
  String get dashSectionFocus => 'Concentración';

  @override
  String get dashSectionToday => 'Tarefas que vencen hoxe';

  @override
  String get dashSectionAgenda => 'Axenda';

  @override
  String get dashSectionHabits => 'Hábitos';

  @override
  String get dashSectionGoals => 'Obxectivos';

  @override
  String get dashSectionReview => 'Repaso de tarxetas';

  @override
  String get dashSectionNotes => 'Notas recentes';

  @override
  String get dashSectionInsight => 'Suxestións';

  @override
  String get quickAddTask => 'Nova tarefa';

  @override
  String get quickAddNote => 'Nova nota';

  @override
  String get quickAddEvent => 'Novo evento';

  @override
  String get quickStartFocus => 'Concentración';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tes $count tarefas atrasadas. Comeza pola máis importante.',
      one: 'Tes 1 tarefa atrasada. Reprográmaa ou remátaa primeiro.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Fáltanche $minutes minutos para o teu obxectivo diario de concentración.';
  }

  @override
  String get insightCardsDue => 'Repasa agora as tarxetas pendentes mentres están frescas.';

  @override
  String get insightAllClear => 'Todo vai ben. Planifica mañá ou fai unha pausa consciente.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantén a racha: $habit aínda está pendente hoxe.';
  }

  @override
  String get focusTitle => 'Concentración';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Temporizador';

  @override
  String get focusModeCountUp => 'Cronómetro';

  @override
  String get focusModeOpen => 'Libre';

  @override
  String get focusPhaseWork => 'Concentración';

  @override
  String get focusPhaseShortBreak => 'Pausa curta';

  @override
  String get focusPhaseLongBreak => 'Pausa longa';

  @override
  String get focusReady => 'Comeza cando queiras';

  @override
  String get focusPaused => 'En pausa';

  @override
  String get focusRunning => 'Concentrado';

  @override
  String get focusDuration => 'Duración';

  @override
  String get focusLinkTask => 'Vincular unha tarefa';

  @override
  String get focusLinkedTask => 'Traballando en';

  @override
  String get focusNoTask => 'Ningunha tarefa vinculada';

  @override
  String focusCycle(int current, int total) {
    return 'Ciclo $current de $total';
  }

  @override
  String get focusSkipBreak => 'Omitir a pausa';

  @override
  String get focusStartBreak => 'Comezar a pausa';

  @override
  String get focusStartNext => 'Comezar a seguinte concentración';

  @override
  String get focusSessionComplete => 'Sesión completada';

  @override
  String get focusSessionStopped => 'Sesión gardada';

  @override
  String focusSessionSummary(String duration) {
    return 'Concentrácheste durante $duration.';
  }

  @override
  String get focusAddNote => 'Engade unha nota sobre esta sesión';

  @override
  String get focusHistory => 'Historial';

  @override
  String get focusNoHistory => 'As sesións completadas aparecerán aquí';

  @override
  String get focusTargets => 'Metas';

  @override
  String get focusDailyTarget => 'Meta diaria';

  @override
  String get focusWeeklyTarget => 'Meta semanal';

  @override
  String get focusOutcomeCompleted => 'Completada';

  @override
  String get focusOutcomeInterrupted => 'Detida antes de tempo';

  @override
  String get focusRecovered => 'A sesión continuou mentres a aplicación estaba pechada.';

  @override
  String get focusCompletedWhileAway =>
      'Unha sesión rematou mentres a aplicación estaba pechada e gardouse.';

  @override
  String get focusNotificationsOff =>
      'As notificacións están desactivadas. Non recibirás avisos cando remate unha sesión.';

  @override
  String get focusBatteryHint =>
      'Algúns dispositivos pausan as aplicacións en segundo plano. O temporizador segue sendo preciso, pero os avisos poden atrasarse. Permite o uso da batería sen restricións para ter avisos fiables.';

  @override
  String get focusOpenSettings => 'Abrir a configuración';

  @override
  String get focusStopConfirmTitle => 'Queres deter esta sesión?';

  @override
  String get focusStopConfirmMessage => 'Gardarase o tempo de concentración ata agora.';

  @override
  String get focusDiscard => 'Descartar';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutos',
      one: '1 minuto',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, quedan $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, pasaron $time';
  }

  @override
  String get focusDeleteSession => 'Eliminar a sesión';

  @override
  String get tasksTitle => 'Tarefas';

  @override
  String get tasksViewToday => 'Hoxe';

  @override
  String get tasksViewUpcoming => 'Próximas';

  @override
  String get tasksViewAll => 'Todas';

  @override
  String get tasksViewOverdue => 'Atrasadas';

  @override
  String get tasksViewCompleted => 'Completadas';

  @override
  String get tasksQuickAddHint => 'Engade unha tarefa…';

  @override
  String get tasksEmptyTitle => 'Todo feito';

  @override
  String get tasksEmptyMessage => 'Engade unha tarefa para comezar a organizar o teu día.';

  @override
  String get tasksEmptyCompleted => 'As tarefas completadas aparecerán aquí.';

  @override
  String get taskNew => 'Nova tarefa';

  @override
  String get taskEdit => 'Editar a tarefa';

  @override
  String get taskTitleLabel => 'Título';

  @override
  String get taskTitleHint => 'Que hai que facer?';

  @override
  String get taskDescriptionLabel => 'Descrición';

  @override
  String get taskNotesLabel => 'Notas';

  @override
  String get taskPriority => 'Prioridade';

  @override
  String get priorityNone => 'Ningunha';

  @override
  String get priorityLow => 'Baixa';

  @override
  String get priorityMedium => 'Media';

  @override
  String get priorityHigh => 'Alta';

  @override
  String get priorityUrgent => 'Urxente';

  @override
  String get taskDueDate => 'Data límite';

  @override
  String get taskStartDate => 'Data de inicio';

  @override
  String get taskReminder => 'Recordatorio';

  @override
  String get taskRepeat => 'Repetición';

  @override
  String get taskProject => 'Proxecto';

  @override
  String get taskCategory => 'Categoría';

  @override
  String get taskCategoryHint => 'p. ex. Traballo, Casa, Estudos';

  @override
  String get taskEstimateMinutes => 'Estimación (minutos)';

  @override
  String get taskTracked => 'Concentración rexistrada';

  @override
  String get taskLabels => 'Etiquetas';

  @override
  String get taskAddLabel => 'Nova etiqueta';

  @override
  String get taskChecklist => 'Lista de verificación';

  @override
  String get taskAddChecklistItem => 'Engade un elemento';

  @override
  String get taskSubtasks => 'Subtarefas';

  @override
  String get taskAddSubtask => 'Engade unha subtarefa';

  @override
  String get taskDependencies => 'Bloqueada por';

  @override
  String get taskAddDependency => 'Engade unha tarefa que a bloquea';

  @override
  String get taskLinkedNotes => 'Notas vinculadas';

  @override
  String get taskSetTime => 'Definir a hora';

  @override
  String get taskNoDate => 'Sen data';

  @override
  String get taskCompleted => 'Tarefa completada';

  @override
  String get taskNextOccurrence => 'Creouse a seguinte repetición';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days días de atraso',
      one: '1 día de atraso',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marcar «$title» como feita';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marcar «$title» como non feita';
  }

  @override
  String get sortSmart => 'Intelixente';

  @override
  String get sortDueDate => 'Data límite';

  @override
  String get sortPriority => 'Prioridade';

  @override
  String get sortCreated => 'Máis recentes';

  @override
  String get sortTitle => 'Título';

  @override
  String get filterAllProjects => 'Todos os proxectos';

  @override
  String get filterAnyPriority => 'Calquera prioridade';

  @override
  String get filterTitle => 'Filtrar e ordenar';

  @override
  String get dateToday => 'Hoxe';

  @override
  String get dateTomorrow => 'Mañá';

  @override
  String get dateYesterday => 'Onte';

  @override
  String get repeatNever => 'Non se repite';

  @override
  String get repeatDaily => 'Cada día';

  @override
  String get repeatWeekdays => 'Cada día laborable';

  @override
  String get repeatWeekly => 'Cada semana';

  @override
  String get repeatMonthly => 'Cada mes';

  @override
  String get repeatYearly => 'Cada ano';

  @override
  String get repeatCustom => 'Personalizado';

  @override
  String get repeatEvery => 'Repetir cada';

  @override
  String get repeatOnDays => 'Os días';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'días', one: 'día');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'semanas',
      one: 'semana',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'meses', one: 'mes');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'anos', one: 'ano');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count veces',
      one: '1 vez',
    );
    return 'Remata despois de $_temp0';
  }

  @override
  String get repeatEndsNever => 'Non remata nunca';

  @override
  String get reminderAtTime => 'Á hora do evento';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutos antes',
      one: '1 minuto antes',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours horas antes',
      one: '1 hora antes',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 día antes';

  @override
  String get projectsTitle => 'Proxectos';

  @override
  String get projectsEmptyTitle => 'Aínda non hai proxectos';

  @override
  String get projectsEmptyMessage => 'Agrupa tarefas, notas e tempo de concentración relacionados.';

  @override
  String get projectNew => 'Novo proxecto';

  @override
  String get projectEdit => 'Editar o proxecto';

  @override
  String get projectName => 'Nome';

  @override
  String get projectDescription => 'Descrición';

  @override
  String get projectGoal => 'Obxectivo';

  @override
  String get projectDeadline => 'Data límite';

  @override
  String get projectColor => 'Cor';

  @override
  String get projectIcon => 'Icona';

  @override
  String get projectProgress => 'Progreso';

  @override
  String projectTasksDone(int done, int total) {
    return '$done de $total tarefas feitas';
  }

  @override
  String get projectFocusTime => 'Tempo de concentración';

  @override
  String get projectArchived => 'Proxectos arquivados';

  @override
  String get projectShowArchived => 'Amosar os arquivados';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Quedan $days días',
      one: 'Queda 1 día',
      zero: 'Vence hoxe',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Data límite superada';

  @override
  String get calendarTitle => 'Calendario';

  @override
  String get calendarMonth => 'Mes';

  @override
  String get calendarWeek => 'Semana';

  @override
  String get calendarDay => 'Día';

  @override
  String get calendarToday => 'Hoxe';

  @override
  String get calendarPrevious => 'Anterior';

  @override
  String get calendarNext => 'Seguinte';

  @override
  String get calendarNoEvents => 'Nada programado';

  @override
  String get calendarAllDay => 'Todo o día';

  @override
  String get eventNew => 'Novo evento';

  @override
  String get eventEdit => 'Editar o evento';

  @override
  String get eventTitleHint => 'Título do evento';

  @override
  String get eventStarts => 'Comeza';

  @override
  String get eventEnds => 'Remata';

  @override
  String get eventKind => 'Tipo';

  @override
  String get eventKindEvent => 'Evento';

  @override
  String get eventKindTimeBlock => 'Bloque de tempo';

  @override
  String get eventKindFocus => 'Sesión de concentración';

  @override
  String get eventKindGoal => 'Obxectivo persoal';

  @override
  String get eventDescription => 'Detalles';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Solápase con $count eventos',
      one: 'Solápase con 1 evento',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflitos de programación neste día';

  @override
  String get calendarTaskDue => 'Tarefa que vence';

  @override
  String get calendarDragHint => 'Mantén premido e arrastra un evento para reprogramalo';

  @override
  String get calendarRescheduled => 'Evento movido';

  @override
  String get calendarScheduleTask => 'Programar como bloque de tempo';

  @override
  String get notesTitle => 'Notas';

  @override
  String get notesViewAll => 'Todas';

  @override
  String get notesViewPinned => 'Fixadas';

  @override
  String get notesViewFavorites => 'Favoritas';

  @override
  String get notesViewArchived => 'Arquivadas';

  @override
  String get notesTags => 'Etiquetas';

  @override
  String get notesNewNotebook => 'Novo caderno';

  @override
  String get notesNoNotebook => 'Sen caderno';

  @override
  String get notesEmptyTitle => 'Unha folla en branco';

  @override
  String get notesEmptyMessage => 'Garda ideas, notas de reunións e coñecemento.';

  @override
  String get noteTitleHint => 'Título';

  @override
  String get noteBodyHint =>
      'Comeza a escribir… Usa # para etiquetas e [[Título]] para vincular notas.';

  @override
  String get noteFavorite => 'Favorita';

  @override
  String get noteUnfavorite => 'Quitar de favoritas';

  @override
  String get noteMoveTo => 'Mover ao caderno';

  @override
  String get noteBacklinks => 'Ligada desde';

  @override
  String get noteLinkedTasks => 'Tarefas vinculadas';

  @override
  String get noteLinkTask => 'Vincular unha tarefa';

  @override
  String get noteLinkProject => 'Proxecto';

  @override
  String get noteFormatHeading => 'Título';

  @override
  String get noteFormatBold => 'Negra';

  @override
  String get noteFormatItalic => 'Cursiva';

  @override
  String get noteFormatList => 'Lista con viñetas';

  @override
  String get noteFormatChecklist => 'Lista de verificación';

  @override
  String get noteFormatLink => 'Ligazón';

  @override
  String noteEdited(String time) {
    return 'Editada $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palabras',
      one: '1 palabra',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Tarxetas';

  @override
  String get flashEmptyTitle => 'Crea a túa primeira baralla';

  @override
  String get flashEmptyMessage =>
      'A repetición espazada amosa cada tarxeta xusto antes de que a esquezas.';

  @override
  String get deckNew => 'Nova baralla';

  @override
  String get deckEdit => 'Editar a baralla';

  @override
  String get deckName => 'Nome da baralla';

  @override
  String get deckDescription => 'Descrición';

  @override
  String get deckDailyNew => 'Tarxetas novas ao día';

  @override
  String get deckDailyReview => 'Meta diaria de repaso';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas',
      one: '1 tarxeta',
      zero: 'Ningunha tarxeta',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Pendentes';

  @override
  String get deckNewCards => 'Novas';

  @override
  String get deckMature => 'Consolidadas';

  @override
  String get deckStudy => 'Estudar';

  @override
  String get deckNothingDue => 'Agora non hai nada pendente. Volve máis tarde.';

  @override
  String get deckEmptyCards => 'Engade tarxetas para comezar a aprender.';

  @override
  String get cardNew => 'Nova tarxeta';

  @override
  String get cardEdit => 'Editar a tarxeta';

  @override
  String get cardFront => 'Anverso';

  @override
  String get cardBack => 'Reverso';

  @override
  String get cardFrontHint => 'Pregunta ou termo';

  @override
  String get cardBackHint => 'Resposta ou definición';

  @override
  String get cardTags => 'Etiquetas';

  @override
  String get cardAddAnother => 'Gardar e engadir outra';

  @override
  String get reviewShowAnswer => 'Amosar a resposta';

  @override
  String get reviewAgain => 'De novo';

  @override
  String get reviewHard => 'Difícil';

  @override
  String get reviewGood => 'Ben';

  @override
  String get reviewEasy => 'Fácil';

  @override
  String reviewProgress(int done, int total) {
    return '$done de $total';
  }

  @override
  String get reviewFinishedTitle => 'Sesión completada';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repasaches $count tarxetas.',
      one: 'Repasaches 1 tarxeta.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Toca para ver a resposta';

  @override
  String get importCardsTitle => 'Importar tarxetas';

  @override
  String get importCardsHint =>
      'Pega unha tarxeta por liña (anverso e reverso separados por un tabulador ou un punto e coma), ou escolle un ficheiro: Excel (.xlsx), CSV, unha baralla de Anki (.apkg) ou unha baralla exportada.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Importáronse $count tarxetas',
      one: 'Importouse 1 tarxeta',
      zero: 'Non se importou ningunha tarxeta',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Non se puido importar este contido.';

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
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Obxectivos';

  @override
  String get goalsEmptyTitle => 'Apunta alto';

  @override
  String get goalsEmptyMessage =>
      'Define obxectivos diarios, semanais, mensuais ou a longo prazo e segue o progreso real.';

  @override
  String get goalNew => 'Novo obxectivo';

  @override
  String get goalEdit => 'Editar o obxectivo';

  @override
  String get goalTitleHint => 'Que queres conseguir?';

  @override
  String get goalPeriod => 'Período';

  @override
  String get goalPeriodDaily => 'Diario';

  @override
  String get goalPeriodWeekly => 'Semanal';

  @override
  String get goalPeriodMonthly => 'Mensual';

  @override
  String get goalPeriodLongTerm => 'A longo prazo';

  @override
  String get goalTarget => 'Meta';

  @override
  String get goalUnit => 'Unidade';

  @override
  String get goalUnitHint => 'p. ex. páxinas, km, horas';

  @override
  String get goalStatusActive => 'Activo';

  @override
  String get goalStatusPaused => 'En pausa';

  @override
  String get goalStatusAchieved => 'Conseguido';

  @override
  String get goalPause => 'Pausar o obxectivo';

  @override
  String get goalResume => 'Retomar o obxectivo';

  @override
  String get goalMarkAchieved => 'Marcar como conseguido';

  @override
  String goalProgressOf(String current, String target) {
    return '$current de $target';
  }

  @override
  String get goalLogAmount => 'Cantidade';

  @override
  String get goalLogNote => 'Nota (opcional)';

  @override
  String get goalHistory => 'Historial';

  @override
  String get goalNoHistory => 'O progreso rexistrado aparecerá aquí';

  @override
  String get goalLinkedTasks => 'Tarefas vinculadas';

  @override
  String get goalLinkedTasksHint =>
      'Cada tarefa vinculada completada conta como 1 para este obxectivo.';

  @override
  String get goalThisPeriod => 'Este período';

  @override
  String get habitsTitle => 'Hábitos';

  @override
  String get habitsEmptyTitle => 'Pequenos pasos, cada día';

  @override
  String get habitsEmptyMessage => 'Crea un hábito e márcao cando o fagas.';

  @override
  String get habitNew => 'Novo hábito';

  @override
  String get habitEdit => 'Editar o hábito';

  @override
  String get habitNameHint => 'p. ex. Ler 20 páxinas';

  @override
  String get habitDays => 'Programación';

  @override
  String get habitEveryDay => 'Cada día';

  @override
  String get habitTargetPerDay => 'Veces ao día';

  @override
  String get habitReminder => 'Recordatorio diario';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Racha de $count días',
      one: 'Racha de 1 día',
      zero: 'Sen racha',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Mellor racha';

  @override
  String get habitCurrentStreak => 'Racha actual';

  @override
  String get habitConsistency => 'Constancia';

  @override
  String get habitLast90 => 'Últimos 90 días';

  @override
  String get habitPaused => 'En pausa';

  @override
  String get habitPause => 'Pausar o hábito';

  @override
  String get habitResume => 'Retomar o hábito';

  @override
  String get habitDoneToday => 'Feito hoxe';

  @override
  String habitCountToday(int count, int target) {
    return '$count de $target hoxe';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Marcar «$name»';
  }

  @override
  String get habitNotScheduledToday => 'Non programado hoxe';

  @override
  String get analyticsTitle => 'Estatísticas';

  @override
  String get rangeWeek => '7 días';

  @override
  String get rangeMonth => '30 días';

  @override
  String get rangeQuarter => '90 días';

  @override
  String get statFocusTime => 'Tempo de concentración';

  @override
  String get statSessions => 'Sesións';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed completadas · $interrupted detidas antes de tempo';
  }

  @override
  String get statTasksDone => 'Tarefas completadas';

  @override
  String get statCompletionRate => 'Completadas a tempo';

  @override
  String get statHabitConsistency => 'Constancia dos hábitos';

  @override
  String get statRetention => 'Retención de tarxetas';

  @override
  String get statReviews => 'Repasos';

  @override
  String get statActiveGoals => 'Obxectivos activos';

  @override
  String get statEstimated => 'Traballo estimado completado';

  @override
  String get statEstimatedNote => 'Baseado nas túas estimacións, non en tempo medido';

  @override
  String get statMeasuredNote => 'Medido a partir das sesións de concentración';

  @override
  String get chartFocusByDay => 'Minutos de concentración por día';

  @override
  String get chartTasksByDay => 'Tarefas completadas por día';

  @override
  String get chartTimeByProject => 'Tempo por proxecto';

  @override
  String get chartProjectProgress => 'Progreso dos proxectos';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, mellor día $best';
  }

  @override
  String get analyticsNoData => 'Aínda non hai datos dabondo';

  @override
  String get analyticsUnassigned => 'Sen asignar';

  @override
  String get searchHint => 'Buscar en todo…';

  @override
  String get searchRecent => 'Buscas recentes';

  @override
  String get searchClearRecent => 'Borrar as buscas recentes';

  @override
  String searchNoResults(String query) {
    return 'Non hai resultados para «$query»';
  }

  @override
  String get searchStartTyping =>
      'Busca en tarefas, notas, tarxetas, obxectivos, eventos e máis. A busca queda neste dispositivo.';

  @override
  String get searchCatTask => 'Tarefas';

  @override
  String get searchCatProject => 'Proxectos';

  @override
  String get searchCatNote => 'Notas';

  @override
  String get searchCatFlashcard => 'Tarxetas';

  @override
  String get searchCatDeck => 'Barallas';

  @override
  String get searchCatGoal => 'Obxectivos';

  @override
  String get searchCatHabit => 'Hábitos';

  @override
  String get searchCatEvent => 'Eventos';

  @override
  String get searchCatSession => 'Sesións';

  @override
  String get searchAll => 'Todo';

  @override
  String get assistantTitle => 'Asistente';

  @override
  String get assistantIntro =>
      'Axuda para planificar que funciona no teu dispositivo. Se queres, conecta un provedor de IA que escollas para resumos e xeración.';

  @override
  String get assistantOnDevice => 'No dispositivo';

  @override
  String get assistantCloud => 'Provedor de IA';

  @override
  String get assistantPlanDay => 'Planificar o meu día';

  @override
  String get assistantPlanDayDesc =>
      'Ordena as tarefas abertas por urxencia, prioridade e estimación, e encáixaas entre os teus eventos.';

  @override
  String get assistantExtractTasks => 'Extraer tarefas dunha nota';

  @override
  String get assistantExtractTasksDesc =>
      'Atopa elementos de lista e liñas de acción nunha nota e convérteos en tarefas.';

  @override
  String get assistantMakeCards => 'Crear tarxetas dunha nota';

  @override
  String get assistantMakeCardsDesc =>
      'Converte as liñas «termo: definición» e de pregunta/resposta en tarxetas.';

  @override
  String get assistantSummarize => 'Resumir unha nota';

  @override
  String get assistantSummarizeDesc =>
      'Precisa un provedor de IA. A nota só se envía despois de que o confirmes.';

  @override
  String get assistantWorkload => 'Resumo da carga de traballo';

  @override
  String get assistantWorkloadDesc =>
      'Compara o traballo estimado co teu tempo libre desta semana.';

  @override
  String get assistantPlanEmpty => 'Non hai tarefas abertas para planificar. Goza do espazo.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Tempo libre de concentración hoxe: $time';
  }

  @override
  String get assistantPlanOverflow => 'Estas poderían non caber hoxe:';

  @override
  String get assistantChooseNote => 'Escolle unha nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atopáronse $count tarefas',
      one: 'Atopouse 1 tarefa',
      zero: 'Non se atoparon tarefas nesta nota',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Atopáronse $count tarxetas',
      one: 'Atopouse 1 tarxeta',
      zero: 'Non se atoparon tarxetas nesta nota',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Escolle unha baralla';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Traballo estimado: $estimated. Tempo libre: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Tes máis planificado que tempo dispoñible. Considera mover as tarefas de prioridade máis baixa.';

  @override
  String get assistantWorkloadOk => 'O teu plan cabe no tempo dispoñible.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas abertas non teñen estimación.',
      one: '1 tarefa aberta non ten estimación.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Provedor de IA';

  @override
  String get assistantProviderOff =>
      'Non hai ningún provedor conectado. As ferramentas do dispositivo seguen funcionando.';

  @override
  String assistantProviderOn(String host) {
    return 'Conectado a $host';
  }

  @override
  String get assistantEndpoint => 'Punto final da API (HTTPS)';

  @override
  String get assistantModel => 'Modelo';

  @override
  String get assistantApiKey => 'Clave da API';

  @override
  String get assistantApiKeyStored => 'Gardada de forma segura neste dispositivo';

  @override
  String get assistantHttpsOnly => 'Só se permiten puntos finais HTTPS';

  @override
  String get assistantConsentTitle => 'Queres enviar este contido ao teu provedor de IA?';

  @override
  String assistantConsentBody(String host) {
    return 'O texto da nota seleccionada sairá deste dispositivo e procesarao $host. Non se envía nada máis.';
  }

  @override
  String get assistantConsentAlways => 'Non volver preguntar para este provedor';

  @override
  String get assistantSend => 'Enviar';

  @override
  String get assistantUnavailable => 'Non se puido contactar co provedor de IA. Téntao máis tarde.';

  @override
  String get assistantDisabledTitle => 'O asistente está desactivado';

  @override
  String get assistantDisabledMessage =>
      'Actívao para usar as ferramentas de planificación. Ningún dato sae do dispositivo a non ser que conectes un provedor e confirmes cada solicitude.';

  @override
  String get assistantSummaryTitle => 'Resumo';

  @override
  String get assistantRemoveProvider => 'Quitar o provedor';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get settingsGeneral => 'Xeral';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Idioma do dispositivo';

  @override
  String get settingsAppearance => 'Aparencia';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Reducir o movemento';

  @override
  String get settingsReduceMotionDesc => 'Minimizar as animacións e os fondos en movemento';

  @override
  String get settingsFocus => 'Temporizador de concentración';

  @override
  String get settingsWorkLength => 'Duración da concentración';

  @override
  String get settingsShortBreak => 'Pausa curta';

  @override
  String get settingsLongBreak => 'Pausa longa';

  @override
  String get settingsLongBreakEvery => 'Pausa longa despois de';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesións',
      one: '1 sesión',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Iniciar as pausas automaticamente';

  @override
  String get settingsSound => 'Son de finalización';

  @override
  String get settingsDailyFocusTarget => 'Meta diaria de concentración';

  @override
  String get settingsWeeklyFocusTarget => 'Meta semanal de concentración';

  @override
  String get settingsNotifications => 'Notificacións';

  @override
  String get settingsNotificationsEnable => 'Permitir os recordatorios';

  @override
  String get settingsQuietHours => 'Horas de silencio';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Os recordatorios de hábitos, obxectivos e repasos silencianse de $start a $end';
  }

  @override
  String get settingsReviewReminder => 'Recordatorio de repaso de tarxetas';

  @override
  String get settingsPermissionDenied =>
      'As notificacións están bloqueadas na configuración do sistema.';

  @override
  String get settingsPrivacy => 'Privacidade e datos';

  @override
  String get settingsPrivacyStatement =>
      'Os teus datos só se gardan neste dispositivo e están cifrados. Non hai conta, nin analíticas nin seguimento.';

  @override
  String get settingsBackup => 'Crear unha copia de seguranza cifrada';

  @override
  String get settingsBackupDesc => 'Protexida cun contrasinal que escolles ti';

  @override
  String get settingsRestore => 'Restaurar desde unha copia de seguranza';

  @override
  String get settingsRestoreDesc => 'Substitúe todos os datos deste dispositivo';

  @override
  String get settingsErase => 'Borrar todos os datos';

  @override
  String get settingsEraseDesc => 'Eliminar para sempre todo o que hai neste dispositivo';

  @override
  String get settingsEraseConfirmTitle => 'Queres borrar todos os datos?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Todas as tarefas, notas, tarxetas, obxectivos, hábitos, eventos e sesións eliminaranse para sempre. Escribe $word para confirmalo.';
  }

  @override
  String get settingsEraseWord => 'BORRAR';

  @override
  String get settingsErased => 'Borráronse todos os datos';

  @override
  String get backupPassword => 'Contrasinal da copia';

  @override
  String get backupPasswordConfirm => 'Confirmar o contrasinal';

  @override
  String backupPasswordHint(int count) {
    return 'Polo menos $count caracteres. Non se pode recuperar se o perdes.';
  }

  @override
  String get backupPasswordMismatch => 'Os contrasinais non coinciden';

  @override
  String get backupPasswordShort => 'O contrasinal é demasiado curto';

  @override
  String get backupCreating => 'Cifrando a copia…';

  @override
  String get backupCreated => 'Copia de seguranza lista para gardar';

  @override
  String get backupRestoring => 'Verificando e restaurando…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Restauráronse $count elementos',
      one: 'Restaurouse 1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Contrasinal incorrecto ou o ficheiro foi modificado.';

  @override
  String get backupNotABackup => 'Este ficheiro non é unha copia de seguranza de Deep Focus.';

  @override
  String get backupCorrupted => 'O ficheiro da copia de seguranza está danado.';

  @override
  String get backupNewer =>
      'Esta copia fíxoa unha versión máis nova da aplicación. Actualízaa primeiro.';

  @override
  String get backupRestoreConfirmTitle => 'Queres substituír todos os datos?';

  @override
  String get backupRestoreConfirmBody =>
      'Todo o que hai agora neste dispositivo substituirase pola copia. Se a restauración falla, non cambia nada.';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String settingsVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get settingsLicenses => 'Licenzas de código aberto';

  @override
  String get settingsAssistant => 'Asistente';

  @override
  String get settingsAssistantEnable => 'Activar o asistente';

  @override
  String get settingsDashboard => 'Seccións do inicio';

  @override
  String get settingsTrash => 'Lixo';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'O lixo está baleiro';

  @override
  String get trashHint => 'Os elementos eliminados quedan aquí ata que os quites.';

  @override
  String get trashTasks => 'Tarefas';

  @override
  String get trashNotes => 'Notas';

  @override
  String get onboardWelcomeTitle => 'Dámosche a benvida ao teu espazo de traballo do futuro';

  @override
  String get onboardWelcomeBody =>
      'Tarefas, concentración, calendario, notas, tarxetas, obxectivos e hábitos: todo xunto e fermosamente sinxelo.';

  @override
  String get onboardPrivateTitle => 'Privado por deseño';

  @override
  String get onboardPrivateBody =>
      'Todo queda neste dispositivo, cifrado. Sen conta. Sen seguimento. Ti tes o control.';

  @override
  String get onboardLanguageTitle => 'Escolle o teu idioma';

  @override
  String get onboardNotifTitle => 'Recordatorios amables';

  @override
  String get onboardNotifBody =>
      'Permite as notificacións para os recordatorios de tarefas e os avisos de concentración. Podes cambialo cando queiras.';

  @override
  String get onboardGetStarted => 'Comezar';

  @override
  String onboardStep(int current, int total) {
    return 'Paso $current de $total';
  }

  @override
  String get notifChannelReminders => 'Recordatorios';

  @override
  String get notifChannelRemindersDesc => 'Recordatorios de tarefas, eventos, hábitos e obxectivos';

  @override
  String get notifChannelFocus => 'Temporizador de concentración';

  @override
  String get notifChannelFocusDesc =>
      'Avisos cando remata unha sesión de concentración ou unha pausa';

  @override
  String get notifTaskTitle => 'Recordatorio de tarefa';

  @override
  String get notifEventTitle => 'Próximo evento';

  @override
  String notifEventBody(String title, String time) {
    return '$title ás $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesión de concentración completada';

  @override
  String get notifFocusDoneBody => 'Moi bo traballo. É hora dunha pausa.';

  @override
  String get notifBreakDoneTitle => 'Rematou a pausa';

  @override
  String get notifBreakDoneBody => 'Listo para a seguinte sesión de concentración?';

  @override
  String get notifHabitTitle => 'Recordatorio de hábito';

  @override
  String get notifReviewTitle => 'As tarxetas están listas';

  @override
  String get notifReviewBody => 'Un repaso curto mantén a memoria forte.';

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
  String get weekdaysShort => 'L,M,M,X,V,S,D';

  @override
  String a11yProgress(int value) {
    return 'Progreso $value por cento';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioridade: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Cor $index';
  }

  @override
  String get analyticsRangeLabel => 'Intervalo de tempo';

  @override
  String get analyticsRefresh => 'Actualizar';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done de $total tarefas con data límite feitas a tempo';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done de $total tarefas feitas';
  }

  @override
  String get analyticsNoProjects => 'Non hai proxectos activos';

  @override
  String get analyticsNoFocus => 'Non hai sesións de concentración neste intervalo';

  @override
  String get analyticsHabitsNone => 'Non hai hábitos activos';

  @override
  String get analyticsRetentionNote => 'Proporción de tarxetas consolidadas que lembraches';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'O tempo libre conta de $start a $end nos días laborables ($days), menos os eventos con hora. O traballo estimado é a suma das estimacións das tarefas abertas que vencen nos próximos 7 días.';
  }

  @override
  String get assistantWorkdaysMonFri => 'De luns a venres';

  @override
  String get assistantWorkdaysSunThu => 'De domingo a xoves';

  @override
  String get assistantWorkloadDayOff => 'Día libre';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planificado · $free libre';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planificado desde agora ata as $end, arredor dos eventos de hoxe. Primeiro as tarefas atrasadas, despois a prioridade, a data límite e a estimación.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Programar como bloques de tempo';

  @override
  String get assistantScheduleConfirmTitle => 'Queres engadir bloques de tempo ao calendario?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadiranse $count bloques de tempo ao calendario de hoxe.',
      one: 'Engadirase 1 bloque de tempo ao calendario de hoxe.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Engadíronse $count bloques de tempo',
      one: 'Engadiuse 1 bloque de tempo',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Xa está no teu calendario';

  @override
  String get assistantPlanTimeline => 'Cabe hoxe';

  @override
  String get assistantNoEstimate => 'Engade unha estimación para planificalas';

  @override
  String get assistantNoNotes => 'Aínda non hai notas. Escribe unha primeiro.';

  @override
  String get assistantNoteEmpty => 'Esta nota está baleira.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Creáronse $count tarefas',
      one: 'Creouse 1 tarefa',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Creáronse $count tarxetas',
      one: 'Creouse 1 tarxeta',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Crear $count',
      one: 'Crear 1',
      zero: 'Non hai nada seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Recoñécense: caixas sen marcar «- [ ]» e liñas que comezan por TODO: ou To do:';

  @override
  String get assistantCardsHint =>
      'Recoñécense: «termo: definición», «termo — definición» e pares de liñas Q:/A:';

  @override
  String get assistantProviderHint =>
      'Usa calquera servizo compatible con OpenAI. A clave queda no almacenamento seguro deste dispositivo e nunca se inclúe nas copias de seguranza.';

  @override
  String get assistantEndpointHelp => 'Por exemplo, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Déixao baleiro para conservar a clave gardada';

  @override
  String get assistantApiKeyRequired => 'Introduce unha clave da API';

  @override
  String get assistantProviderSaved => 'Provedor gardado';

  @override
  String get assistantProviderRemoved => 'Provedor quitado e clave eliminada';

  @override
  String get assistantRemoveProviderConfirm =>
      'Queres quitar o provedor e eliminar a clave da API gardada neste dispositivo?';

  @override
  String get assistantAskEveryTime => 'Preguntar antes de cada solicitude';

  @override
  String get assistantSummarizing => 'Resumindo…';

  @override
  String assistantSummaryNote(String host) {
    return 'Xerado por $host. Revísao antes de confiar nel.';
  }

  @override
  String get assistantCopy => 'Copiar';

  @override
  String get assistantCopied => 'Copiado';

  @override
  String get assistantConfigure => 'Configurar o provedor';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Movéronse todos os eventos desta serie';

  @override
  String get calendarEventReminder => 'Recordatorio';

  @override
  String get calendarEventRepeat => 'Repetición';

  @override
  String get calendarEventColor => 'Cor';

  @override
  String get calendarDefaultColor => 'Usar a cor do tipo';

  @override
  String get calendarEventLinkedTask => 'Tarefa vinculada';

  @override
  String get calendarEventNoTask => 'Ningunha tarefa vinculada';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventos',
      one: '1 evento',
      zero: 'Ningún evento',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas que vencen',
      one: '1 tarefa que vence',
      zero: 'ningunha tarefa que venza',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Engade un evento ou un bloque de tempo para planificar este día.';

  @override
  String get calendarNow => 'Hora actual';

  @override
  String get calendarRecurring => 'Repítese';

  @override
  String get calendarEventNotFound => 'Este evento xa non existe';

  @override
  String get calendarEventLocalTime => 'As horas móstranse no fuso horario do dispositivo';

  @override
  String get calendarEventDeleted => 'Evento movido ao lixo';

  @override
  String get calendarConflictMarker => 'Solápase con outro evento';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Os cambios aplícanse a todos os eventos desta serie';

  @override
  String get calendarDragHintSeries => 'Arrastrar un evento que se repite move toda a serie';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tarefa que vence';
  }

  @override
  String get startupErrorTitle => 'Non se puideron abrir os teus datos';

  @override
  String get startupErrorLocked =>
      'A clave de cifrado dos datos deste dispositivo non está dispoñible. Non se eliminou nada. Moitas veces axuda reiniciar o dispositivo. Se restauraches o dispositivo hai pouco, restaura os datos desde unha copia de seguranza cifrada.';

  @override
  String get startupErrorCipher =>
      'Este dispositivo non admite o almacenamento cifrado que precisa a aplicación. Non se gardou nada sen cifrar.';

  @override
  String get startupErrorRetry => 'Tentar de novo';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas pendentes de repaso',
      one: '1 tarxeta pendente de repaso',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count pendentes';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count novas';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Tarxetas consolidadas: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Introduce 0 ou máis';

  @override
  String get flashcardsSearchCards => 'Buscar tarxetas';

  @override
  String get flashcardsSearchEmpty => 'Ningunha tarxeta coincide coa busca';

  @override
  String get flashcardsCardAdded => 'Tarxeta engadida';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Vence $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copiar no portapapeis';

  @override
  String get flashcardsExportTitle => 'Exportar a baralla';

  @override
  String get flashcardsDeleteDeck => 'Eliminar a baralla';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, próximo repaso en $interval';
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
  String get flashcardsShowQuestion => 'Amosar a pregunta';

  @override
  String get flashcardsImportField => 'Tarxetas para importar';

  @override
  String get flashcardsNothingToStudy => 'Non hai nada que estudar';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas listas para estudar',
      one: '1 tarxeta lista para estudar',
      zero: 'Ningunha tarxeta lista',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Por valoración';

  @override
  String get flashcardsDeckNotFound => 'Esta baralla xa non está dispoñible.';

  @override
  String get focusSessionDeleted => 'Sesión eliminada';

  @override
  String get focusDeleteConfirm =>
      'Queres eliminar esta sesión do historial? O seu tempo xa non contará para as túas metas.';

  @override
  String get focusUnlinkTask => 'Quitar a tarefa vinculada';

  @override
  String get focusNoteHint => 'En que traballaches?';

  @override
  String get focusTargetCaption => 'Medido a partir das sesións gardadas';

  @override
  String get focusModeLabel => 'Modo do temporizador';

  @override
  String focusUpNext(String phase) {
    return 'A continuación: $phase';
  }

  @override
  String get focusStopwatchHint => 'Conta cara arriba ata que o deteñas.';

  @override
  String get focusOpenHint => 'Sen límite de tempo. Detén cando remates.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Os recordatorios están desactivados na configuración. Non recibirás avisos cando remate unha sesión.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Todos';

  @override
  String get goalsFilterPeriod => 'Filtro de período';

  @override
  String get goalsFilterStatus => 'Filtro de estado';

  @override
  String get goalsEmptyFiltered => 'Ningún obxectivo coincide con este filtro';

  @override
  String goalsDueOn(String date) {
    return 'Vence $date';
  }

  @override
  String get goalsDeadline => 'Data límite (opcional)';

  @override
  String get goalsNoDeadline => 'Sen data límite';

  @override
  String get goalsSetDeadline => 'Definir a data límite';

  @override
  String get goalsRemoveDeadline => 'Quitar a data límite';

  @override
  String get goalsDescription => 'Descrición (opcional)';

  @override
  String get goalsTitleLabel => 'Título';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Meta acadada';

  @override
  String get goalsLogged => 'Progreso rexistrado';

  @override
  String get goalsEntryDeleted => 'Entrada quitada';

  @override
  String get goalsDeleteEntry => 'Quitar a entrada';

  @override
  String get goalsDeleted => 'Obxectivo eliminado';

  @override
  String get goalsMarkActive => 'Marcar como activo';

  @override
  String get goalsNotFound => 'Este obxectivo xa non está dispoñible';

  @override
  String get goalsLinkTask => 'Vincular unha tarefa';

  @override
  String get goalsNoLinkedTasks => 'Aínda non hai tarefas vinculadas';

  @override
  String get goalsUnlinkTask => 'Desvincular a tarefa';

  @override
  String get goalsTaskOpen => 'Aínda non se completou';

  @override
  String get goalsTaskLinked => 'Tarefa vinculada';

  @override
  String get goalsTaskUnlinked => 'Tarefa desvinculada';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas vinculadas completadas',
      one: '1 tarefa vinculada completada',
    );
    return 'Inclúe $_temp0 neste período';
  }

  @override
  String get goalsHistoryAllTime =>
      'As entradas de períodos anteriores consérvanse aquí, pero só contan para o seu período.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done de $total feitos hoxe';
  }

  @override
  String get habitsNothingToday => 'Non hai ningún hábito programado para hoxe';

  @override
  String get habitsDecrease => 'Quitar unha marca';

  @override
  String get habitsResetToday => 'Restablecer hoxe';

  @override
  String get habitsCheckInHint => 'Mantén premido para axustar';

  @override
  String get habitsName => 'Nome';

  @override
  String get habitsColor => 'Cor';

  @override
  String get habitsValidationDays => 'Escolle polo menos un día';

  @override
  String habitsReminderAt(String time) {
    return 'Cada día ás $time';
  }

  @override
  String get habitsSetReminder => 'Definir a hora do recordatorio';

  @override
  String get habitsRemoveReminder => 'Quitar o recordatorio';

  @override
  String get habitsReminderNote =>
      'Os recordatorios aparecen nos días programados se as notificacións están permitidas.';

  @override
  String get habitsArchived => 'Hábito arquivado';

  @override
  String get habitsNotFound => 'Este hábito xa non está dispoñible';

  @override
  String get habitsLast30 => 'Últimos 30 días';

  @override
  String get habitsConsistencyNone => 'Aínda non hai datos dabondo';

  @override
  String get habitsCalendar => 'Historial de marcas';

  @override
  String get habitsCalendarHint => 'Toca un día para corrixilo.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count de $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Marcas dos últimos 90 días. Constancia $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Marcas dos últimos 90 días. Aínda non hai datos dabondo.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Os días en pausa non afectan á racha.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arquivar o hábito';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count veces ao día',
      one: 'Unha vez ao día',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Outras notas';

  @override
  String get notesAllNotebooks => 'Todos os cadernos';

  @override
  String get notesNotebookName => 'Nome do caderno';

  @override
  String get notesNotebookColor => 'Cor';

  @override
  String get notesDeleteNotebook => 'Eliminar o caderno';

  @override
  String get notesDeleteNotebookMessage =>
      'O caderno quítase. As súas notas consérvanse e aparecen en Todos os cadernos.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fixa as notas importantes para que queden arriba.';

  @override
  String get notesEmptyFavorites => 'As notas que marques como favoritas aparecen aquí.';

  @override
  String get notesEmptyArchived => 'As notas arquivadas aparecen aquí.';

  @override
  String get notesEmptyFiltered => 'Ningunha nota coincide con estes filtros.';

  @override
  String get notesArchivedSnack => 'Nota arquivada';

  @override
  String get notesUnarchivedSnack => 'A nota volveu ás túas notas';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done de $total feitos';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formato';

  @override
  String get notesWrite => 'Escribir';

  @override
  String get notesPreviewEmpty => 'Aínda non hai nada que previsualizar.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Aínda non hai outras notas que liguen aquí. Liga a esta nota con [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Pon un título a esta nota para que outras notas poidan ligar a ela.';

  @override
  String get notesLinkedTasksEmpty => 'Non hai tarefas vinculadas a esta nota.';

  @override
  String notesLinkMissing(String title) {
    return 'Aínda non hai ningunha nota titulada «$title».';
  }

  @override
  String get notesNotFound => 'Esta nota xa non existe.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Elemento da lista: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Abrir a nota $title';
  }

  @override
  String get notesTagsHint => 'Engade etiquetas escribindo #etiqueta na nota.';

  @override
  String get notesTaskDone => 'Completada';

  @override
  String get notifTimerDoneBody => 'O tempo que definiches xa pasou.';

  @override
  String get onboardingPrivatePointDevice => 'Gardado só neste dispositivo, cifrado';

  @override
  String get onboardingPrivatePointAccount => 'Non fai falta conta';

  @override
  String get onboardingPrivatePointTracking => 'Sen analíticas nin seguimento';

  @override
  String get onboardingLanguageBody => 'Podes cambialo cando queiras en Configuración.';

  @override
  String get onboardingNext => 'Seguinte';

  @override
  String get projectsActive => 'Activos';

  @override
  String get projectNameHint => 'p. ex. Lanzamento do produto';

  @override
  String get projectGoalHint => 'Como é o resultado rematado?';

  @override
  String get projectNoDeadline => 'Sen data límite';

  @override
  String get projectTasksOpen => 'Tarefas abertas';

  @override
  String get projectTasksCompleted => 'Tarefas completadas';

  @override
  String get projectAddTask => 'Engadir unha tarefa ao proxecto';

  @override
  String get projectAddNote => 'Nova nota do proxecto';

  @override
  String get projectLinkedNotes => 'Notas';

  @override
  String get projectNoTasks => 'Aínda non hai tarefas neste proxecto';

  @override
  String get projectArchivedBadge => 'Arquivado';

  @override
  String get projectDeleted => 'Proxecto movido ao lixo';

  @override
  String get projectDeleteMessage => 'As tarefas quedan na túa lista sen proxecto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent por cento completado';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count resultados',
      one: '1 resultado',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrar por tipo';

  @override
  String searchRecentTap(String query) {
    return 'Buscar de novo $query';
  }

  @override
  String get settingsLanguageHint =>
      'Escolle o idioma de toda a aplicación. Os nomes móstranse no seu propio idioma.';

  @override
  String get settingsThemeHint => 'Claro, escuro ou segundo o sistema';

  @override
  String settingsDecrease(String setting) {
    return 'Reducir $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Aumentar $setting';
  }

  @override
  String get settingsQuietStart => 'Comeza';

  @override
  String get settingsQuietEnd => 'Remata';

  @override
  String get settingsNotificationsHint =>
      'Isto garda a túa preferencia na aplicación. É posible que o sistema tamén pida permiso.';

  @override
  String get settingsDashboardHint =>
      'Arrastra para reordenar. Desactiva as seccións que non necesites.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reordenar $section';
  }

  @override
  String get settingsDashboardReset => 'Restaurar a orde predeterminada';

  @override
  String get settingsAssistantDesc =>
      'Axuda opcional para planificar. Nada sae deste dispositivo a non ser que conectes un provedor.';

  @override
  String get settingsAssistantSetup => 'Asistente e configuración do provedor';

  @override
  String get settingsTrashDesc => 'Restaura ou elimina para sempre os elementos quitados';

  @override
  String get settingsEraseFirstBody =>
      'Non se pode desfacer. Considera crear antes unha copia de seguranza cifrada.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Escribe $word';
  }

  @override
  String get settingsEraseFailed => 'Non se puideron borrar os datos. Non se cambiou nada.';

  @override
  String get settingsAboutTagline => 'Un espazo de produtividade privado que funciona en local.';

  @override
  String get backupShowPassword => 'Amosar o contrasinal';

  @override
  String get backupHidePassword => 'Ocultar o contrasinal';

  @override
  String get backupSaved => 'Copia de seguranza gardada';

  @override
  String get backupFailed =>
      'Non se puido crear a copia de seguranza. Os teus datos non cambiaron.';

  @override
  String get backupReadFailed => 'Non se puido ler o ficheiro seleccionado.';

  @override
  String get backupRestoreFailed => 'A restauración fallou. Non se cambiou nada.';

  @override
  String get backupShareSubject => 'Copia de seguranza cifrada de Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count días',
      one: 'Cada día',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count semanas',
      one: 'Cada semana',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count meses',
      one: 'Cada mes',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count anos',
      one: 'Cada ano',
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
    return 'os $days';
  }

  @override
  String get repeatEndsLabel => 'Remata';

  @override
  String get repeatEndsAfter => 'Despois dun número de veces';

  @override
  String get repeatCountLabel => 'Repeticións';

  @override
  String get reminderNone => 'Sen recordatorio';

  @override
  String get reminderCustomTime => 'A unha hora concreta';

  @override
  String get a11yDecrease => 'Reducir';

  @override
  String get a11yIncrease => 'Aumentar';

  @override
  String get pickTaskTitle => 'Escolle unha tarefa';

  @override
  String get pickTaskEmpty => 'Non hai tarefas abertas';

  @override
  String get tasksSearchTooltip => 'Buscar tarefas';

  @override
  String get tasksSectionOverdue => 'Atrasadas';

  @override
  String get tasksSectionToday => 'Hoxe';

  @override
  String get tasksRecurringSemantics => 'Repítese';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioridade mínima';

  @override
  String get tasksFilterCategory => 'Categoría';

  @override
  String get tasksFilterAnyCategory => 'Calquera categoría';

  @override
  String get tasksFilterLabel => 'Etiqueta';

  @override
  String get tasksFilterAnyLabel => 'Calquera etiqueta';

  @override
  String get tasksFilterReset => 'Restablecer os filtros';

  @override
  String get tasksViewByProject => 'Por proxecto';

  @override
  String get tasksViewByPriority => 'Por prioridade';

  @override
  String get tasksViewByCategory => 'Por categoría';

  @override
  String get tasksGroupNoCategory => 'Sen categoría';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas',
      one: '1 tarefa',
    );
    return 'Bloqueada por $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Esta tarefa está bloqueada por tarefas sen rematar. Queres completala igualmente?';

  @override
  String get taskStartFocus => 'Concentrarse nesta tarefa';

  @override
  String get taskRemoveDate => 'Quitar a data';

  @override
  String get taskAllDay => 'Sen hora concreta';

  @override
  String get taskSaved => 'Tarefa gardada';

  @override
  String get taskCreated => 'Tarefa creada';

  @override
  String get taskReminderNeedsDue => 'Define unha data límite para usar recordatorios relativos';

  @override
  String get taskSubtaskDetailsHint =>
      'Garda primeiro a tarefa para engadir subtarefas, elementos de lista, etiquetas e dependencias.';

  @override
  String get taskLabelName => 'Nome da etiqueta';

  @override
  String get taskMoreDetails => 'Detalles';

  @override
  String get taskPlanning => 'Planificación';

  @override
  String get taskOrganize => 'Organización';

  @override
  String get taskBreakdown => 'Desagregación';

  @override
  String get trashDeleteTaskTitle => 'Queres eliminar esta tarefa para sempre?';

  @override
  String get trashDeleteNoteTitle => 'Queres eliminar esta nota para sempre?';

  @override
  String get trashDeleteBody => 'Non se pode desfacer.';

  @override
  String get trashEmptyTitle => 'Queres baleirar o lixo?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eliminaranse $count elementos para sempre.',
      one: 'Eliminarase 1 elemento para sempre.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restaurado';

  @override
  String get trashPurged => 'Eliminado para sempre';

  @override
  String trashDeletedOn(String date) {
    return 'Eliminado o $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos',
      one: '1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Ler en voz alta';

  @override
  String get flashcardsTtsUnavailable =>
      'A conversión de texto a voz non está dispoñible neste dispositivo.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Non hai ningunha voz instalada para este idioma. Engade unha na configuración de texto a voz de Android.';

  @override
  String get calendarAgenda => 'Axenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Faísca',
      'rocket': 'Foguete',
      'book': 'Libro',
      'work': 'Traballo',
      'home': 'Casa',
      'heart': 'Corazón',
      'code': 'Código',
      'palette': 'Paleta',
      'fitness': 'Exercicio',
      'school': 'Escola',
      'travel': 'Viaxes',
      'money': 'Aforros',
      'other': 'Icona',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Máis campos';

  @override
  String get cardFieldExample => 'Exemplo';

  @override
  String get cardFieldExplanation => 'Explicación';

  @override
  String get cardFieldPronunciation => 'Pronuncia';

  @override
  String get cardFieldNotes => 'Notas adicionais';

  @override
  String get projectMilestones => 'Fitos';

  @override
  String get milestoneAdd => 'Engadir un fito';

  @override
  String get milestoneEdit => 'Editar o fito';

  @override
  String get milestoneTitleLabel => 'Fito';

  @override
  String get milestoneNoDate => 'Sen data';

  @override
  String get milestonesEmpty =>
      'Aínda non hai fitos. Engade puntos de control con datas para seguir o proxecto no calendario.';

  @override
  String get milestoneDeleted => 'Fito eliminado';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marcar o fito «$title» como feito';
  }

  @override
  String calendarMilestone(String project) {
    return 'Fito · $project';
  }

  @override
  String get tasksViewInbox => 'Bandexa de entrada';

  @override
  String get tasksViewArchived => 'Arquivadas';

  @override
  String get tasksEmptyInbox =>
      'As tarefas sen proxecto nin data chegan aquí. Ordénaas cando teñas un minuto.';

  @override
  String get tasksEmptyArchived =>
      'As tarefas arquivadas gárdanse aquí, fóra das túas listas e recordatorios.';

  @override
  String get taskArchivedBadge => 'Arquivada';

  @override
  String get taskStatusInProgress => 'En curso';

  @override
  String get taskArchived => 'Tarefa arquivada';

  @override
  String get taskUnarchived => 'Tarefa restaurada do arquivo';

  @override
  String get focusPlanTitle => 'Plan de sesións';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sesións de concentración';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pausa longa despois de';

  @override
  String get focusPlanSkipLastBreak => 'Omitir a última pausa';

  @override
  String get focusPlanAutoBreaks => 'Iniciar as pausas automaticamente';

  @override
  String get focusPlanAutoFocus => 'Iniciar a concentración automaticamente despois dunha pausa';

  @override
  String get focusPlanSave => 'Gardar o plan';

  @override
  String get focusPlanNameHint => 'p. ex. Preparación do exame';

  @override
  String get focusPlanSaved => 'Plan gardado';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min de concentración, $rest min de pausa';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Reducir $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Aumentar $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sesión $current de $total';
  }

  @override
  String get focusSeriesComplete => 'Serie completada. Moi ben!';

  @override
  String get filterAll => 'Todas';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importadas · $duplicates duplicadas omitidas · $invalid filas incompletas';
  }

  @override
  String get flashcardsSuspend => 'Suspender a tarxeta';

  @override
  String get flashcardsResume => 'Retomar a tarxeta';

  @override
  String get flashcardsSuspended => 'Tarxeta suspendida: non se programará';

  @override
  String get flashcardsResumed => 'Tarxeta retomada';

  @override
  String get flashcardsSuspendedFilter => 'Suspendida';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown de $total tarxetas';
  }

  @override
  String get flashcardsImportFile => 'Desde un ficheiro';

  @override
  String get speechTitle => 'Voz';

  @override
  String get speechAppLanguage => 'Idioma da aplicación';

  @override
  String get speechFrontLanguage => 'Idioma do anverso';

  @override
  String get speechBackLanguage => 'Idioma do reverso';

  @override
  String get speechRepeat => 'Repetir cada lectura';

  @override
  String get speechRate => 'Velocidade';

  @override
  String get speechAutoRead => 'Ler a pregunta automaticamente';

  @override
  String get speechHint =>
      'Usa as voces instaladas neste dispositivo, sen conexión. Se un idioma non ten voz, avisarase e non se usará ningunha outra.';

  @override
  String get studyHowTitle => 'Como queres estudar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repasar $count tarxetas',
      one: 'Repasar 1 tarxeta',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Practicar todas as tarxetas (a programación non cambia)';

  @override
  String get studyPracticeMistakes => 'Practicar os erros recentes';

  @override
  String get studyPracticeHint =>
      'As roldas de práctica nunca cambian cando toca repasar as tarxetas. O repaso actualiza a programación.';

  @override
  String get studyModeClassic => 'Clásico';

  @override
  String get studyModeReverse => 'Inverso';

  @override
  String get studyModeMixed => 'Nos dous sentidos';

  @override
  String get studyModeTyped => 'Escribir a resposta';

  @override
  String get studyModeChoice => 'Opción múltiple';

  @override
  String get studyModeListening => 'Escoita';

  @override
  String get studyPractice => 'práctica';

  @override
  String get studyNoMistakes => 'Non hai erros recentes nesta baralla. Moi ben!';

  @override
  String get studyTypeAnswer => 'Escribe a túa resposta';

  @override
  String get studyCheck => 'Comprobar';

  @override
  String get studyKnewIt => 'Sabíao';

  @override
  String get studyDidntKnow => 'Non o sabía';

  @override
  String studyMistakes(int count) {
    return 'Falladas ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repetir as tarxetas falladas';

  @override
  String get studyCorrect => 'Correcto';

  @override
  String get studyAlmost => 'Case: revisa a ortografía';

  @override
  String get studyWrong => 'Non de todo';

  @override
  String get studyShowText => 'Amosar o texto';

  @override
  String get flashcardsImportFileFailed =>
      'Non se puido abrir o ficheiro. No seu lugar, podes pegar o contido.';

  @override
  String get studyNoMatchingCards => 'Aínda non hai tarxetas para esta selección.';

  @override
  String get studyPracticeNew => 'Só novas';

  @override
  String get studyPracticeHard => 'Tarxetas difíciles';

  @override
  String get studyPracticeFavorites => 'Favoritas';

  @override
  String get studySessionSize => 'Tarxetas por sesión';

  @override
  String get studySessionAll => 'Todas';

  @override
  String get studyOrder => 'Orde';

  @override
  String get studyOrderDue => 'Primeiro as máis atrasadas';

  @override
  String get studyOrderRandom => 'Aleatoria';

  @override
  String get studyOrderHardest => 'Primeiro as máis difíciles';

  @override
  String get flashcardsHard => 'Difícil';

  @override
  String get flashcardsFavorites => 'Favoritas';

  @override
  String get flashcardsFavorite => 'Engadir a favoritas';

  @override
  String get flashcardsUnfavorite => 'Quitar de favoritas';

  @override
  String get flashcardsDuplicate => 'Duplicar';

  @override
  String get flashcardsMoveTo => 'Mover á baralla';

  @override
  String get flashcardsNoOtherDeck => 'Crea primeiro outra baralla.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas movidas',
      one: 'Tarxeta movida',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Engadir unha etiqueta';

  @override
  String get flashcardsTagHint => 'p. ex. verbos';

  @override
  String flashcardsSelected(int count) {
    return '$count seleccionadas';
  }

  @override
  String get flashcardsSelectAll => 'Seleccionar todas as visibles';

  @override
  String flashcardsSelectCard(String front) {
    return 'Seleccionar $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Lembranza $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Posible duplicado';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Esta baralla xa ten «$front» → «$back». Queres gardala igualmente?';
  }

  @override
  String get flashcardsSaveAnyway => 'Gardar igualmente';

  @override
  String get flashcardsStats => 'Estatísticas';

  @override
  String get flashcardsStatTotal => 'Tarxetas';

  @override
  String get flashcardsStatLearning => 'En aprendizaxe';

  @override
  String get flashcardsStatMatureCaption => 'Lembradas 21+ días';

  @override
  String get flashcardsStatReviewsToday => 'Repasos de hoxe';

  @override
  String get flashcardsStatCorrect => 'Respostas correctas';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Últimos $days días';
  }

  @override
  String get flashcardsStatForget => 'Taxa de esquecemento';

  @override
  String get flashcardsStatForgetCaption => '«De novo» en tarxetas aprendidas';

  @override
  String get flashcardsStatRecall => 'Lembranza agora';

  @override
  String get flashcardsStatRecallCaption => 'Estimación FSRS, tarxetas repasadas';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repasos por día · $count en total';
  }

  @override
  String get flashcardsStatHistory => 'Últimas respostas';

  @override
  String get flashcardsStatNoHistory =>
      'Aínda non hai repasos. Estuda a baralla para ver aquí o teu progreso.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Ler $field en voz alta';
  }

  @override
  String get speechVoice => 'Voz';

  @override
  String get speechVoiceDefault => 'Automática';

  @override
  String get speechVoiceOnline => 'precisa internet';

  @override
  String get speechTest => 'Probar a voz';

  @override
  String get importNext => 'Vista previa';

  @override
  String get importPreviewTitle => 'Asociar columnas a campos';

  @override
  String get importIgnoreColumn => 'Ignorar';

  @override
  String importColumn(int n) {
    return 'Columna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready tarxetas listas · omitiranse $invalid filas incompletas';
  }

  @override
  String get importNeedFrontBack => 'Escolle que columnas son o anverso e o reverso.';

  @override
  String get actionMoveUp => 'Mover arriba';

  @override
  String get actionMoveDown => 'Mover abaixo';

  @override
  String get flashcardsLayoutTitle => 'Deseño da tarxeta';

  @override
  String get flashcardsLayoutHint =>
      'Cambia o nome, oculta ou reordena os campos adicionais desta baralla. O contido das tarxetas nunca cambia.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Amosar $field ao estudar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Revelar a resposta paso a paso';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Primeiro aparece o reverso; cada campo adicional ábrese cun toque.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Amosar $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Este ficheiro supera os $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imaxe';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Engadir unha imaxe';

  @override
  String get flashcardsAddAudio => 'Engadir audio';

  @override
  String get flashcardsPlayAudio => 'Reproducir a gravación';

  @override
  String get flashcardsAudioUnavailable =>
      'Esta gravación non se pode reproducir neste dispositivo.';

  @override
  String get flashcardsCustomFields => 'Os teus campos';

  @override
  String get flashcardsTemplates => 'Modelos';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Campo $n';
  }

  @override
  String get flashcardsAddField => 'Engadir un campo';

  @override
  String get flashcardsFieldName => 'Nome do campo';

  @override
  String get flashcardsFieldLangDefault => 'Idioma da cara';

  @override
  String get flashcardsTemplateConfirm =>
      'O modelo define como se amosan os campos e engade os seus. As túas tarxetas e os campos existentes non cambian.';

  @override
  String get flashcardsApplyTemplate => 'Aplicar';

  @override
  String get templateVocabulary => 'Vocabulario';

  @override
  String get templateTwoTranslations => 'Palabra con dúas traducións';

  @override
  String get templateQuestionAnswer => 'Pregunta e resposta';

  @override
  String get templateDefinition => 'Termo e definición';

  @override
  String get templateGrammar => 'Regra gramatical';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Segunda tradución';

  @override
  String get templateFieldSynonyms => 'Sinónimos';

  @override
  String get templateFieldRule => 'Regra';

  @override
  String get deckCategory => 'Nivel ou tema';

  @override
  String get deckCategoryHint => 'p. ex. A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Buscar en todas as tarxetas';

  @override
  String get flashcardsSearchAllHint => 'Palabra, tradución, exemplo, nota, etiqueta…';

  @override
  String get flashcardsAllDecks => 'Todas as barallas';

  @override
  String get flashcardsAllLanguages => 'Todos os idiomas';

  @override
  String get flashcardsLangUnset => 'Idioma sen definir';

  @override
  String get flashcardsLevelUnset => 'Sen nivel nin tema';

  @override
  String get flashcardsByLanguage => 'Progreso por idioma';

  @override
  String get flashcardsByLevel => 'Progreso por nivel ou tema';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks barallas · $cards tarxetas · $mature consolidadas · $due pendentes · $correct correctas (30 días)';
  }

  @override
  String get flashcardsRecord => 'Gravar';

  @override
  String get flashcardsRecording => 'Gravando…';

  @override
  String get flashcardsRecordStop => 'Deter e conservar';

  @override
  String get flashcardsMicDenied =>
      'O acceso ao micrófono está desactivado. Permíteo na configuración do sistema para gravar.';

  @override
  String get flashcardsRecordFailed => 'A gravación non está dispoñible neste dispositivo.';

  @override
  String get soundsTitle => 'Sons';

  @override
  String get soundsNature => 'Natureza';

  @override
  String get soundsNoise => 'Ruído para concentrarse';

  @override
  String get soundRain => 'Choiva';

  @override
  String get soundStorm => 'Treboada';

  @override
  String get soundRiver => 'Río';

  @override
  String get soundOcean => 'Ondas do mar';

  @override
  String get soundFire => 'Fogueira';

  @override
  String get soundForest => 'Paxaros do bosque';

  @override
  String get soundNight => 'Noite de verán';

  @override
  String get soundWhite => 'Ruído branco';

  @override
  String get soundPink => 'Ruído rosa';

  @override
  String get soundBrown => 'Ruído marrón';

  @override
  String get soundsPlay => 'Reproducir';

  @override
  String get soundsSleep => 'Temporizador de sono';

  @override
  String get soundsSleepOff => 'Desactivado';

  @override
  String soundsSleepAt(String time) {
    return 'Detense ás $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Poden soar ata $count sons á vez.';
  }

  @override
  String get soundsHint => 'Toca un son para comezar. Mestura varios e axusta o volume de cada un.';

  @override
  String get soundsMixer => 'Mestura';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume de $name';
  }

  @override
  String get soundsChannel => 'Sons da natureza';

  @override
  String get settingsEndTone => 'Son de fin do temporizador';

  @override
  String get toneGentle => 'Pitidos suaves';

  @override
  String get toneBeeps => 'Pitidos';

  @override
  String get toneWood => 'Golpe na madeira';

  @override
  String get toneBird => 'Canto de paxaro';

  @override
  String get toneStream => 'Regato';

  @override
  String get toneSystem => 'Son do teléfono';

  @override
  String get speechOnPhone => 'Neste teléfono';

  @override
  String get speechAllLanguages => 'Todos os idiomas';

  @override
  String get speechSearchLanguage => 'Buscar idiomas';

  @override
  String get speechGetVoices => 'Descargar máis voces';

  @override
  String get speechGetVoicesHint =>
      'As voces dos idiomas que non a teñen pódense descargar na configuración de voz do teléfono.';

  @override
  String get speechSettingsFailed => 'Non se puido abrir a configuración de voz deste teléfono.';

  @override
  String get speechVoiceMissing => 'Ningunha voz instalada';

  @override
  String get speechPause => 'Pausa entre repeticións';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Ler o exemplo coa resposta';

  @override
  String get flashListen => 'Escoitar';

  @override
  String get flashListenNext => 'Seguinte tarxeta';

  @override
  String get flashListenEmpty => 'Non hai tarxetas para escoitar.';

  @override
  String get flashViewTable => 'Táboa';

  @override
  String get flashViewCards => 'Tarxetas';

  @override
  String get flashSwapSides => 'Intercambiar as columnas';

  @override
  String get flashSort => 'Ordenar';

  @override
  String get flashSortNewest => 'Primeiro as máis novas';

  @override
  String get flashSortAlpha => 'Da A á Z';

  @override
  String get flashSortDue => 'Primeiro as pendentes';

  @override
  String get flashSortHard => 'Primeiro as máis difíciles';

  @override
  String get flashPasteCards => 'Pegar tarxetas';

  @override
  String get flashClipboardEmpty => 'O portapapeis non ten texto.';

  @override
  String get flashMenuAdd => 'Engadir tarxetas';

  @override
  String get flashMenuDeck => 'Baralla';

  @override
  String get flashToday => 'Hoxe';

  @override
  String get flashStudyNow => 'Estudar';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas respondidas',
      one: '1 tarxeta respondida',
      zero: 'Ningunha tarxeta respondida',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Choiva no bosque';

  @override
  String get autoBackupTitle => 'Copias de seguranza automáticas';

  @override
  String get autoBackupDesc => 'Cada día neste teléfono; consérvanse as 7 últimas';

  @override
  String get autoBackupHint =>
      'Estas copias quedan neste teléfono e elimínanse se desinstalas a aplicación. Para cambiar de teléfono, usa «Facer copia de seguranza» para gardar un ficheiro.';

  @override
  String get autoBackupNone => 'Aínda non hai ningunha copia automática. A primeira faise hoxe.';

  @override
  String get autoBackupRestore => 'Restaurar';

  @override
  String autoBackupConfirm(String date) {
    return 'Queres substituír todos os datos actuais pola copia do $date?';
  }

  @override
  String get autoBackupRestored => 'Restaurado.';

  @override
  String get errorLogTitle => 'Rexistro de erros';

  @override
  String get errorLogHint =>
      'Se algo vai mal, anótase aquí: só o tipo de erro e onde está no código, nunca o teu contido. Compárteo para axudar a solucionar o problema.';

  @override
  String get errorLogEmpty => 'Non se rexistrou ningún erro.';

  @override
  String get errorLogClear => 'Borrar';

  @override
  String get soundsWithFocus => 'Reproducir coas sesións de concentración';

  @override
  String get soundsWithFocusHint =>
      'A túa mestura comeza cunha sesión de concentración e ponse en pausa nas pausas.';

  @override
  String get soundsSavedMixes => 'Mesturas gardadas';

  @override
  String get soundsSaveMix => 'Gardar esta mestura';

  @override
  String get soundsMixNameHint => 'Nome, p. ex. Biblioteca chuviosa';

  @override
  String soundsDeleteMix(String name) {
    return 'Queres eliminar a mestura «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Unha vez ao día, só cando hai tarxetas para repasar';

  @override
  String get settingsReviewTime => 'Hora do recordatorio';

  @override
  String get shortcutFocus => 'Concentración';

  @override
  String get shortcutNewTask => 'Nova tarefa';

  @override
  String get shortcutReview => 'Repasar tarxetas';

  @override
  String get shortcutSounds => 'Sons da natureza';

  @override
  String get myDayTitle => 'Comezar o meu día';

  @override
  String get myDayHint => 'O teu día dunha ollada e, despois, un toque para concentrarte';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas para hoxe',
      one: '1 tarefa para hoxe',
      zero: 'Ningunha tarefa para hoxe',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Hoxe non hai máis eventos';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Seguinte: $title ás $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Quedan $count hábitos',
      one: 'Queda 1 hábito',
      zero: 'Todos os hábitos feitos',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Comezar cunha sesión de concentración';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-awwal';

  @override
  String get hijriMonth4 => 'Rabi ath-thani';

  @override
  String get hijriMonth5 => 'Jumada al-ula';

  @override
  String get hijriMonth6 => 'Jumada al-akhira';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Xaabán';

  @override
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Xawwal';

  @override
  String get hijriMonth11 => 'Dhu al-qada';

  @override
  String get hijriMonth12 => 'Dhu al-hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Datas da héxira';

  @override
  String get settingsHijriHint => 'Móstranse no calendario e na pantalla de inicio (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '1 día',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done de $goal tarxetas hoxe';
  }

  @override
  String get studyGoalReached => 'Obxectivo diario acadado. Moi ben!';

  @override
  String get studyWeekTitle => 'A túa semana';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarxetas respondidas en 7 días',
      one: '1 tarxeta respondida en 7 días',
      zero: 'Ningunha tarxeta respondida en 7 días',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration de concentración en 7 días';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Racha: $current · Mellor: $best';
  }

  @override
  String get studyGoalTitle => 'Obxectivo diario (tarxetas)';

  @override
  String get studyGoalOff => 'Desactivado';

  @override
  String get focusDndTitle => 'Non molestar mentres te concentras';

  @override
  String get focusDndHint => 'Actívase en cada sesión de concentración e desactívase na pausa';

  @override
  String get focusDndNeedsAccess => 'Permite o acceso na configuración do teléfono para usalo';

  @override
  String get voiceInput => 'Ditar';

  @override
  String get voiceInputPrompt => 'Fala agora';

  @override
  String get voiceInputUnavailable =>
      'A entrada de voz non está dispoñible neste teléfono. Instala ou activa un servizo de voz (por exemplo, Recoñecemento e síntese de voz de Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Saída do sol';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Liga Musulmá Mundial';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, A Meca';

  @override
  String get prayerMethodEgypt => 'Autoridade Xeral Exipcia';

  @override
  String get prayerMethodJordan => 'Xordania, Ministerio de Awqaf';

  @override
  String get prayerMethodKarachi => 'Universidade de Ciencias Islámicas, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Rexión do Golfo';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turquía, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapur, Malaisia, Indonesia';

  @override
  String get prayerMethodFrance => 'Francia (12°)';

  @override
  String get prayerMethodRussia => 'Rusia, Administración Espiritual';

  @override
  String prayerNotifTitle(String name) {
    return 'Hora de $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Hora de oración · $time';
  }

  @override
  String get prayerTitle => 'Horas de oración';

  @override
  String get prayerOffHint =>
      'Escolle a túa cidade para ver as horas de oración. Calcúlanse no teléfono; non fai falta acceso á localización.';

  @override
  String get prayerChooseCity => 'Escoller a cidade';

  @override
  String get prayerCity => 'Cidade';

  @override
  String get prayerCitySearch => 'Buscar unha cidade';

  @override
  String get prayerMethod => 'Método de cálculo';

  @override
  String get prayerHanafiAsr => 'Asr hanafí (hora máis tardía)';

  @override
  String get prayerReminders => 'Avisar en cada hora de oración';

  @override
  String get prayerPauseFocus => 'Pausar a concentración á hora de oración';

  @override
  String get prayerPauseFocusHint =>
      'A sesión en curso ponse en pausa; continúa despois da oración';

  @override
  String get prayerTurnOff => 'Desactivar as horas de oración';

  @override
  String get prayerAccuracyNote =>
      'As horas calculadas poden variar uns minutos respecto da túa mesquita local.';

  @override
  String prayerNext(String name, String time) {
    return '$name ás $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Este ficheiro de Anki usa o formato máis novo. En Anki, expórtao de novo con «Support older Anki versions» activado e despois importa ese ficheiro.';

  @override
  String get importTemplate => 'Modelo de folla de cálculo';

  @override
  String get importTemplateFront => 'mazá';

  @override
  String get importTemplateBack => 'unha froita redonda';

  @override
  String get importTemplateExample => 'Como unha mazá cada día.';

  @override
  String get importTemplateTag => 'comida';

  @override
  String get starterTitle => 'Barallas iniciais';

  @override
  String get starterHint =>
      'Engade unha para comezar a estudar axiña. Podes editala ou eliminala despois.';

  @override
  String get starterAdd => 'Engadir';

  @override
  String get starterWords => 'Palabras cotiás en inglés (árabe)';

  @override
  String get starterCapitals => 'Capitais do mundo';

  @override
  String get starterElements => 'Elementos químicos';

  @override
  String get settingsAccent => 'Cor de énfase';

  @override
  String get accentViolet => 'Violeta';

  @override
  String get accentBlue => 'Azul';

  @override
  String get accentTeal => 'Verde azulado';

  @override
  String get accentGreen => 'Verde';

  @override
  String get accentRose => 'Rosa';

  @override
  String get accentAmber => 'Ámbar';

  @override
  String get settingsFlashTextSize => 'Tamaño do texto das tarxetas';

  @override
  String get settingsFlashTextSample => 'Exemplo';

  @override
  String get widgetStartFocus => 'Toca para concentrarte';

  @override
  String widgetFocusUntil(String time) {
    return 'Concentración ata as $time';
  }

  @override
  String get widgetNoCardsDue => 'Tarxetas: todo feito';

  @override
  String get faqMyDayQ => 'Que fai «Comezar o meu día»?';

  @override
  String get faqMyDayA =>
      'Unha vez ao día a pantalla de inicio ofréceo: ves as tarefas de hoxe, o seguinte evento, os hábitos pendentes e as tarxetas para repasar, e comezas unha sesión de concentración cun toque. Mantén premida a icona da aplicación para accións rápidas ou engade o widget á pantalla de inicio para ver o tempo de concentración e as tarxetas pendentes.';

  @override
  String get faqTasksQ => 'Como engado unha tarefa cun recordatorio?';

  @override
  String get faqTasksA =>
      'Toca Nova tarefa en Inicio ou + en Tarefas. Escribe o título ou dío co micrófono e despois define unha data límite, unha hora e un recordatorio. As tarefas atrasadas aparecen primeiro.';

  @override
  String get faqFocusQ => 'Como funciona o temporizador de concentración?';

  @override
  String get faqFocusA =>
      'Escolle Pomodoro, unha conta atrás ou tempo libre e preme Iniciar; as pausas poden seguir automaticamente. En Configuración podes escoller o son final, activar Non molestar mentres te concentras e reproducir os sons da natureza en cada sesión.';

  @override
  String get faqSoundsQ => 'Podo mesturar sons da natureza?';

  @override
  String get faqSoundsA =>
      'Activa ata seis gravacións reais, axusta o volume de cada unha e garda a mestura cun nome. Seguen soando en segundo plano e un temporizador de sono pode detelas. Non se usa música.';

  @override
  String get faqCalendarQ => 'O calendario pode amosar datas da héxira?';

  @override
  String get faqCalendarA =>
      'Si. As datas da héxira (Umm al-Qura) móstranse automaticamente en árabe e pódense activar en Configuración para calquera idioma. Os eventos, as tarefas con data límite e os fitos dos proxectos aparecen xuntos.';

  @override
  String get faqFlashcardsQ => 'Como decide o repaso que tarxetas vexo?';

  @override
  String get faqFlashcardsA =>
      'As tarxetas que coñeces ben volven despois de intervalos máis longos e as que fallas volven pronto (repetición espazada). Valora cada resposta: De novo, Difícil, Ben ou Fácil. Define un obxectivo diario e mantén a racha na tarxeta Hoxe. Define unha data de exame nunha baralla para ver os días que quedan e cantas tarxetas novas aprender cada día. Ordena por «A miña orde» para arrastrar as tarxetas ao seu sitio, toca o altofalante en calquera cara para escoitala e axusta a velocidade e as repeticións no menú Voz.';

  @override
  String get faqImportQ => 'Podo traer tarxetas de Anki ou Excel?';

  @override
  String get faqImportA =>
      'Si. Nunha baralla escolle Importar e despois un ficheiro: Anki (.apkg), Excel (.xlsx) ou CSV, e asocia as columnas. Usa «Modelo de folla de cálculo» para escribir tarxetas no ordenador. As imaxes e os sons dos ficheiros de Anki non se importan.';

  @override
  String get faqNotesQ => 'Que poden facer as notas?';

  @override
  String get faqNotesA =>
      'Escribe libremente con listas de verificación e formato, fixa ou marca como favoritas as notas importantes, engade etiquetas e vincula notas a tarefas. O botón do micrófono permíteche ditar. Unha nota nova pode comezar dun modelo (clase, resumo dun libro, diario, plan semanal) e o botón de imaxe engade fotos.';

  @override
  String get faqHabitsQ => 'Como se contan as rachas dos hábitos?';

  @override
  String get faqHabitsA =>
      'Un día conta cando acadas a meta do hábito nun día programado. Pausar un hábito protexe a racha. Cada hábito pode ter a súa propia hora de recordatorio.';

  @override
  String get faqGoalsQ => 'Como seguen o progreso os obxectivos?';

  @override
  String get faqGoalsA =>
      'Dálle a un obxectivo unha cantidade e unha unidade e rexistra o progreso. A súa tarxeta amosa onde estás e canto queda antes da data límite.';

  @override
  String get faqProjectsQ => 'Para que serven os proxectos?';

  @override
  String get faqProjectsA =>
      'Agrupa tarefas nun proxecto, engade fitos con datas e segue o progreso global. Os fitos tamén aparecen no calendario.';

  @override
  String get faqInsightsQ => 'Que amosan as Estatísticas?';

  @override
  String get faqInsightsA =>
      'O teu tempo de concentración, as tarefas rematadas e o estudo por días e semanas, con suxestións amables. Todo se calcula no teu teléfono.';

  @override
  String get faqSpacesQ => 'Onde están todas as seccións?';

  @override
  String get faqSpacesA =>
      'Espazos recolle todas as partes da aplicación (notas, barallas, hábitos, obxectivos, proxectos, sons e máis) para que a barra principal sexa sinxela.';

  @override
  String get faqBackupQ => 'Como se fan as copias de seguranza dos meus datos?';

  @override
  String get faqBackupA =>
      'Cada día a aplicación garda discretamente unha copia cifrada neste teléfono e conserva as 7 últimas. En Configuración tamén podes exportar un ficheiro de copia protexido con contrasinal e restauralo noutro teléfono.';

  @override
  String get faqPrayerQ => 'Como funcionan as horas de oración?';

  @override
  String get faqPrayerA =>
      'Escolle a túa cidade en Configuración → Horas de oración. As horas calcúlanse no teléfono co método que se usa alí, e podes cambiar o método e a escola do Asr. Podes recibir un aviso en cada oración, e a sesión de concentración en curso ponse en pausa.';

  @override
  String get faqPrivacyQ => 'Onde se gardan os meus datos?';

  @override
  String get faqPrivacyA =>
      'Só no teu teléfono, nunha base de datos cifrada. Non hai conta nin seguimento. Internet só o usan as funcións que activas ti, como o asistente opcional.';

  @override
  String get faqAssistantQ => 'Que é o asistente?';

  @override
  String get faqAssistantA =>
      'Un axudante opcional que conectas ao teu propio servizo de IA en Configuración. Está desactivado de forma predeterminada e pregunta antes de enviar calquera texto dunha nota.';

  @override
  String get tourPlanTitle => 'Planifica o teu día';

  @override
  String get tourPlanBody =>
      'Tarefas, calendario e hábitos nun lugar tranquilo. Comeza cada mañá con «Comezar o meu día».';

  @override
  String get tourFocusTitle => 'Concéntrate a fondo';

  @override
  String get tourFocusBody =>
      'Sesións cronometradas con sons reais da natureza, Non molestar e tons finais suaves.';

  @override
  String get tourLearnTitle => 'Aprende para sempre';

  @override
  String get tourLearnBody =>
      'Tarxetas con repetición espazada, voz en moitos idiomas e importación desde Anki ou Excel.';

  @override
  String get helpTitle => 'Axuda e preguntas';

  @override
  String get helpOpen => 'Abrir';

  @override
  String get helpTour => 'Facer o percorrido';

  @override
  String get tourNext => 'Seguinte';

  @override
  String get tourDone => 'Comecemos';

  @override
  String get transferColTitle => 'Título';

  @override
  String get transferColNotes => 'Notas';

  @override
  String get transferColBody => 'Texto';

  @override
  String get transferColDue => 'Data límite';

  @override
  String get transferColPriority => 'Prioridade (0-3)';

  @override
  String get transferColDone => 'Feita';

  @override
  String get transferColProject => 'Proxecto';

  @override
  String get transferColCategory => 'Categoría';

  @override
  String get transferTitle => 'Importación e exportación';

  @override
  String get transferSaveAs => 'Gardar como';

  @override
  String get transferImport => 'Importar dun ficheiro';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ou unha táboa de Word. Columnas: título, data límite (2026-12-31), prioridade 0-3, feita, proxecto, notas. As tarefas que xa están na aplicación omítense.';

  @override
  String get transferImportNotesHint =>
      'Os ficheiros de Word, Markdown ou texto convértense nunha nota. Excel ou CSV: unha nota por fila (título, texto).';

  @override
  String get transferSaved => 'Ficheiro gardado';

  @override
  String get transferFailed => 'Non se puido crear o ficheiro. Non se cambiou nada.';

  @override
  String get transferUnsupported =>
      'Este ficheiro non se pode ler aquí. Usa Excel, CSV, Word, Markdown ou texto.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added engadidos',
      one: '1 engadido',
      zero: 'Non hai nada novo que engadir',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Texto';

  @override
  String get transferAllNotes => 'Todas as notas';

  @override
  String get transferThisNote => 'Esta nota';

  @override
  String get transferDeckFormats => 'Gardar como Excel, Word ou PDF';

  @override
  String get faqFilesQ => 'Podo usar ficheiros de Excel, Word ou PDF?';

  @override
  String get faqFilesA =>
      'Si. Tarefas e Notas teñen un botón de importación e exportación (dúas frechas) arriba, e cada baralla teno no seu menú. Garda como Excel, CSV, Word ou PDF, ou trae ficheiros de Excel, CSV, Word, Markdown ou texto. Os nomes das columnas poden estar en calquera idioma da aplicación, e os ficheiros que gardaches sempre se poden volver importar.';

  @override
  String get tplLecture => 'Clase';

  @override
  String get tplBook => 'Resumo dun libro';

  @override
  String get tplJournal => 'Diario';

  @override
  String get tplWeek => 'Plan semanal';

  @override
  String get tplLectureBody => '## Puntos clave\n- \n\n## Preguntas\n- [ ] \n\n## Resumo\n';

  @override
  String get tplBookBody =>
      '## Idea principal\n\n## Que aprendín\n- \n\n## Citas\n> \n\n## Para aplicar\n- [ ] \n';

  @override
  String get tplJournalBody => '## Agradezo\n- \n\n## Foco de hoxe\n- [ ] \n\n## Notas\n';

  @override
  String get tplWeekBody =>
      '## Obxectivos desta semana\n- [ ] \n\n### Sábado\n- [ ] \n\n### Domingo\n- [ ] \n\n### Luns\n- [ ] \n\n### Martes\n- [ ] \n\n### Mércores\n- [ ] \n\n### Xoves\n- [ ] \n\n### Venres\n- [ ] \n';

  @override
  String get tplHint => 'Comezar dun modelo';

  @override
  String get noteImage => 'Imaxe';

  @override
  String get noteAddImage => 'Engadir unha imaxe';

  @override
  String get noteImageUnreadable => 'Este ficheiro non é unha imaxe que a aplicación poida ler.';

  @override
  String get noteImageTooLarge => 'Esta imaxe é demasiado grande.';

  @override
  String get examSet => 'Definir a data do exame';

  @override
  String get examDate => 'Data do exame';

  @override
  String get examToday => 'O exame é hoxe. Moita sorte!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Exame en $count días',
      one: 'Exame mañá',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'aprende $count tarxetas novas ao día',
      one: 'aprende 1 tarxeta nova ao día',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'todas as tarxetas aprendidas, segue repasando';

  @override
  String examRaiseLimit(int count) {
    return 'Amosar $count tarxetas novas ao día';
  }

  @override
  String get backupDriveHint =>
      'Para conservar unha copia en liña, escolle Google Drive (ou outra aplicación na nube) na pantalla de gardar que se abrirá a continuación.';

  @override
  String get flashShareDeck => 'Compartir a baralla cun amigo';

  @override
  String get flashSortManual => 'A miña orde (arrastrar)';

  @override
  String get flashReorderHint => 'Mantén premida a asa e arrastra unha tarxeta para movela.';

  @override
  String get flashReorderNeedsAll => 'Borra a busca e os filtros para arrastrar tarxetas.';

  @override
  String get flashDragHandle => 'Arrastra para mover';

  @override
  String get reportTitle => 'Informe mensual';

  @override
  String get reportFocus => 'Tempo de concentración';

  @override
  String reportSessions(int count) {
    return '$count sesións';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Mellor día: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count días activos';
  }

  @override
  String get reportCards => 'Tarxetas repasadas';

  @override
  String reportCardsKnown(String percent) {
    return '$percent lembradas';
  }

  @override
  String get reportTasks => 'Tarefas completadas';

  @override
  String get reportHabits => 'Marcas de hábitos';

  @override
  String get reportEmpty => 'Aínda non se rexistrou nada este mes.';

  @override
  String get reportSave => 'Gardar como PDF ou Word';

  @override
  String get reportPrevMonth => 'Mes anterior';

  @override
  String get reportNextMonth => 'Mes seguinte';

  @override
  String get careTitle => 'Coidado do teléfono e dos datos';

  @override
  String get storageTitle => 'Almacenamento';

  @override
  String get storageSubtitle => 'Que ocupa espazo e limpeza de imaxes sen usar';

  @override
  String get storagePictures => 'Imaxes nas notas';

  @override
  String get storageCardMedia => 'Imaxes e audio nas tarxetas';

  @override
  String get storageText => 'Texto das notas';

  @override
  String get storageFree => 'Libre no teléfono';

  @override
  String get storageLow =>
      'O teléfono está case cheo. Libera espazo para que as copias de seguranza e os recordatorios sigan funcionando.';

  @override
  String storageUnused(int count, String size) {
    return '$count imaxes sen usar ($size)';
  }

  @override
  String get storageNoUnused => 'Non hai imaxes sen usar. Todo está en orde.';

  @override
  String get storageClean => 'Quitar as imaxes sen usar';

  @override
  String storageCleaned(int count) {
    return 'Quitáronse $count imaxes';
  }

  @override
  String get storageHint =>
      'Unha imaxe só se considera sen usar se ningunha nota a amosa, incluídas as notas do lixo.';

  @override
  String get batteryTitle => 'Para que os recordatorios funcionen';

  @override
  String get batterySubtitle =>
      'Algúns teléfonos deteñen as aplicacións en segundo plano. Comproba o teu.';

  @override
  String get batteryStatusOk =>
      'O aforro de batería non limita esta aplicación. Os recordatorios e os sons deberían chegar a tempo.';

  @override
  String get batteryStatusLimited =>
      'O aforro de batería pode deter esta aplicación en segundo plano, polo que os recordatorios e os sons poden chegar tarde ou non chegar.';

  @override
  String get batteryOpen => 'Abrir a configuración da batería';

  @override
  String get batteryOpenApp => 'Abrir a configuración da aplicación';

  @override
  String get batteryGeneric =>
      'Na configuración da batería, escolle esta aplicación e ponla en «Sen restricións» (ou «Non optimizar»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: abre tamén Seguridade › Permisos › Inicio automático e activa esta aplicación, e pon o aforro de batería en «Sen restricións».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: abre Batería › esta aplicación e permite a actividade en segundo plano e o inicio automático; bloquea a aplicación na lista de aplicacións recentes.';

  @override
  String get batterySamsung =>
      'Samsung: Batería › Límites de uso en segundo plano: quita esta aplicación das aplicacións en suspensión e en suspensión profunda.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Inicio de aplicacións › esta aplicación › xestionar manualmente, e permite o inicio automático, o inicio secundario e a execución en segundo plano.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batería › Consumo de enerxía en segundo plano › permite esta aplicación e activa o inicio automático nos permisos.';

  @override
  String get whatsNewTitle => 'Novidades';

  @override
  String get whatsNewSubtitle => 'Os últimos cambios en poucas liñas';

  @override
  String get whatsNewDone => 'Entendido';

  @override
  String get whatsNewOrderTitle => 'Arrastra as tarxetas á túa orde';

  @override
  String get whatsNewOrderBody =>
      'Nunha baralla escolle Ordenar › A miña orde, mantén premida a asa e arrastra.';

  @override
  String get whatsNewSpeechTitle => 'Un altofalante en cada cara da tarxeta';

  @override
  String get whatsNewSpeechBody =>
      'Tócao para escoitar a palabra ou a tradución. A velocidade, as repeticións e a voz están no menú de repaso. O idioma detéctase a partir do texto.';

  @override
  String get whatsNewReportTitle => 'Informe mensual';

  @override
  String get whatsNewReportBody =>
      'En Estatísticas toca a icona do informe para ver o mes e gardalo como PDF ou Word.';

  @override
  String get whatsNewCareTitle => 'Coidado do teléfono e dos datos';

  @override
  String get whatsNewCareBody =>
      'Configuración ten agora unha páxina de almacenamento con limpeza de imaxes e unha guía de batería para a marca do teu teléfono.';

  @override
  String get whatsNewSoundTitle => 'Sons máis tranquilos';

  @override
  String get whatsNewSoundBody =>
      'Os sons da natureza son máis suaves e baixos, e as tarxetas de imaxe son máis bonitas.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Comprobado o $date: a última copia de seguranza ábrese correctamente.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Comprobado o $date: atopouse unha copia danada e substituíuse por unha nova.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Comprobado o $date: non se puido abrir a última copia de seguranza. Garda ti mesmo un ficheiro de copia desde Configuración.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Adoitas estudar arredor das $time';
  }

  @override
  String get smartReviewTimeUse => 'Usala';

  @override
  String get widgetNewNote => 'Nova nota';

  @override
  String get noteConnections => 'Etiquetas, ligazóns e tarefas';

  @override
  String get navCards => 'Tarxetas';

  @override
  String get studyAnswerWay => 'Como responder';

  @override
  String get studyMorePractice => 'Práctica adicional';

  @override
  String get studySessionSettings => 'Configuración da sesión';

  @override
  String get focusAdjustTitle => 'A túa sesión';

  @override
  String get focusPresetsTitle => 'Predefinidas';

  @override
  String get focusPresetStudy => 'Estudo';

  @override
  String get focusPresetDeep => 'Traballo profundo';

  @override
  String get focusPresetQuick => 'Sprint rápido';

  @override
  String get focusPresetReading => 'Lectura';

  @override
  String get focusPresetWorkout => 'Roldas de exercicio';

  @override
  String get focusAdjustMinutes => 'Duración da concentración';

  @override
  String get focusAdjustBreak => 'Duración da pausa';

  @override
  String get focusAdjustRounds => 'Roldas';

  @override
  String get focusRoundsOpen => 'Sen límite';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Toca para cambiar o tempo';

  @override
  String get flashArrangeDecks => 'Ordenar as barallas';

  @override
  String get flashDeckActions => 'Opcións da baralla';

  @override
  String get starterBrowse => 'Barallas predefinidas';

  @override
  String get starterBrowseHint => 'Engade unha cun toque e comeza a aprender';

  @override
  String get dashOpenDecks => 'Abrir as túas tarxetas';

  @override
  String speechVoiceNumber(String n) {
    return 'Voz $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Bo ritmo. Descansas $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Comezar a pausa';

  @override
  String tasksFinishAt(String time) {
    return 'Comeza agora e rematarás todo ás $time';
  }

  @override
  String get focusCalmPacing => 'Ritmo tranquilo';

  @override
  String get focusCalmPacingHint => 'Só minutos enteiros e o anel, sen segundos que avanzan';

  @override
  String get focusFlipHint => 'Pon o teléfono boca abaixo para comezar';

  @override
  String get focusImmersive => 'Modo inmersivo';

  @override
  String get focusImmersiveBlack => 'Negro puro (aforra batería)';

  @override
  String get focusFlipToFocus => 'Xirar para concentrarse';

  @override
  String get focusFlipToFocusHint =>
      'No modo inmersivo: boca abaixo comeza, levantalo pon en pausa';

  @override
  String get guardTitle => 'Protección contra distraccións';

  @override
  String get guardSubtitle => 'Pausa as aplicacións que distraen mentres te concentras';

  @override
  String get guardSwitch => 'Pausar as aplicacións que distraen';

  @override
  String get guardSwitchHint =>
      'Durante as sesións de concentración e as horas da Protección horaria';

  @override
  String get guardNeedsAccess => 'Precisa o interruptor de accesibilidade: toca para activalo';

  @override
  String get guardDisclosureTitle => 'Como funciona a protección';

  @override
  String get guardDisclosureBody =>
      'Para pausar as aplicacións que escolles, Deep Focus usa o servizo de accesibilidade de Android para ver que aplicación está aberta. Con «Pechar Shorts e Reels» activado, tamén comproba se hai un reprodutor de vídeos curtos na pantalla.\n\nNon le ningún texto, non garda nada do que ve e non envía nada a ningures: todo queda no teu teléfono. Podes desactivalo cando queiras na configuración de accesibilidade.';

  @override
  String get guardAgree => 'Aceptar e abrir a configuración';

  @override
  String get guardModeGentle => 'Suave';

  @override
  String get guardModeStrict => 'Estrito';

  @override
  String get guardGentleHint => 'Unha pausa de 5 segundos para respirar e despois decides ti';

  @override
  String get guardStrictHint =>
      'As aplicacións escollidas quedan pechadas ata que remate o tempo de concentración';

  @override
  String get guardApps => 'Aplicacións para pausar';

  @override
  String get guardAppsAllowed => 'Aplicacións permitidas';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplicacións',
      one: '1 aplicación',
      zero: 'Aínda non escolliches ningunha',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Permitir só as aplicacións escollidas';

  @override
  String get guardAllowlistHint =>
      'Todas as demais aplicacións pásanse a pausa; as chamadas, a configuración e o teclado sempre funcionan';

  @override
  String get guardShorts => 'Pechar Shorts e Reels';

  @override
  String get guardShortsHint =>
      'Sempre que a protección estea activada. Sen garantías: estas aplicacións cambian a miúdo';

  @override
  String get guardSchedule => 'Protección horaria';

  @override
  String get guardScheduleHint =>
      'Protexer tamén os días e as horas que escollas, como na escola ou no traballo';

  @override
  String get guardFrom => 'Desde';

  @override
  String get guardTo => 'Ata';

  @override
  String get guardSearchApps => 'Buscar aplicacións';

  @override
  String get guardNoApps => 'Non se atopou ningunha aplicación';

  @override
  String get guardPrivacy =>
      'Só funciona no teu teléfono: a protección ve que aplicación está aberta, nunca o que hai dentro, e non envía nada.';

  @override
  String get guardBreathe => 'Inspira… e expira';

  @override
  String get guardQuestion => 'Necesitas esta aplicación agora?';

  @override
  String get guardBackToFocus => 'Volver á concentración';

  @override
  String get guardOpenFive => 'Abrir durante 5 minutos';

  @override
  String get guardStrictBody =>
      'Esta aplicación está en pausa ata que remate o tempo de concentración.';

  @override
  String get guardShortsClosed => 'Os vídeos curtos péchanse mentres a protección está activada';

  @override
  String get faqGuardQ => 'Como deteño as aplicacións que distraen mentres me concentro?';

  @override
  String get faqGuardA =>
      'Abre Concentración → a configuración do temporizador → Protección contra distraccións. Escolle as aplicacións e despois Suave (unha respiración de 5 segundos e a pregunta «Necesitas esta aplicación agora?») ou Estrito (quedan pechadas). Funciona durante as sesións de concentración e, coa Protección horaria, os días e as horas que definas. «Permitir só as aplicacións escollidas» pon en pausa todo o demais; as chamadas, a configuración e o teclado sempre funcionan. Android pídeche unha vez que actives a protección na configuración de accesibilidade. Só ve que aplicación está aberta e non envía nada.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Movido a $name';
  }

  @override
  String get notesDragHint => 'Mantén premida unha nota e arrástraa a un caderno';

  @override
  String get guardReviewCards => 'Repasar tarxetas no seu lugar';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Agárdante $count tarxetas',
      one: 'Agárdate 1 tarxeta',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emerxencia: mantén premido 10 segundos';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Segue premendo… $n';
  }

  @override
  String get guardWeekTitle => 'Esta semana';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pausas',
      one: '1 pausa',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'volviches á concentración $count veces',
      one: 'volviches á concentración unha vez',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Cambiar o nome das palabras';

  @override
  String get wordsSubtitle => 'Usa a túa propia palabra para calquera texto da aplicación';

  @override
  String get wordsHint =>
      'Toca un texto para cambialo. As túas palabras só se aplican a este idioma e consérvanse nas copias de seguranza.';

  @override
  String get wordsSearch => 'Buscar textos';

  @override
  String get wordsChangedOnly => 'Só os cambiados';

  @override
  String wordsOriginal(String text) {
    return 'Orixinal: $text';
  }

  @override
  String get wordsReset => 'Usar o orixinal';

  @override
  String get wordsResetAll => 'Restablecer todas as palabras';

  @override
  String get wordsResetAllConfirm => 'Todos os textos deste idioma volven ao orixinal.';

  @override
  String get wordsNone => 'Non se atopou ningún texto';

  @override
  String get settingsLanguageSearch => 'Buscar idiomas';

  @override
  String get settingsLanguageNoMatch => 'Ningún idioma coincide';
}
