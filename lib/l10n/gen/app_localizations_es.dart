// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Deep Focus';

  @override
  String get navHome => 'Inicio';

  @override
  String get navTasks => 'Tareas';

  @override
  String get navFocus => 'Concentración';

  @override
  String get navCalendar => 'Calendario';

  @override
  String get navSpaces => 'Espacios';

  @override
  String get moduleProjects => 'Proyectos';

  @override
  String get moduleNotes => 'Notas';

  @override
  String get moduleFlashcards => 'Tarjetas';

  @override
  String get moduleGoals => 'Metas';

  @override
  String get moduleHabits => 'Hábitos';

  @override
  String get moduleAnalytics => 'Estadísticas';

  @override
  String get moduleSearch => 'Buscar';

  @override
  String get moduleAssistant => 'Asistente';

  @override
  String get moduleSettings => 'Ajustes';

  @override
  String get moduleTrash => 'Papelera';

  @override
  String get actionSave => 'Guardar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Eliminar';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionDone => 'Listo';

  @override
  String get actionAdd => 'Añadir';

  @override
  String get actionCreate => 'Crear';

  @override
  String get actionClose => 'Cerrar';

  @override
  String get actionBack => 'Atrás';

  @override
  String get actionUndo => 'Deshacer';

  @override
  String get actionRestore => 'Restaurar';

  @override
  String get actionRetry => 'Reintentar';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get actionSkip => 'Omitir';

  @override
  String get actionArchive => 'Archivar';

  @override
  String get actionUnarchive => 'Desarchivar';

  @override
  String get actionPin => 'Fijar';

  @override
  String get actionUnpin => 'No fijar';

  @override
  String get actionMore => 'Más opciones';

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
  String get actionResume => 'Reanudar';

  @override
  String get actionStart => 'Iniciar';

  @override
  String get actionStop => 'Detener';

  @override
  String get actionComplete => 'Completar';

  @override
  String get actionDeleteForever => 'Eliminar para siempre';

  @override
  String get actionEmptyTrash => 'Vaciar papelera';

  @override
  String get actionUnlink => 'Desvincular';

  @override
  String get actionCustomize => 'Personalizar';

  @override
  String get actionPreview => 'Vista previa';

  @override
  String get actionLog => 'Registrar avance';

  @override
  String get stateLoading => 'Cargando…';

  @override
  String get stateSaving => 'Guardando…';

  @override
  String get stateSaved => 'Guardado';

  @override
  String get stateUnsaved => 'Cambios sin guardar';

  @override
  String get errorGenericTitle => 'Algo salió mal';

  @override
  String get errorGenericMessage => 'Tus datos están a salvo. Inténtalo de nuevo.';

  @override
  String get errorLoadFailed => 'No se pudo cargar este contenido.';

  @override
  String get errorSaveFailed => 'No se pudo guardar. Tus cambios siguen aquí.';

  @override
  String get validationRequired => 'Este campo es obligatorio';

  @override
  String get validationTitleRequired => 'Escribe un título';

  @override
  String get validationNameRequired => 'Escribe un nombre';

  @override
  String get validationTooLong => 'Es demasiado largo';

  @override
  String get validationEndBeforeStart => 'El final debe ser posterior al inicio';

  @override
  String get validationStartAfterDue => 'La fecha de inicio debe ser anterior a la fecha límite';

  @override
  String get validationPositiveNumber => 'Escribe un número mayor que cero';

  @override
  String get validationDependencyCycle => 'Esto crearía una dependencia circular';

  @override
  String get validationInvalidRepeat => 'Esta regla de repetición no es válida';

  @override
  String get deletedItem => 'Movido a la papelera';

  @override
  String get untitled => 'Sin título';

  @override
  String get noProject => 'Sin proyecto';

  @override
  String get greetingMorning => 'Buenos días';

  @override
  String get greetingAfternoon => 'Buenas tardes';

  @override
  String get greetingEvening => 'Buenas noches';

  @override
  String get dashFocusToday => 'Concentración de hoy';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done de $target';
  }

  @override
  String get dashStartFocus => 'Concentrarme';

  @override
  String get dashFocusRunning => 'Sesión en curso';

  @override
  String get dashTodayTasks => 'Para hoy';

  @override
  String get dashAgenda => 'Próximos eventos';

  @override
  String get dashHabits => 'Hábitos de hoy';

  @override
  String get dashGoals => 'Metas';

  @override
  String get dashReview => 'Repaso';

  @override
  String get dashRecentNotes => 'Notas recientes';

  @override
  String get dashInsight => 'Sugerencia';

  @override
  String get dashSeeAll => 'Ver todo';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas pendientes',
      one: '1 tarjeta pendiente',
      zero: 'No hay tarjetas pendientes',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Repasar ahora';

  @override
  String get dashCustomizeTitle => 'Secciones de inicio';

  @override
  String get dashCustomizeHint => 'Elige qué aparece en tu pantalla de inicio.';

  @override
  String get dashSectionFocus => 'Concentración';

  @override
  String get dashSectionToday => 'Tareas para hoy';

  @override
  String get dashSectionAgenda => 'Próximos eventos';

  @override
  String get dashSectionHabits => 'Hábitos';

  @override
  String get dashSectionGoals => 'Metas';

  @override
  String get dashSectionReview => 'Repaso de tarjetas';

  @override
  String get dashSectionNotes => 'Notas recientes';

  @override
  String get dashSectionInsight => 'Sugerencias';

  @override
  String get quickAddTask => 'Nueva tarea';

  @override
  String get quickAddNote => 'Nueva nota';

  @override
  String get quickAddEvent => 'Nuevo evento';

  @override
  String get quickStartFocus => 'Concentración';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tienes $count tareas vencidas. Empieza por la más importante.',
      one: 'Tienes 1 tarea vencida. Reprográmala o termínala primero.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Te faltan $minutes minutos para tu objetivo diario de concentración.';
  }

  @override
  String get insightCardsDue => 'Repasa ahora tus tarjetas pendientes, mientras están frescas.';

  @override
  String get insightAllClear =>
      'Todo va según lo previsto. Planifica mañana o tómate un descanso consciente.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantén tu racha: $habit sigue pendiente hoy.';
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
  String get focusPhaseShortBreak => 'Descanso corto';

  @override
  String get focusPhaseLongBreak => 'Descanso largo';

  @override
  String get focusReady => 'Cuando quieras';

  @override
  String get focusPaused => 'En pausa';

  @override
  String get focusRunning => 'Concentrado';

  @override
  String get focusDuration => 'Duración';

  @override
  String get focusLinkTask => 'Vincular tarea';

  @override
  String get focusLinkedTask => 'Trabajando en';

  @override
  String get focusNoTask => 'Sin tarea vinculada';

  @override
  String focusCycle(int current, int total) {
    return 'Ciclo $current de $total';
  }

  @override
  String get focusSkipBreak => 'Omitir descanso';

  @override
  String get focusStartBreak => 'Iniciar descanso';

  @override
  String get focusStartNext => 'Siguiente sesión';

  @override
  String get focusSessionComplete => 'Sesión completada';

  @override
  String get focusSessionStopped => 'Sesión guardada';

  @override
  String focusSessionSummary(String duration) {
    return 'Te concentraste durante $duration.';
  }

  @override
  String get focusAddNote => 'Añade una nota sobre esta sesión';

  @override
  String get focusHistory => 'Historial';

  @override
  String get focusNoHistory => 'Las sesiones completadas aparecerán aquí';

  @override
  String get focusTargets => 'Objetivos';

  @override
  String get focusDailyTarget => 'Objetivo diario';

  @override
  String get focusWeeklyTarget => 'Objetivo semanal';

  @override
  String get focusOutcomeCompleted => 'Completada';

  @override
  String get focusOutcomeInterrupted => 'Detenida antes';

  @override
  String get focusRecovered => 'Tu sesión continuó mientras la app estaba cerrada.';

  @override
  String get focusCompletedWhileAway =>
      'Una sesión terminó mientras la app estaba cerrada y se ha guardado.';

  @override
  String get focusNotificationsOff =>
      'Las notificaciones están desactivadas. No recibirás un aviso al terminar una sesión.';

  @override
  String get focusBatteryHint =>
      'Algunos dispositivos pausan las apps en segundo plano. El temporizador sigue siendo preciso, pero los avisos pueden retrasarse. Permite el uso de batería sin restricciones para recibir avisos fiables.';

  @override
  String get focusOpenSettings => 'Abrir ajustes';

  @override
  String get focusStopConfirmTitle => '¿Detener esta sesión?';

  @override
  String get focusStopConfirmMessage => 'Se guardará el tiempo de concentración hasta ahora.';

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
    return '$phase, $time transcurridos';
  }

  @override
  String get focusDeleteSession => 'Eliminar sesión';

  @override
  String get tasksTitle => 'Tareas';

  @override
  String get tasksViewToday => 'Hoy';

  @override
  String get tasksViewUpcoming => 'Próximas';

  @override
  String get tasksViewAll => 'Todas';

  @override
  String get tasksViewOverdue => 'Vencidas';

  @override
  String get tasksViewCompleted => 'Hechas';

  @override
  String get tasksQuickAddHint => 'Añadir una tarea…';

  @override
  String get tasksEmptyTitle => 'Todo despejado';

  @override
  String get tasksEmptyMessage => 'Añade una tarea para empezar a dar forma a tu día.';

  @override
  String get tasksEmptyCompleted => 'Las tareas completadas aparecerán aquí.';

  @override
  String get taskNew => 'Nueva tarea';

  @override
  String get taskEdit => 'Editar tarea';

  @override
  String get taskTitleLabel => 'Título';

  @override
  String get taskTitleHint => '¿Qué hay que hacer?';

  @override
  String get taskDescriptionLabel => 'Descripción';

  @override
  String get taskNotesLabel => 'Notas';

  @override
  String get taskPriority => 'Prioridad';

  @override
  String get priorityNone => 'Ninguna';

  @override
  String get priorityLow => 'Baja';

  @override
  String get priorityMedium => 'Media';

  @override
  String get priorityHigh => 'Alta';

  @override
  String get priorityUrgent => 'Urgente';

  @override
  String get taskDueDate => 'Fecha límite';

  @override
  String get taskStartDate => 'Fecha de inicio';

  @override
  String get taskReminder => 'Recordatorio';

  @override
  String get taskRepeat => 'Repetir';

  @override
  String get taskProject => 'Proyecto';

  @override
  String get taskCategory => 'Categoría';

  @override
  String get taskCategoryHint => 'p. ej., Trabajo, Casa, Estudio';

  @override
  String get taskEstimateMinutes => 'Estimación (minutos)';

  @override
  String get taskTracked => 'Concentración registrada';

  @override
  String get taskLabels => 'Etiquetas';

  @override
  String get taskAddLabel => 'Nueva etiqueta';

  @override
  String get taskChecklist => 'Lista de comprobación';

  @override
  String get taskAddChecklistItem => 'Añadir un elemento';

  @override
  String get taskSubtasks => 'Subtareas';

  @override
  String get taskAddSubtask => 'Añadir una subtarea';

  @override
  String get taskDependencies => 'Bloqueada por';

  @override
  String get taskAddDependency => 'Añadir tarea bloqueante';

  @override
  String get taskLinkedNotes => 'Notas vinculadas';

  @override
  String get taskSetTime => 'Fijar hora';

  @override
  String get taskNoDate => 'Sin fecha';

  @override
  String get taskCompleted => 'Tarea completada';

  @override
  String get taskNextOccurrence => 'Siguiente repetición creada';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Vencida hace $days días',
      one: 'Vencida hace 1 día',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marcar “$title” como hecha';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marcar “$title” como no hecha';
  }

  @override
  String get sortSmart => 'Inteligente';

  @override
  String get sortDueDate => 'Fecha límite';

  @override
  String get sortPriority => 'Prioridad';

  @override
  String get sortCreated => 'Más recientes';

  @override
  String get sortTitle => 'Título';

  @override
  String get filterAllProjects => 'Todos los proyectos';

  @override
  String get filterAnyPriority => 'Cualquier prioridad';

  @override
  String get filterTitle => 'Filtrar y ordenar';

  @override
  String get dateToday => 'Hoy';

  @override
  String get dateTomorrow => 'Mañana';

  @override
  String get dateYesterday => 'Ayer';

  @override
  String get repeatNever => 'No se repite';

  @override
  String get repeatDaily => 'Cada día';

  @override
  String get repeatWeekdays => 'Cada día laborable';

  @override
  String get repeatWeekly => 'Cada semana';

  @override
  String get repeatMonthly => 'Cada mes';

  @override
  String get repeatYearly => 'Cada año';

  @override
  String get repeatCustom => 'Personalizado';

  @override
  String get repeatEvery => 'Repetir cada';

  @override
  String get repeatOnDays => 'Los días';

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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'años', one: 'año');
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
    return 'Termina tras $_temp0';
  }

  @override
  String get repeatEndsNever => 'No termina nunca';

  @override
  String get reminderAtTime => 'A la hora del evento';

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
  String get projectsTitle => 'Proyectos';

  @override
  String get projectsEmptyTitle => 'Aún no hay proyectos';

  @override
  String get projectsEmptyMessage => 'Agrupa tareas, notas y tiempo de concentración relacionados.';

  @override
  String get projectNew => 'Nuevo proyecto';

  @override
  String get projectEdit => 'Editar proyecto';

  @override
  String get projectName => 'Nombre';

  @override
  String get projectDescription => 'Descripción';

  @override
  String get projectGoal => 'Objetivo';

  @override
  String get projectDeadline => 'Fecha límite';

  @override
  String get projectColor => 'Color del proyecto';

  @override
  String get projectIcon => 'Icono';

  @override
  String get projectProgress => 'Progreso';

  @override
  String projectTasksDone(int done, int total) {
    return '$done de $total tareas hechas';
  }

  @override
  String get projectFocusTime => 'Tiempo de concentración';

  @override
  String get projectArchived => 'Proyectos archivados';

  @override
  String get projectShowArchived => 'Mostrar archivados';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Quedan $days días',
      one: 'Queda 1 día',
      zero: 'Vence hoy',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Plazo vencido';

  @override
  String get calendarTitle => 'Calendario';

  @override
  String get calendarMonth => 'Mes';

  @override
  String get calendarWeek => 'Semana';

  @override
  String get calendarDay => 'Día';

  @override
  String get calendarToday => 'Hoy';

  @override
  String get calendarPrevious => 'Anterior';

  @override
  String get calendarNext => 'Siguiente';

  @override
  String get calendarNoEvents => 'Nada programado';

  @override
  String get calendarAllDay => 'Todo el día';

  @override
  String get eventNew => 'Nuevo evento';

  @override
  String get eventEdit => 'Editar evento';

  @override
  String get eventTitleHint => 'Título del evento';

  @override
  String get eventStarts => 'Empieza';

  @override
  String get eventEnds => 'Termina';

  @override
  String get eventKind => 'Tipo';

  @override
  String get eventKindEvent => 'Evento';

  @override
  String get eventKindTimeBlock => 'Bloque de tiempo';

  @override
  String get eventKindFocus => 'Sesión de concentración';

  @override
  String get eventKindGoal => 'Meta personal';

  @override
  String get eventDescription => 'Detalles';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se solapa con $count eventos',
      one: 'Se solapa con 1 evento',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflictos de horario este día';

  @override
  String get calendarTaskDue => 'Tarea con vencimiento';

  @override
  String get calendarDragHint => 'Mantén pulsado y arrastra un evento para cambiarlo de hora';

  @override
  String get calendarRescheduled => 'Evento movido';

  @override
  String get calendarScheduleTask => 'Programar como bloque de tiempo';

  @override
  String get notesTitle => 'Notas';

  @override
  String get notesViewAll => 'Todas';

  @override
  String get notesViewPinned => 'Fijadas';

  @override
  String get notesViewFavorites => 'Favoritas';

  @override
  String get notesViewArchived => 'Archivadas';

  @override
  String get notesTags => 'Etiquetas';

  @override
  String get notesNewNotebook => 'Nuevo cuaderno';

  @override
  String get notesNoNotebook => 'Sin cuaderno';

  @override
  String get notesEmptyTitle => 'Un lienzo en blanco';

  @override
  String get notesEmptyMessage => 'Captura ideas, notas de reuniones y conocimientos.';

  @override
  String get noteTitleHint => 'Título';

  @override
  String get noteBodyHint =>
      'Empieza a escribir… Usa # para etiquetas y [[Título]] para vincular notas.';

  @override
  String get noteFavorite => 'Favorita';

  @override
  String get noteUnfavorite => 'Quitar de favoritas';

  @override
  String get noteMoveTo => 'Mover a cuaderno';

  @override
  String get noteBacklinks => 'Enlazada desde';

  @override
  String get noteLinkedTasks => 'Tareas vinculadas';

  @override
  String get noteLinkTask => 'Vincular tarea';

  @override
  String get noteLinkProject => 'Proyecto';

  @override
  String get noteFormatHeading => 'Encabezado';

  @override
  String get noteFormatBold => 'Negrita';

  @override
  String get noteFormatItalic => 'Cursiva';

  @override
  String get noteFormatList => 'Lista con viñetas';

  @override
  String get noteFormatChecklist => 'Lista de comprobación';

  @override
  String get noteFormatLink => 'Enlace';

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
  String get flashTitle => 'Tarjetas';

  @override
  String get flashEmptyTitle => 'Crea tu primer mazo';

  @override
  String get flashEmptyMessage =>
      'La repetición espaciada te muestra cada tarjeta justo antes de que la olvides.';

  @override
  String get deckNew => 'Nuevo mazo';

  @override
  String get deckEdit => 'Editar mazo';

  @override
  String get deckName => 'Nombre del mazo';

  @override
  String get deckDescription => 'Descripción';

  @override
  String get deckDailyNew => 'Tarjetas nuevas al día';

  @override
  String get deckDailyReview => 'Objetivo diario de repaso';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas',
      one: '1 tarjeta',
      zero: 'Sin tarjetas',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Pendientes';

  @override
  String get deckNewCards => 'Nuevas';

  @override
  String get deckMature => 'Dominadas';

  @override
  String get deckStudy => 'Estudiar';

  @override
  String get deckNothingDue => 'Nada pendiente por ahora. Vuelve más tarde.';

  @override
  String get deckEmptyCards => 'Añade tarjetas para empezar a aprender.';

  @override
  String get cardNew => 'Nueva tarjeta';

  @override
  String get cardEdit => 'Editar tarjeta';

  @override
  String get cardFront => 'Anverso';

  @override
  String get cardBack => 'Reverso';

  @override
  String get cardFrontHint => 'Pregunta o término';

  @override
  String get cardBackHint => 'Respuesta o definición';

  @override
  String get cardTags => 'Etiquetas';

  @override
  String get cardAddAnother => 'Guardar y añadir otra';

  @override
  String get reviewShowAnswer => 'Ver respuesta';

  @override
  String get reviewAgain => 'Otra vez';

  @override
  String get reviewHard => 'Difícil';

  @override
  String get reviewGood => 'Bien';

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
      other: 'Repasaste $count tarjetas.',
      one: 'Repasaste 1 tarjeta.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Toca para ver la respuesta';

  @override
  String get importCardsTitle => 'Importar tarjetas';

  @override
  String get importCardsHint =>
      'Pega una tarjeta por línea (anverso y reverso separados por tabulador o punto y coma) o elige un archivo: Excel (.xlsx), CSV, un mazo de Anki (.apkg) o un mazo exportado.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas importadas',
      one: '1 tarjeta importada',
      zero: 'No se importó ninguna tarjeta',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'No se pudo importar este contenido.';

  @override
  String get exportCopied => 'Mazo exportado';

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
  String get goalsTitle => 'Metas';

  @override
  String get goalsEmptyTitle => 'Apunta a algo';

  @override
  String get goalsEmptyMessage =>
      'Define metas diarias, semanales, mensuales o a largo plazo y sigue tu progreso real.';

  @override
  String get goalNew => 'Nueva meta';

  @override
  String get goalEdit => 'Editar meta';

  @override
  String get goalTitleHint => '¿Qué quieres lograr?';

  @override
  String get goalPeriod => 'Periodo';

  @override
  String get goalPeriodDaily => 'Diaria';

  @override
  String get goalPeriodWeekly => 'Semanal';

  @override
  String get goalPeriodMonthly => 'Mensual';

  @override
  String get goalPeriodLongTerm => 'A largo plazo';

  @override
  String get goalTarget => 'Objetivo';

  @override
  String get goalUnit => 'Unidad';

  @override
  String get goalUnitHint => 'p. ej., páginas, km, horas';

  @override
  String get goalStatusActive => 'Activa';

  @override
  String get goalStatusPaused => 'En pausa';

  @override
  String get goalStatusAchieved => 'Lograda';

  @override
  String get goalPause => 'Pausar meta';

  @override
  String get goalResume => 'Reanudar meta';

  @override
  String get goalMarkAchieved => 'Marcar como lograda';

  @override
  String goalProgressOf(String current, String target) {
    return '$current de $target';
  }

  @override
  String get goalLogAmount => 'Cantidad';

  @override
  String get goalLogNote => 'Nota (opcional)';

  @override
  String get goalHistory => 'Historial';

  @override
  String get goalNoHistory => 'El progreso registrado aparecerá aquí';

  @override
  String get goalLinkedTasks => 'Tareas vinculadas';

  @override
  String get goalLinkedTasksHint => 'Cada tarea vinculada completada suma 1 a esta meta.';

  @override
  String get goalThisPeriod => 'Este periodo';

  @override
  String get habitsTitle => 'Hábitos';

  @override
  String get habitsEmptyTitle => 'Pequeños pasos, cada día';

  @override
  String get habitsEmptyMessage => 'Crea un hábito y márcalo cuando lo cumplas.';

  @override
  String get habitNew => 'Nuevo hábito';

  @override
  String get habitEdit => 'Editar hábito';

  @override
  String get habitNameHint => 'p. ej., Leer 20 páginas';

  @override
  String get habitDays => 'Días';

  @override
  String get habitEveryDay => 'Cada día';

  @override
  String get habitTargetPerDay => 'Veces al día';

  @override
  String get habitReminder => 'Recordatorio diario';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Racha de $count días',
      one: 'Racha de 1 día',
      zero: 'Sin racha',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Mejor racha';

  @override
  String get habitCurrentStreak => 'Racha actual';

  @override
  String get habitConsistency => 'Constancia';

  @override
  String get habitLast90 => 'Últimos 90 días';

  @override
  String get habitPaused => 'En pausa';

  @override
  String get habitPause => 'Pausar hábito';

  @override
  String get habitResume => 'Reanudar hábito';

  @override
  String get habitDoneToday => 'Hecho hoy';

  @override
  String habitCountToday(int count, int target) {
    return '$count de $target hoy';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Marcar “$name”';
  }

  @override
  String get habitNotScheduledToday => 'No toca hoy';

  @override
  String get analyticsTitle => 'Estadísticas';

  @override
  String get rangeWeek => '7 días';

  @override
  String get rangeMonth => '30 días';

  @override
  String get rangeQuarter => '90 días';

  @override
  String get statFocusTime => 'Tiempo de concentración';

  @override
  String get statSessions => 'Sesiones';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed completadas · $interrupted detenidas antes';
  }

  @override
  String get statTasksDone => 'Tareas completadas';

  @override
  String get statCompletionRate => 'Completadas a tiempo';

  @override
  String get statHabitConsistency => 'Constancia en hábitos';

  @override
  String get statRetention => 'Retención de tarjetas';

  @override
  String get statReviews => 'Repasos';

  @override
  String get statActiveGoals => 'Metas activas';

  @override
  String get statEstimated => 'Trabajo estimado completado';

  @override
  String get statEstimatedNote => 'Según tus estimaciones, no tiempo medido';

  @override
  String get statMeasuredNote => 'Medido a partir de sesiones de concentración';

  @override
  String get chartFocusByDay => 'Minutos de concentración por día';

  @override
  String get chartTasksByDay => 'Tareas completadas por día';

  @override
  String get chartTimeByProject => 'Tiempo por proyecto';

  @override
  String get chartProjectProgress => 'Progreso de proyectos';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, mejor día $best';
  }

  @override
  String get analyticsNoData => 'Aún no hay datos suficientes';

  @override
  String get analyticsUnassigned => 'Sin asignar';

  @override
  String get searchHint => 'Busca en todo…';

  @override
  String get searchRecent => 'Búsquedas recientes';

  @override
  String get searchClearRecent => 'Borrar búsquedas recientes';

  @override
  String searchNoResults(String query) {
    return 'No hay resultados para “$query”';
  }

  @override
  String get searchStartTyping =>
      'Busca en tareas, notas, tarjetas, metas, eventos y más. La búsqueda se queda en este dispositivo.';

  @override
  String get searchCatTask => 'Tareas';

  @override
  String get searchCatProject => 'Proyectos';

  @override
  String get searchCatNote => 'Notas';

  @override
  String get searchCatFlashcard => 'Tarjetas';

  @override
  String get searchCatDeck => 'Mazos';

  @override
  String get searchCatGoal => 'Metas';

  @override
  String get searchCatHabit => 'Hábitos';

  @override
  String get searchCatEvent => 'Eventos';

  @override
  String get searchCatSession => 'Sesiones';

  @override
  String get searchAll => 'Todo';

  @override
  String get assistantTitle => 'Asistente';

  @override
  String get assistantIntro =>
      'Ayuda de planificación que funciona en tu dispositivo. Si quieres, conecta el proveedor de IA que elijas para resúmenes y generación de contenido.';

  @override
  String get assistantOnDevice => 'En el dispositivo';

  @override
  String get assistantCloud => 'Proveedor de IA';

  @override
  String get assistantPlanDay => 'Planificar mi día';

  @override
  String get assistantPlanDayDesc =>
      'Ordena las tareas abiertas por urgencia, prioridad y estimación, y las encaja entre tus eventos.';

  @override
  String get assistantExtractTasks => 'Extraer tareas de una nota';

  @override
  String get assistantExtractTasksDesc =>
      'Encuentra elementos de listas y líneas de acción en una nota y los convierte en tareas.';

  @override
  String get assistantMakeCards => 'Crear tarjetas desde una nota';

  @override
  String get assistantMakeCardsDesc =>
      'Convierte las líneas “término: definición” y de pregunta/respuesta en tarjetas.';

  @override
  String get assistantSummarize => 'Resumir una nota';

  @override
  String get assistantSummarizeDesc =>
      'Requiere un proveedor de IA. La nota solo se envía después de que lo confirmes.';

  @override
  String get assistantWorkload => 'Resumen de carga de trabajo';

  @override
  String get assistantWorkloadDesc =>
      'Compara el trabajo estimado con tu tiempo libre de esta semana.';

  @override
  String get assistantPlanEmpty => 'No hay tareas abiertas que planificar. Disfruta del espacio.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Tiempo libre para concentrarte hoy: $time';
  }

  @override
  String get assistantPlanOverflow => 'Puede que esto no quepa hoy:';

  @override
  String get assistantChooseNote => 'Elige una nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas encontradas',
      one: '1 tarea encontrada',
      zero: 'No se encontraron tareas en esta nota',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas encontradas',
      one: '1 tarjeta encontrada',
      zero: 'No se encontraron tarjetas en esta nota',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Elige un mazo';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Trabajo estimado: $estimated. Tiempo libre: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Tienes más planificado que tiempo disponible. Considera mover las tareas de menor prioridad.';

  @override
  String get assistantWorkloadOk => 'Tu plan cabe en tu tiempo disponible.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas abiertas no tienen estimación.',
      one: '1 tarea abierta no tiene estimación.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Proveedor de IA';

  @override
  String get assistantProviderOff =>
      'No hay ningún proveedor conectado. Las herramientas en el dispositivo siguen funcionando.';

  @override
  String assistantProviderOn(String host) {
    return 'Conectado a $host';
  }

  @override
  String get assistantEndpoint => 'Endpoint de la API (HTTPS)';

  @override
  String get assistantModel => 'Modelo';

  @override
  String get assistantApiKey => 'Clave de API';

  @override
  String get assistantApiKeyStored => 'Guardada de forma segura en este dispositivo';

  @override
  String get assistantHttpsOnly => 'Solo se permiten endpoints HTTPS';

  @override
  String get assistantConsentTitle => '¿Enviar este contenido a tu proveedor de IA?';

  @override
  String assistantConsentBody(String host) {
    return 'El texto de la nota seleccionada saldrá de este dispositivo y lo procesará $host. No se envía nada más.';
  }

  @override
  String get assistantConsentAlways => 'No volver a preguntar para este proveedor';

  @override
  String get assistantSend => 'Enviar';

  @override
  String get assistantUnavailable =>
      'No se pudo conectar con el proveedor de IA. Inténtalo más tarde.';

  @override
  String get assistantDisabledTitle => 'El asistente está desactivado';

  @override
  String get assistantDisabledMessage =>
      'Actívalo para usar las herramientas de planificación. Ningún dato sale de tu dispositivo a menos que conectes un proveedor y confirmes cada solicitud.';

  @override
  String get assistantSummaryTitle => 'Resumen';

  @override
  String get assistantRemoveProvider => 'Quitar proveedor';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get settingsGeneral => 'Ajustes generales';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Idioma del dispositivo';

  @override
  String get settingsAppearance => 'Apariencia';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Reducir movimiento';

  @override
  String get settingsReduceMotionDesc => 'Minimiza las animaciones y los fondos en movimiento';

  @override
  String get settingsFocus => 'Temporizador de concentración';

  @override
  String get settingsWorkLength => 'Duración de la concentración';

  @override
  String get settingsShortBreak => 'Descanso corto';

  @override
  String get settingsLongBreak => 'Descanso largo';

  @override
  String get settingsLongBreakEvery => 'Descanso largo tras';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sesiones',
      one: '1 sesión',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Iniciar descansos automáticamente';

  @override
  String get settingsSound => 'Sonido al terminar';

  @override
  String get settingsDailyFocusTarget => 'Objetivo diario de concentración';

  @override
  String get settingsWeeklyFocusTarget => 'Objetivo semanal de concentración';

  @override
  String get settingsNotifications => 'Notificaciones';

  @override
  String get settingsNotificationsEnable => 'Permitir recordatorios';

  @override
  String get settingsQuietHours => 'Horas de silencio';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Los recordatorios de hábitos, metas y repasos se silencian de $start a $end';
  }

  @override
  String get settingsReviewReminder => 'Recordatorio de repaso de tarjetas';

  @override
  String get settingsPermissionDenied =>
      'Las notificaciones están bloqueadas en los ajustes del sistema.';

  @override
  String get settingsPrivacy => 'Privacidad y datos';

  @override
  String get settingsPrivacyStatement =>
      'Tus datos se guardan solo en este dispositivo y están cifrados. Sin cuenta, sin analíticas y sin rastreo.';

  @override
  String get settingsBackup => 'Crear copia de seguridad cifrada';

  @override
  String get settingsBackupDesc => 'Protegida con una contraseña que tú eliges';

  @override
  String get settingsRestore => 'Restaurar desde copia de seguridad';

  @override
  String get settingsRestoreDesc => 'Reemplaza todos los datos de este dispositivo';

  @override
  String get settingsErase => 'Borrar todos los datos';

  @override
  String get settingsEraseDesc => 'Elimina definitivamente todo lo que hay en este dispositivo';

  @override
  String get settingsEraseConfirmTitle => '¿Borrar todos los datos?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Se eliminarán definitivamente todas las tareas, notas, tarjetas, metas, hábitos, eventos y sesiones. Escribe $word para confirmar.';
  }

  @override
  String get settingsEraseWord => 'BORRAR';

  @override
  String get settingsErased => 'Se borraron todos los datos';

  @override
  String get backupPassword => 'Contraseña de la copia';

  @override
  String get backupPasswordConfirm => 'Confirmar contraseña';

  @override
  String backupPasswordHint(int count) {
    return 'Al menos $count caracteres. Si la pierdes, no se puede recuperar.';
  }

  @override
  String get backupPasswordMismatch => 'Las contraseñas no coinciden';

  @override
  String get backupPasswordShort => 'La contraseña es demasiado corta';

  @override
  String get backupCreating => 'Cifrando copia de seguridad…';

  @override
  String get backupCreated => 'Copia de seguridad lista para guardar';

  @override
  String get backupRestoring => 'Verificando y restaurando…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se restauraron $count elementos',
      one: 'Se restauró 1 elemento',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Contraseña incorrecta, o el archivo se modificó.';

  @override
  String get backupNotABackup => 'Este archivo no es una copia de seguridad de Deep Focus.';

  @override
  String get backupCorrupted => 'El archivo de copia de seguridad está dañado.';

  @override
  String get backupNewer =>
      'Esta copia se creó con una versión más reciente de la app. Actualízala primero.';

  @override
  String get backupRestoreConfirmTitle => '¿Reemplazar todos los datos?';

  @override
  String get backupRestoreConfirmBody =>
      'Todo lo que hay ahora en este dispositivo se reemplazará por la copia de seguridad. Si la restauración falla, no cambia nada.';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String settingsVersion(String version) {
    return 'Versión $version';
  }

  @override
  String get settingsLicenses => 'Licencias de código abierto';

  @override
  String get settingsAssistant => 'Asistente';

  @override
  String get settingsAssistantEnable => 'Activar asistente';

  @override
  String get settingsDashboard => 'Secciones de inicio';

  @override
  String get settingsTrash => 'Papelera';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'La papelera está vacía';

  @override
  String get trashHint => 'Los elementos eliminados se quedan aquí hasta que los borres.';

  @override
  String get trashTasks => 'Tareas';

  @override
  String get trashNotes => 'Notas';

  @override
  String get onboardWelcomeTitle => 'Bienvenido a tu espacio de trabajo del futuro';

  @override
  String get onboardWelcomeBody =>
      'Tareas, concentración, calendario, notas, tarjetas, metas y hábitos: todo junto, maravillosamente simple.';

  @override
  String get onboardPrivateTitle => 'Privado por diseño';

  @override
  String get onboardPrivateBody =>
      'Todo se queda en este dispositivo, cifrado. Sin cuenta. Sin rastreo. Tú tienes el control.';

  @override
  String get onboardLanguageTitle => 'Elige tu idioma';

  @override
  String get onboardNotifTitle => 'Recordatorios amables';

  @override
  String get onboardNotifBody =>
      'Permite las notificaciones para recordatorios de tareas y avisos de concentración. Puedes cambiarlo cuando quieras.';

  @override
  String get onboardGetStarted => 'Empezar';

  @override
  String onboardStep(int current, int total) {
    return 'Paso $current de $total';
  }

  @override
  String get notifChannelReminders => 'Recordatorios';

  @override
  String get notifChannelRemindersDesc => 'Recordatorios de tareas, eventos, hábitos y metas';

  @override
  String get notifChannelFocus => 'Temporizador de concentración';

  @override
  String get notifChannelFocusDesc =>
      'Avisos cuando termina una sesión de concentración o un descanso';

  @override
  String get notifTaskTitle => 'Recordatorio de tarea';

  @override
  String get notifEventTitle => 'Próximo evento';

  @override
  String notifEventBody(String title, String time) {
    return '$title a las $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sesión de concentración completada';

  @override
  String get notifFocusDoneBody => 'Buen trabajo. Hora de descansar.';

  @override
  String get notifBreakDoneTitle => 'Fin del descanso';

  @override
  String get notifBreakDoneBody => '¿Listo para la siguiente sesión de concentración?';

  @override
  String get notifHabitTitle => 'Recordatorio de hábito';

  @override
  String get notifReviewTitle => 'Tus tarjetas están listas';

  @override
  String get notifReviewBody => 'Un repaso breve mantiene fuerte tu memoria.';

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
  String get weekdaysShort => 'L,M,X,J,V,S,D';

  @override
  String a11yProgress(int value) {
    return 'Progreso: $value por ciento';
  }

  @override
  String a11yPriority(String level) {
    return 'Prioridad: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Color número $index';
  }

  @override
  String get analyticsRangeLabel => 'Intervalo de tiempo';

  @override
  String get analyticsRefresh => 'Actualizar';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done de $total tareas con fecha límite completadas a tiempo';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done de $total tareas completadas';
  }

  @override
  String get analyticsNoProjects => 'No hay proyectos activos';

  @override
  String get analyticsNoFocus => 'No hay sesiones de concentración en este intervalo';

  @override
  String get analyticsHabitsNone => 'No hay hábitos activos';

  @override
  String get analyticsRetentionNote => 'Porcentaje de tarjetas maduras que recordaste';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'El tiempo libre se cuenta de $start a $end en días laborables ($days), descontando los eventos con hora. El trabajo estimado es la suma de las estimaciones de las tareas abiertas que vencen en los próximos 7 días.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Lunes a viernes';

  @override
  String get assistantWorkdaysSunThu => 'Domingo a jueves';

  @override
  String get assistantWorkloadDayOff => 'Día libre';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planificado · $free libre';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planificado desde ahora hasta las $end, según los eventos de hoy. Primero las tareas vencidas, luego por prioridad, fecha límite y estimación.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Programar como bloques de tiempo';

  @override
  String get assistantScheduleConfirmTitle => '¿Añadir bloques de tiempo a tu calendario?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se añadirán $count bloques de tiempo al calendario de hoy.',
      one: 'Se añadirá 1 bloque de tiempo al calendario de hoy.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bloques de tiempo añadidos',
      one: '1 bloque de tiempo añadido',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Ya está en tu calendario';

  @override
  String get assistantPlanTimeline => 'Cabe en hoy';

  @override
  String get assistantNoEstimate => 'Añade una estimación para planificarlas';

  @override
  String get assistantNoNotes => 'Aún no hay notas. Escribe una nota primero.';

  @override
  String get assistantNoteEmpty => 'Esta nota está vacía.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas creadas',
      one: '1 tarea creada',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas creadas',
      one: '1 tarjeta creada',
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
      zero: 'Nada seleccionado',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Se reconocen: casillas sin marcar \"- [ ]\" y líneas que empiezan por TODO: o To do:';

  @override
  String get assistantCardsHint =>
      'Se reconocen: \"término: definición\", \"término — definición\" y pares de líneas P:/R:';

  @override
  String get assistantProviderHint =>
      'Usa cualquier servicio compatible con OpenAI. La clave permanece en el almacenamiento seguro de este dispositivo y nunca se incluye en las copias de seguridad.';

  @override
  String get assistantEndpointHelp => 'Por ejemplo, https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Déjalo vacío para conservar la clave guardada';

  @override
  String get assistantApiKeyRequired => 'Introduce una clave de API';

  @override
  String get assistantProviderSaved => 'Proveedor guardado';

  @override
  String get assistantProviderRemoved => 'Proveedor eliminado y clave borrada';

  @override
  String get assistantRemoveProviderConfirm =>
      '¿Eliminar el proveedor y borrar la clave de API guardada en este dispositivo?';

  @override
  String get assistantAskEveryTime => 'Preguntar antes de cada solicitud';

  @override
  String get assistantSummarizing => 'Resumiendo…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generado por $host. Revísalo antes de confiar en él.';
  }

  @override
  String get assistantCopy => 'Copiar';

  @override
  String get assistantCopied => 'Copiado';

  @override
  String get assistantConfigure => 'Configurar proveedor';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Se movieron todos los eventos de esta serie';

  @override
  String get calendarEventReminder => 'Recordatorio';

  @override
  String get calendarEventRepeat => 'Repetir';

  @override
  String get calendarEventColor => 'Color';

  @override
  String get calendarDefaultColor => 'Usar el color del tipo';

  @override
  String get calendarEventLinkedTask => 'Tarea vinculada';

  @override
  String get calendarEventNoTask => 'Sin tarea vinculada';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventos',
      one: '1 evento',
      zero: 'Sin eventos',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas pendientes',
      one: '1 tarea pendiente',
      zero: 'sin tareas pendientes',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Añade un evento o un bloque de tiempo para planificar este día.';

  @override
  String get calendarNow => 'Hora actual';

  @override
  String get calendarRecurring => 'Se repite';

  @override
  String get calendarEventNotFound => 'Este evento ya no existe';

  @override
  String get calendarEventLocalTime => 'Las horas se muestran en la zona horaria de tu dispositivo';

  @override
  String get calendarEventDeleted => 'Evento movido a la papelera';

  @override
  String get calendarConflictMarker => 'Se solapa con otro evento';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Los cambios se aplican a todos los eventos de esta serie';

  @override
  String get calendarDragHintSeries => 'Al arrastrar un evento repetido se mueve toda la serie';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tarea pendiente';
  }

  @override
  String get startupErrorTitle => 'No se pudieron abrir tus datos';

  @override
  String get startupErrorLocked =>
      'La clave de cifrado de los datos de este dispositivo no está disponible. No se ha eliminado nada. Reiniciar el dispositivo suele ayudar. Si restauraste el dispositivo hace poco, restaura tus datos desde una copia de seguridad cifrada.';

  @override
  String get startupErrorCipher =>
      'Este dispositivo no admite el almacenamiento cifrado que requiere la app. No se ha guardado nada sin cifrar.';

  @override
  String get startupErrorRetry => 'Reintentar';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas pendientes de repaso',
      one: '1 tarjeta pendiente de repaso',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count pendientes';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nuevas';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Tarjetas maduras: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Introduce 0 o más';

  @override
  String get flashcardsSearchCards => 'Buscar tarjetas';

  @override
  String get flashcardsSearchEmpty => 'Ninguna tarjeta coincide con tu búsqueda';

  @override
  String get flashcardsCardAdded => 'Tarjeta añadida';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Repaso: $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copiar al portapapeles';

  @override
  String get flashcardsExportTitle => 'Exportar mazo';

  @override
  String get flashcardsDeleteDeck => 'Eliminar mazo';

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
    return 'Respuesta: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Mostrar pregunta';

  @override
  String get flashcardsImportField => 'Tarjetas para importar';

  @override
  String get flashcardsNothingToStudy => 'Nada que estudiar';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas listas para estudiar',
      one: '1 tarjeta lista para estudiar',
      zero: 'Sin tarjetas listas',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Por calificación';

  @override
  String get flashcardsDeckNotFound => 'Este mazo ya no está disponible.';

  @override
  String get focusSessionDeleted => 'Sesión eliminada';

  @override
  String get focusDeleteConfirm =>
      '¿Eliminar esta sesión de tu historial? Su tiempo ya no contará para tus objetivos.';

  @override
  String get focusUnlinkTask => 'Quitar tarea vinculada';

  @override
  String get focusNoteHint => '¿En qué trabajaste?';

  @override
  String get focusTargetCaption => 'Calculado a partir de las sesiones guardadas';

  @override
  String get focusModeLabel => 'Modo del temporizador';

  @override
  String focusUpNext(String phase) {
    return 'A continuación: $phase';
  }

  @override
  String get focusStopwatchHint => 'Cuenta hacia arriba hasta que lo detengas.';

  @override
  String get focusOpenHint => 'Sin límite de tiempo. Detén cuando termines.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Los recordatorios están desactivados en Ajustes. No recibirás ningún aviso cuando termine una sesión.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Todas';

  @override
  String get goalsFilterPeriod => 'Filtro por período';

  @override
  String get goalsFilterStatus => 'Filtro por estado';

  @override
  String get goalsEmptyFiltered => 'Ninguna meta coincide con este filtro';

  @override
  String goalsDueOn(String date) {
    return 'Vence $date';
  }

  @override
  String get goalsDeadline => 'Fecha límite (opcional)';

  @override
  String get goalsNoDeadline => 'Sin fecha límite';

  @override
  String get goalsSetDeadline => 'Establecer fecha límite';

  @override
  String get goalsRemoveDeadline => 'Quitar fecha límite';

  @override
  String get goalsDescription => 'Descripción (opcional)';

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
  String get goalsReached => 'Objetivo alcanzado';

  @override
  String get goalsLogged => 'Avance registrado';

  @override
  String get goalsEntryDeleted => 'Registro eliminado';

  @override
  String get goalsDeleteEntry => 'Eliminar registro';

  @override
  String get goalsDeleted => 'Meta eliminada';

  @override
  String get goalsMarkActive => 'Marcar como activa';

  @override
  String get goalsNotFound => 'Esta meta ya no está disponible';

  @override
  String get goalsLinkTask => 'Vincular una tarea';

  @override
  String get goalsNoLinkedTasks => 'Aún no hay tareas vinculadas';

  @override
  String get goalsUnlinkTask => 'Desvincular tarea';

  @override
  String get goalsTaskOpen => 'Aún sin completar';

  @override
  String get goalsTaskLinked => 'Tarea vinculada';

  @override
  String get goalsTaskUnlinked => 'Tarea desvinculada';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas vinculadas completadas',
      one: '1 tarea vinculada completada',
    );
    return 'Incluye $_temp0 en este período';
  }

  @override
  String get goalsHistoryAllTime =>
      'Los registros de períodos anteriores se conservan aquí, pero solo cuentan para su propio período.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done de $total completados hoy';
  }

  @override
  String get habitsNothingToday => 'No hay hábitos programados para hoy';

  @override
  String get habitsDecrease => 'Quitar un registro';

  @override
  String get habitsResetToday => 'Restablecer hoy';

  @override
  String get habitsCheckInHint => 'Mantén pulsado para ajustar';

  @override
  String get habitsName => 'Nombre';

  @override
  String get habitsColor => 'Color';

  @override
  String get habitsValidationDays => 'Elige al menos un día';

  @override
  String habitsReminderAt(String time) {
    return 'Todos los días a las $time';
  }

  @override
  String get habitsSetReminder => 'Establecer hora de recordatorio';

  @override
  String get habitsRemoveReminder => 'Quitar recordatorio';

  @override
  String get habitsReminderNote =>
      'Los recordatorios aparecen en los días programados si las notificaciones están permitidas.';

  @override
  String get habitsArchived => 'Hábito archivado';

  @override
  String get habitsNotFound => 'Este hábito ya no está disponible';

  @override
  String get habitsLast30 => 'Últimos 30 días';

  @override
  String get habitsConsistencyNone => 'Aún no hay datos suficientes';

  @override
  String get habitsCalendar => 'Historial de registros';

  @override
  String get habitsCalendarHint => 'Toca un día para corregirlo.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count de $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Registros de los últimos 90 días. Constancia: $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Registros de los últimos 90 días. Aún no hay datos suficientes.';

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
  String get habitsPausedNote => 'Los días en pausa no afectan tu racha.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archivar hábito';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count veces al día',
      one: 'Una vez al día',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Otras notas';

  @override
  String get notesAllNotebooks => 'Todos los cuadernos';

  @override
  String get notesNotebookName => 'Nombre del cuaderno';

  @override
  String get notesNotebookColor => 'Color';

  @override
  String get notesDeleteNotebook => 'Eliminar cuaderno';

  @override
  String get notesDeleteNotebookMessage =>
      'Se elimina el cuaderno. Sus notas se conservan y aparecen en Todos los cuadernos.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fija las notas importantes para mantenerlas arriba.';

  @override
  String get notesEmptyFavorites => 'Las notas que marques como favoritas aparecen aquí.';

  @override
  String get notesEmptyArchived => 'Las notas archivadas aparecen aquí.';

  @override
  String get notesEmptyFiltered => 'Ninguna nota coincide con estos filtros.';

  @override
  String get notesArchivedSnack => 'Nota archivada';

  @override
  String get notesUnarchivedSnack => 'Nota devuelta a tus notas';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done de $total completados';
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
  String get notesPreviewEmpty => 'Aún no hay nada que previsualizar.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Ninguna otra nota enlaza aquí todavía. Enlaza a esta nota con [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Ponle un título a esta nota para que otras notas puedan enlazarla.';

  @override
  String get notesLinkedTasksEmpty => 'No hay tareas vinculadas a esta nota.';

  @override
  String notesLinkMissing(String title) {
    return 'Aún no hay ninguna nota titulada \"$title\".';
  }

  @override
  String get notesNotFound => 'Esta nota ya no existe.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Elemento de la lista: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Abrir la nota $title';
  }

  @override
  String get notesTaskDone => 'Completada';

  @override
  String get notifTimerDoneBody => 'El tiempo que configuraste ha terminado.';

  @override
  String get onboardingPrivatePointDevice => 'Se guarda solo en este dispositivo, cifrado';

  @override
  String get onboardingPrivatePointAccount => 'No necesitas cuenta';

  @override
  String get onboardingPrivatePointTracking => 'Sin analíticas ni seguimiento';

  @override
  String get onboardingLanguageBody => 'Puedes cambiarlo en cualquier momento en Ajustes.';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get projectsActive => 'Activos';

  @override
  String get projectNameHint => 'p. ej., Lanzamiento del producto';

  @override
  String get projectGoalHint => '¿Cómo se ve el trabajo terminado?';

  @override
  String get projectNoDeadline => 'Sin fecha límite';

  @override
  String get projectTasksOpen => 'Tareas abiertas';

  @override
  String get projectTasksCompleted => 'Tareas completadas';

  @override
  String get projectAddTask => 'Añadir tarea al proyecto';

  @override
  String get projectAddNote => 'Nueva nota del proyecto';

  @override
  String get projectLinkedNotes => 'Notas';

  @override
  String get projectNoTasks => 'Aún no hay tareas en este proyecto';

  @override
  String get projectArchivedBadge => 'Archivado';

  @override
  String get projectDeleted => 'Proyecto movido a la papelera';

  @override
  String get projectDeleteMessage => 'Las tareas permanecen en tu lista sin proyecto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent por ciento completado';
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
    return 'Buscar de nuevo $query';
  }

  @override
  String get settingsLanguageHint =>
      'Elige el idioma de toda la aplicación. Los nombres se muestran en su propio idioma.';

  @override
  String get settingsThemeHint => 'Claro, oscuro o según el sistema';

  @override
  String settingsDecrease(String setting) {
    return 'Reducir $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Aumentar $setting';
  }

  @override
  String get settingsQuietStart => 'Empieza';

  @override
  String get settingsQuietEnd => 'Termina';

  @override
  String get settingsNotificationsHint =>
      'Esto guarda tu preferencia en la aplicación. Es posible que el sistema también pida permiso.';

  @override
  String get settingsDashboardHint =>
      'Arrastra para reordenar. Desactiva las secciones que no necesites.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reordenar $section';
  }

  @override
  String get settingsDashboardReset => 'Restaurar el orden predeterminado';

  @override
  String get settingsAssistantDesc =>
      'Ayuda de planificación opcional. Nada sale de este dispositivo a menos que conectes un proveedor.';

  @override
  String get settingsAssistantSetup => 'Configuración del asistente y del proveedor';

  @override
  String get settingsTrashDesc => 'Restaura o elimina de forma permanente los elementos borrados';

  @override
  String get settingsEraseFirstBody =>
      'Esta acción no se puede deshacer. Considera crear antes una copia de seguridad cifrada.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Escribe $word';
  }

  @override
  String get settingsEraseFailed => 'No se pudieron borrar los datos. No se cambió nada.';

  @override
  String get settingsAboutTagline => 'Un espacio de productividad privado y local.';

  @override
  String get backupShowPassword => 'Mostrar contraseña';

  @override
  String get backupHidePassword => 'Ocultar contraseña';

  @override
  String get backupSaved => 'Copia de seguridad guardada';

  @override
  String get backupFailed => 'No se pudo crear la copia de seguridad. Tus datos no han cambiado.';

  @override
  String get backupReadFailed => 'No se pudo leer el archivo seleccionado.';

  @override
  String get backupRestoreFailed => 'Error al restaurar. No se cambió nada.';

  @override
  String get backupShareSubject => 'Copia de seguridad cifrada de Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count días',
      one: 'Todos los días',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count semanas',
      one: 'Todas las semanas',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count meses',
      one: 'Todos los meses',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cada $count años',
      one: 'Todos los años',
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
    return 'el $days';
  }

  @override
  String get repeatEndsLabel => 'Termina';

  @override
  String get repeatEndsAfter => 'Tras un número de veces';

  @override
  String get repeatCountLabel => 'Repeticiones';

  @override
  String get reminderNone => 'Sin recordatorio';

  @override
  String get reminderCustomTime => 'A una hora concreta';

  @override
  String get a11yDecrease => 'Disminuir';

  @override
  String get a11yIncrease => 'Aumentar';

  @override
  String get pickTaskTitle => 'Elige una tarea';

  @override
  String get pickTaskEmpty => 'No hay tareas abiertas';

  @override
  String get tasksSearchTooltip => 'Buscar tareas';

  @override
  String get tasksSectionOverdue => 'Vencidas';

  @override
  String get tasksSectionToday => 'Hoy';

  @override
  String get tasksRecurringSemantics => 'Se repite';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioridad mínima';

  @override
  String get tasksFilterCategory => 'Categoría';

  @override
  String get tasksFilterAnyCategory => 'Cualquier categoría';

  @override
  String get tasksFilterLabel => 'Etiqueta';

  @override
  String get tasksFilterAnyLabel => 'Cualquier etiqueta';

  @override
  String get tasksFilterReset => 'Restablecer filtros';

  @override
  String get tasksViewByProject => 'Por proyecto';

  @override
  String get tasksViewByPriority => 'Por prioridad';

  @override
  String get tasksViewByCategory => 'Por categoría';

  @override
  String get tasksGroupNoCategory => 'Sin categoría';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas',
      one: '1 tarea',
    );
    return 'Bloqueada por $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Esta tarea está bloqueada por tareas sin terminar. ¿Completarla de todos modos?';

  @override
  String get taskStartFocus => 'Concentrarme en esta tarea';

  @override
  String get taskRemoveDate => 'Quitar fecha';

  @override
  String get taskAllDay => 'Sin hora concreta';

  @override
  String get taskSaved => 'Tarea guardada';

  @override
  String get taskCreated => 'Tarea creada';

  @override
  String get taskReminderNeedsDue => 'Establece una fecha límite para usar recordatorios relativos';

  @override
  String get taskSubtaskDetailsHint =>
      'Guarda primero la tarea para añadir subtareas, elementos de lista, etiquetas y dependencias.';

  @override
  String get taskLabelName => 'Nombre de la etiqueta';

  @override
  String get taskMoreDetails => 'Detalles';

  @override
  String get taskPlanning => 'Planificación';

  @override
  String get taskOrganize => 'Organizar';

  @override
  String get taskBreakdown => 'Desglose';

  @override
  String get trashDeleteTaskTitle => '¿Eliminar esta tarea para siempre?';

  @override
  String get trashDeleteNoteTitle => '¿Eliminar esta nota para siempre?';

  @override
  String get trashDeleteBody => 'Esta acción no se puede deshacer.';

  @override
  String get trashEmptyTitle => '¿Vaciar la papelera?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementos se eliminarán de forma permanente.',
      one: '1 elemento se eliminará de forma permanente.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restaurado';

  @override
  String get trashPurged => 'Eliminado para siempre';

  @override
  String trashDeletedOn(String date) {
    return 'Eliminado el $date';
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
  String get flashcardsReadAloud => 'Leer en voz alta';

  @override
  String get flashcardsTtsUnavailable =>
      'La conversión de texto a voz no está disponible en este dispositivo.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'No hay ninguna voz instalada para este idioma. Añade una en los ajustes de texto a voz de Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Chispa',
      'rocket': 'Cohete',
      'book': 'Libro',
      'work': 'Trabajo',
      'home': 'Casa',
      'heart': 'Corazón',
      'code': 'Código',
      'palette': 'Paleta',
      'fitness': 'Ejercicio',
      'school': 'Escuela',
      'travel': 'Viaje',
      'money': 'Ahorro',
      'other': 'Icono',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Más campos';

  @override
  String get cardFieldExample => 'Ejemplo';

  @override
  String get cardFieldExplanation => 'Explicación';

  @override
  String get cardFieldPronunciation => 'Pronunciación';

  @override
  String get cardFieldNotes => 'Notas adicionales';

  @override
  String get projectMilestones => 'Hitos';

  @override
  String get milestoneAdd => 'Añadir hito';

  @override
  String get milestoneEdit => 'Editar hito';

  @override
  String get milestoneTitleLabel => 'Hito';

  @override
  String get milestoneNoDate => 'Sin fecha';

  @override
  String get milestonesEmpty =>
      'Aún no hay hitos. Añade puntos de control con fecha para seguir el proyecto en el calendario.';

  @override
  String get milestoneDeleted => 'Hito eliminado';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marcar el hito \"$title\" como completado';
  }

  @override
  String calendarMilestone(String project) {
    return 'Hito · $project';
  }

  @override
  String get tasksViewInbox => 'Bandeja';

  @override
  String get tasksViewArchived => 'Archivadas';

  @override
  String get tasksEmptyInbox =>
      'Aquí llegan las tareas sin proyecto ni fecha. Organízalas cuando tengas un momento.';

  @override
  String get tasksEmptyArchived =>
      'Las tareas archivadas se guardan aquí, fuera de tus listas y recordatorios.';

  @override
  String get taskArchivedBadge => 'Archivada';

  @override
  String get taskStatusInProgress => 'En curso';

  @override
  String get taskArchived => 'Tarea archivada';

  @override
  String get taskUnarchived => 'Tarea restaurada del archivo';

  @override
  String get focusPlanTitle => 'Plan de sesiones';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sesiones de enfoque';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Descanso largo tras';

  @override
  String get focusPlanSkipLastBreak => 'Omitir el último descanso';

  @override
  String get focusPlanAutoBreaks => 'Iniciar descansos automáticamente';

  @override
  String get focusPlanAutoFocus => 'Iniciar el enfoque tras el descanso';

  @override
  String get focusPlanSave => 'Guardar plan';

  @override
  String get focusPlanNameHint => 'p. ej., Examen';

  @override
  String get focusPlanSaved => 'Plan guardado';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min de enfoque, $rest min de descanso';
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
  String get focusSeriesComplete => 'Serie completada. ¡Bien hecho!';

  @override
  String get filterAll => 'Todas';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importadas · $duplicates duplicadas omitidas · $invalid filas incompletas';
  }

  @override
  String get flashcardsSuspend => 'Suspender tarjeta';

  @override
  String get flashcardsResume => 'Reanudar tarjeta';

  @override
  String get flashcardsSuspended => 'Tarjeta suspendida: no se programará';

  @override
  String get flashcardsResumed => 'Tarjeta reanudada';

  @override
  String get flashcardsSuspendedFilter => 'Suspendidas';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown de $total tarjetas';
  }

  @override
  String get flashcardsImportFile => 'Desde archivo';

  @override
  String get speechTitle => 'Voz';

  @override
  String get speechAppLanguage => 'Idioma de la app';

  @override
  String get speechFrontLanguage => 'Idioma del anverso';

  @override
  String get speechBackLanguage => 'Idioma del reverso';

  @override
  String get speechRepeat => 'Repetir cada lectura';

  @override
  String get speechRate => 'Velocidad';

  @override
  String get speechAutoRead => 'Leer la pregunta automáticamente';

  @override
  String get speechHint =>
      'Usa las voces instaladas en el dispositivo, sin conexión. Si un idioma no tiene voz, se te avisará y no se usará otra.';

  @override
  String get studyHowTitle => '¿Cómo quieres estudiar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Repasar $count tarjetas',
      one: 'Repasar 1 tarjeta',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Practicar todas (sin cambiar el calendario)';

  @override
  String get studyPracticeMistakes => 'Practicar errores recientes';

  @override
  String get studyPracticeHint =>
      'La práctica no cambia cuándo vencen las tarjetas. El repaso actualiza el calendario.';

  @override
  String get studyModeClassic => 'Clásico';

  @override
  String get studyModeReverse => 'Inverso';

  @override
  String get studyModeMixed => 'Ambos sentidos';

  @override
  String get studyModeTyped => 'Escribir la respuesta';

  @override
  String get studyModeChoice => 'Opción múltiple';

  @override
  String get studyModeListening => 'Escucha';

  @override
  String get studyPractice => 'práctica';

  @override
  String get studyNoMistakes => 'No hay errores recientes en este mazo. ¡Bien!';

  @override
  String get studyTypeAnswer => 'Escribe tu respuesta';

  @override
  String get studyCheck => 'Comprobar';

  @override
  String get studyKnewIt => 'La sabía';

  @override
  String get studyDidntKnow => 'No la sabía';

  @override
  String studyMistakes(int count) {
    return 'Fallos ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repetir las falladas';

  @override
  String get studyCorrect => 'Correcto';

  @override
  String get studyAlmost => 'Casi: revisa la ortografía';

  @override
  String get studyWrong => 'No exactamente';

  @override
  String get studyShowText => 'Mostrar el texto';

  @override
  String get flashcardsImportFileFailed =>
      'No se pudo abrir el archivo. Puedes pegar su contenido.';

  @override
  String get studyNoMatchingCards => 'Aún no hay tarjetas para esta opción.';

  @override
  String get studyPracticeNew => 'Solo nuevas';

  @override
  String get studyPracticeHard => 'Tarjetas difíciles';

  @override
  String get studyPracticeFavorites => 'Favoritas';

  @override
  String get studySessionSize => 'Tarjetas por sesión';

  @override
  String get studySessionAll => 'Todas';

  @override
  String get studyOrder => 'Orden';

  @override
  String get studyOrderDue => 'Más atrasadas primero';

  @override
  String get studyOrderRandom => 'Aleatorio';

  @override
  String get studyOrderHardest => 'Más difíciles primero';

  @override
  String get flashcardsHard => 'Difícil';

  @override
  String get flashcardsFavorites => 'Favoritas';

  @override
  String get flashcardsFavorite => 'Añadir a favoritas';

  @override
  String get flashcardsUnfavorite => 'Quitar de favoritas';

  @override
  String get flashcardsDuplicate => 'Duplicar';

  @override
  String get flashcardsMoveTo => 'Mover a mazo';

  @override
  String get flashcardsNoOtherDeck => 'Crea otro mazo primero.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas movidas',
      one: 'Tarjeta movida',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Añadir etiqueta';

  @override
  String get flashcardsTagHint => 'p. ej., verbos';

  @override
  String flashcardsSelected(int count) {
    return '$count seleccionadas';
  }

  @override
  String get flashcardsSelectAll => 'Seleccionar todo lo visible';

  @override
  String flashcardsSelectCard(String front) {
    return 'Seleccionar $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Recuerdo $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Posible duplicado';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Este mazo ya tiene «$front» → «$back». ¿Guardar igualmente?';
  }

  @override
  String get flashcardsSaveAnyway => 'Guardar igualmente';

  @override
  String get flashcardsStats => 'Estadísticas';

  @override
  String get flashcardsStatTotal => 'Tarjetas';

  @override
  String get flashcardsStatLearning => 'Aprendiendo';

  @override
  String get flashcardsStatMatureCaption => 'Recordadas 21+ días';

  @override
  String get flashcardsStatReviewsToday => 'Repasos hoy';

  @override
  String get flashcardsStatCorrect => 'Respuestas correctas';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Últimos $days días';
  }

  @override
  String get flashcardsStatForget => 'Tasa de olvido';

  @override
  String get flashcardsStatForgetCaption => '«Otra vez» en tarjetas aprendidas';

  @override
  String get flashcardsStatRecall => 'Recuerdo ahora';

  @override
  String get flashcardsStatRecallCaption => 'Estimación FSRS, tarjetas repasadas';

  @override
  String flashcardsStatActivity(int count) {
    return 'Repasos por día · $count en total';
  }

  @override
  String get flashcardsStatHistory => 'Últimas respuestas';

  @override
  String get flashcardsStatNoHistory => 'Aún no hay repasos. Estudia el mazo para ver tu progreso.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Leer $field en voz alta';
  }

  @override
  String get speechVoice => 'Voz';

  @override
  String get speechVoiceDefault => 'Automática';

  @override
  String get speechVoiceOnline => 'requiere internet';

  @override
  String get speechTest => 'Probar voz';

  @override
  String get importNext => 'Vista previa';

  @override
  String get importPreviewTitle => 'Asigna columnas a campos';

  @override
  String get importIgnoreColumn => 'Ignorar';

  @override
  String importColumn(int n) {
    return 'Columna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready tarjetas listas · se omitirán $invalid filas incompletas';
  }

  @override
  String get importNeedFrontBack => 'Elige qué columnas son el anverso y el reverso.';

  @override
  String get actionMoveUp => 'Subir';

  @override
  String get actionMoveDown => 'Bajar';

  @override
  String get flashcardsLayoutTitle => 'Diseño de la tarjeta';

  @override
  String get flashcardsLayoutHint =>
      'Renombra, oculta o reordena los campos extra de este mazo. El contenido nunca cambia.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Mostrar $field al estudiar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Mostrar la respuesta paso a paso';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Primero el reverso; cada campo extra se abre con un toque.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Mostrar $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'El archivo supera $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imagen';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Añadir imagen';

  @override
  String get flashcardsAddAudio => 'Añadir audio';

  @override
  String get flashcardsPlayAudio => 'Reproducir grabación';

  @override
  String get flashcardsAudioUnavailable => 'No se puede reproducir en este dispositivo.';

  @override
  String get flashcardsCustomFields => 'Tus campos';

  @override
  String get flashcardsTemplates => 'Plantillas';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Campo $n';
  }

  @override
  String get flashcardsAddField => 'Añadir campo';

  @override
  String get flashcardsFieldName => 'Nombre del campo';

  @override
  String get flashcardsFieldLangDefault => 'Idioma de la cara';

  @override
  String get flashcardsTemplateConfirm =>
      'La plantilla define cómo se muestran los campos y añade los suyos. Tus tarjetas y campos se mantienen.';

  @override
  String get flashcardsApplyTemplate => 'Aplicar';

  @override
  String get templateVocabulary => 'Vocabulario';

  @override
  String get templateTwoTranslations => 'Palabra con dos traducciones';

  @override
  String get templateQuestionAnswer => 'Pregunta y respuesta';

  @override
  String get templateDefinition => 'Término y definición';

  @override
  String get templateGrammar => 'Regla gramatical';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Segunda traducción';

  @override
  String get templateFieldSynonyms => 'Sinónimos';

  @override
  String get templateFieldRule => 'Regla';

  @override
  String get deckCategory => 'Nivel o tema';

  @override
  String get deckCategoryHint => 'p. ej., A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Buscar en todas';

  @override
  String get flashcardsSearchAllHint => 'Palabra, traducción, ejemplo, nota, etiqueta…';

  @override
  String get flashcardsAllDecks => 'Todos los mazos';

  @override
  String get flashcardsAllLanguages => 'Todos los idiomas';

  @override
  String get flashcardsLangUnset => 'Idioma sin definir';

  @override
  String get flashcardsLevelUnset => 'Sin nivel ni tema';

  @override
  String get flashcardsByLanguage => 'Progreso por idioma';

  @override
  String get flashcardsByLevel => 'Progreso por nivel o tema';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks mazos · $cards tarjetas · $mature maduras · $due pendientes · $correct correctas (30 días)';
  }

  @override
  String get flashcardsRecord => 'Grabar';

  @override
  String get flashcardsRecording => 'Grabando…';

  @override
  String get flashcardsRecordStop => 'Detener y guardar';

  @override
  String get flashcardsMicDenied =>
      'El acceso al micrófono está desactivado. Permítelo en los ajustes del sistema para grabar.';

  @override
  String get flashcardsRecordFailed => 'La grabación no está disponible en este dispositivo.';

  @override
  String get soundsTitle => 'Sonidos';

  @override
  String get soundsNature => 'Naturaleza';

  @override
  String get soundsNoise => 'Ruido para concentrarse';

  @override
  String get soundRain => 'Lluvia';

  @override
  String get soundStorm => 'Tormenta';

  @override
  String get soundRiver => 'Río';

  @override
  String get soundOcean => 'Olas del mar';

  @override
  String get soundFire => 'Fogata';

  @override
  String get soundForest => 'Pájaros del bosque';

  @override
  String get soundNight => 'Noche de verano';

  @override
  String get soundWhite => 'Ruido blanco';

  @override
  String get soundPink => 'Ruido rosa';

  @override
  String get soundBrown => 'Ruido marrón';

  @override
  String get soundsPlay => 'Reproducir';

  @override
  String get soundsSleep => 'Temporizador';

  @override
  String get soundsSleepOff => 'Desactivado';

  @override
  String soundsSleepAt(String time) {
    return 'Se detiene a las $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Hasta $count sonidos a la vez.';
  }

  @override
  String get soundsHint =>
      'Toca un sonido para empezar. Mezcla varios y ajusta el volumen de cada uno.';

  @override
  String get soundsMixer => 'Mezcla';

  @override
  String soundsVolumeOf(String name) {
    return 'Volumen de $name';
  }

  @override
  String get soundsChannel => 'Sonidos de la naturaleza';

  @override
  String get settingsEndTone => 'Sonido al terminar';

  @override
  String get toneGentle => 'Pitidos suaves';

  @override
  String get toneBeeps => 'Pitidos';

  @override
  String get toneWood => 'Golpes de madera';

  @override
  String get toneBird => 'Canto de pájaro';

  @override
  String get toneStream => 'Arroyo';

  @override
  String get toneSystem => 'Sonido del teléfono';

  @override
  String get speechOnPhone => 'En este teléfono';

  @override
  String get speechAllLanguages => 'Todos los idiomas';

  @override
  String get speechSearchLanguage => 'Buscar idioma';

  @override
  String get speechGetVoices => 'Descargar más voces';

  @override
  String get speechGetVoicesHint =>
      'Los idiomas sin voz se pueden descargar en los ajustes de voz del teléfono.';

  @override
  String get speechSettingsFailed => 'No se pudieron abrir los ajustes de voz de este teléfono.';

  @override
  String get speechVoiceMissing => 'Sin voz instalada';

  @override
  String get speechPause => 'Pausa entre repeticiones';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Leer el ejemplo con la respuesta';

  @override
  String get flashListen => 'Escuchar';

  @override
  String get flashListenNext => 'Siguiente tarjeta';

  @override
  String get flashListenEmpty => 'No hay tarjetas para escuchar.';

  @override
  String get flashViewTable => 'Tabla';

  @override
  String get flashViewCards => 'Tarjetas';

  @override
  String get flashSwapSides => 'Intercambiar columnas';

  @override
  String get flashSort => 'Ordenar';

  @override
  String get flashSortNewest => 'Más recientes primero';

  @override
  String get flashSortAlpha => 'De la A a la Z';

  @override
  String get flashSortDue => 'Pendientes primero';

  @override
  String get flashSortHard => 'Más difíciles primero';

  @override
  String get flashPasteCards => 'Pegar tarjetas';

  @override
  String get flashClipboardEmpty => 'El portapapeles no tiene texto.';

  @override
  String get flashMenuAdd => 'Añadir tarjetas';

  @override
  String get flashMenuDeck => 'Mazo';

  @override
  String get flashToday => 'Hoy';

  @override
  String get flashStudyNow => 'Estudiar';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas respondidas',
      one: '1 tarjeta respondida',
      zero: 'Ninguna tarjeta respondida',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Lluvia en el bosque';

  @override
  String get autoBackupTitle => 'Copias automáticas';

  @override
  String get autoBackupDesc => 'Cada día en este teléfono; se guardan las 7 últimas';

  @override
  String get autoBackupHint =>
      'Estas copias se quedan en el teléfono y se borran si se desinstala la app. Para cambiar de teléfono, usa «Copia de seguridad» y guarda un archivo.';

  @override
  String get autoBackupNone => 'Aún no hay copias automáticas. La primera se hace hoy.';

  @override
  String get autoBackupRestore => 'Restaurar';

  @override
  String autoBackupConfirm(String date) {
    return '¿Reemplazar todos los datos actuales por la copia del $date?';
  }

  @override
  String get autoBackupRestored => 'Restaurado.';

  @override
  String get errorLogTitle => 'Registro de errores';

  @override
  String get errorLogHint =>
      'Si algo falla, se anota aquí: solo el tipo de error y dónde ocurrió en el código, nunca tu contenido. Compártelo para ayudar a arreglarlo.';

  @override
  String get errorLogEmpty => 'No hay errores registrados.';

  @override
  String get errorLogClear => 'Borrar';

  @override
  String get soundsWithFocus => 'Sonar con las sesiones de enfoque';

  @override
  String get soundsWithFocusHint => 'Tu mezcla empieza con la sesión y se pausa en los descansos.';

  @override
  String get soundsSavedMixes => 'Mezclas guardadas';

  @override
  String get soundsSaveMix => 'Guardar esta mezcla';

  @override
  String get soundsMixNameHint => 'Nombre, p. ej. Biblioteca lluviosa';

  @override
  String soundsDeleteMix(String name) {
    return '¿Eliminar la mezcla «$name»?';
  }

  @override
  String get settingsReviewReminderHint => 'Una vez al día, solo si hay tarjetas pendientes';

  @override
  String get settingsReviewTime => 'Hora del recordatorio';

  @override
  String get shortcutFocus => 'Enfoque';

  @override
  String get shortcutNewTask => 'Nueva tarea';

  @override
  String get shortcutReview => 'Repasar tarjetas';

  @override
  String get shortcutSounds => 'Sonidos naturales';

  @override
  String get myDayTitle => 'Empezar mi día';

  @override
  String get myDayHint => 'Tu día de un vistazo y un toque para concentrarte';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tareas para hoy',
      one: '1 tarea para hoy',
      zero: 'Sin tareas para hoy',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'No hay más eventos hoy';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Siguiente: $title a las $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Quedan $count hábitos',
      one: 'Queda 1 hábito',
      zero: 'Hábitos completados',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Empezar con una sesión de enfoque';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Yumada al-Ula';

  @override
  String get hijriMonth6 => 'Yumada al-Ajira';

  @override
  String get hijriMonth7 => 'Rayab';

  @override
  String get hijriMonth8 => 'Shabán';

  @override
  String get hijriMonth9 => 'Ramadán';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qada';

  @override
  String get hijriMonth12 => 'Dhu al-Hiyya';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Fechas hégira';

  @override
  String get settingsHijriHint => 'Se muestran en el calendario y en el inicio (Umm al-Qura)';

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
    return '$done de $goal tarjetas hoy';
  }

  @override
  String get studyGoalReached => 'Meta diaria cumplida. ¡Bien hecho!';

  @override
  String get studyWeekTitle => 'Tu semana';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarjetas en 7 días',
      one: '1 tarjeta en 7 días',
      zero: 'Ninguna tarjeta en 7 días',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration de enfoque en 7 días';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Racha: $current · Mejor: $best';
  }

  @override
  String get studyGoalTitle => 'Meta diaria (tarjetas)';

  @override
  String get studyGoalOff => 'No';

  @override
  String get focusDndTitle => 'No molestar durante el enfoque';

  @override
  String get focusDndHint => 'Se activa en cada sesión y se desactiva en el descanso';

  @override
  String get focusDndNeedsAccess => 'Permite el acceso en los ajustes del teléfono para usarlo';

  @override
  String get voiceInput => 'Dictar';

  @override
  String get voiceInputPrompt => 'Habla ahora';

  @override
  String get voiceInputUnavailable =>
      'El dictado no está disponible en este teléfono. Instala o activa un servicio de voz (por ejemplo, el de Google).';

  @override
  String get prayerFajr => 'Fajr (alba)';

  @override
  String get prayerSunrise => 'Amanecer';

  @override
  String get prayerDhuhr => 'Dhuhr (mediodía)';

  @override
  String get prayerAsr => 'Asr (tarde)';

  @override
  String get prayerMaghrib => 'Maghrib (ocaso)';

  @override
  String get prayerIsha => 'Isha (noche)';

  @override
  String get prayerMethodMwl => 'Liga Mundial Musulmana';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura (La Meca)';

  @override
  String get prayerMethodEgypt => 'Autoridad General de Egipto';

  @override
  String get prayerMethodJordan => 'Jordania (Awqaf)';

  @override
  String get prayerMethodKarachi => 'Universidad de Ciencias Islámicas, Karachi';

  @override
  String get prayerMethodIsna => 'Sociedad Islámica de Norteamérica';

  @override
  String get prayerMethodGulf => 'Región del Golfo';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Catar';

  @override
  String get prayerMethodTurkey => 'Turquía (Diyanet)';

  @override
  String get prayerMethodSingapore => 'Singapur, Malasia, Indonesia';

  @override
  String get prayerMethodFrance => 'Francia (12°)';

  @override
  String get prayerMethodRussia => 'Rusia (Administración Espiritual)';

  @override
  String prayerNotifTitle(String name) {
    return 'Hora de $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Hora de la oración · $time';
  }

  @override
  String get prayerTitle => 'Horarios de oración';

  @override
  String get prayerOffHint =>
      'Elige tu ciudad para ver los horarios. Se calculan en el teléfono, sin acceso a la ubicación.';

  @override
  String get prayerChooseCity => 'Elegir ciudad';

  @override
  String get prayerCity => 'Ciudad';

  @override
  String get prayerCitySearch => 'Buscar ciudad';

  @override
  String get prayerMethod => 'Método de cálculo';

  @override
  String get prayerHanafiAsr => 'Asr hanafí (más tarde)';

  @override
  String get prayerReminders => 'Avisar en cada oración';

  @override
  String get prayerPauseFocus => 'Pausar el enfoque al orar';

  @override
  String get prayerPauseFocusHint => 'La sesión se pausa; continúa después';

  @override
  String get prayerTurnOff => 'Desactivar horarios';

  @override
  String get prayerAccuracyNote =>
      'Los horarios calculados pueden diferir unos minutos de tu mezquita.';

  @override
  String prayerNext(String name, String time) {
    return '$name a las $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Este archivo de Anki usa el formato más nuevo. En Anki, exporta de nuevo con «Compatible con versiones anteriores de Anki» activado.';

  @override
  String get importTemplate => 'Plantilla de hoja de cálculo';

  @override
  String get importTemplateFront => 'manzana';

  @override
  String get importTemplateBack => 'una fruta redonda';

  @override
  String get importTemplateExample => 'Como una manzana cada día.';

  @override
  String get importTemplateTag => 'comida';

  @override
  String get starterTitle => 'Mazos de inicio';

  @override
  String get starterHint => 'Añade uno para estudiar ya. Puedes editarlo o borrarlo después.';

  @override
  String get starterAdd => 'Añadir';

  @override
  String get starterWords => 'Palabras cotidianas en inglés (árabe)';

  @override
  String get starterCapitals => 'Capitales del mundo';

  @override
  String get starterElements => 'Elementos químicos';

  @override
  String get settingsAccent => 'Color de acento';

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
  String get settingsFlashTextSize => 'Tamaño del texto de las tarjetas';

  @override
  String get settingsFlashTextSample => 'Ejemplo';

  @override
  String get widgetStartFocus => 'Toca para concentrarte';

  @override
  String widgetFocusUntil(String time) {
    return 'Enfoque hasta las $time';
  }

  @override
  String get widgetNoCardsDue => 'Tarjetas: al día';

  @override
  String get faqMyDayQ => '¿Qué hace «Empezar mi día»?';

  @override
  String get faqMyDayA =>
      'Aparece una vez al día en Inicio: ves las tareas de hoy, el próximo evento, los hábitos pendientes y las tarjetas por repasar, y empiezas una sesión de enfoque con un toque. Mantén pulsado el icono de la app para accesos rápidos o añade el widget a tu pantalla.';

  @override
  String get faqTasksQ => '¿Cómo añado una tarea con recordatorio?';

  @override
  String get faqTasksA =>
      'Toca Nueva tarea en Inicio o + en Tareas. Escribe el título o díctalo con el micrófono y elige fecha, hora y recordatorio. Las tareas atrasadas aparecen primero.';

  @override
  String get faqFocusQ => '¿Cómo funciona el temporizador de enfoque?';

  @override
  String get faqFocusA =>
      'Elige Pomodoro, cuenta atrás o tiempo libre y pulsa Empezar; los descansos pueden seguir solos. En Ajustes eliges el sonido final, activas No molestar durante el enfoque y reproduces tus sonidos naturales en cada sesión.';

  @override
  String get faqSoundsQ => '¿Puedo mezclar sonidos naturales?';

  @override
  String get faqSoundsA =>
      'Activa hasta seis grabaciones reales, ajusta cada volumen y guarda la mezcla con un nombre. Siguen sonando en segundo plano y un temporizador puede detenerlas. No se usa música.';

  @override
  String get faqCalendarQ => '¿El calendario muestra fechas hégira?';

  @override
  String get faqCalendarA =>
      'Sí. Las fechas hégira (Umm al-Qura) se muestran solas en árabe y puedes activarlas en Ajustes para cualquier idioma. Eventos, tareas con fecha e hitos de proyectos aparecen juntos.';

  @override
  String get faqFlashcardsQ => '¿Cómo decide el repaso qué tarjetas veo?';

  @override
  String get faqFlashcardsA =>
      'Las tarjetas que dominas vuelven tras intervalos más largos y las que fallas vuelven pronto (repetición espaciada). Valora cada respuesta: Otra vez, Difícil, Bien o Fácil. Fija una meta diaria y mantén tu racha en la tarjeta Hoy. Fija la fecha del examen en un mazo para ver los días que faltan y cuántas tarjetas nuevas aprender cada día. Ordena por «Mi orden» para arrastrar tarjetas, toca el altavoz de cada lado para oírlo y ajusta velocidad y repeticiones en el menú de voz.';

  @override
  String get faqImportQ => '¿Puedo traer tarjetas de Anki o Excel?';

  @override
  String get faqImportA =>
      'Sí. En un mazo elige Importar y un archivo: Anki (.apkg), Excel (.xlsx) o CSV, y asigna las columnas. Usa «Plantilla de hoja de cálculo» para escribir tarjetas en el ordenador. Las imágenes y sonidos de Anki no se importan.';

  @override
  String get faqNotesQ => '¿Qué pueden hacer las notas?';

  @override
  String get faqNotesA =>
      'Escribe con listas y formato, fija o marca como favoritas las notas importantes, añade etiquetas y enlaza notas con tareas. El botón del micrófono te deja dictar. Una nota nueva puede empezar con una plantilla (clase, resumen de libro, diario, plan semanal) y el botón de imagen añade fotos.';

  @override
  String get faqHabitsQ => '¿Cómo se cuentan las rachas de hábitos?';

  @override
  String get faqHabitsA =>
      'Un día cuenta cuando alcanzas la meta del hábito en un día programado. Pausar un hábito protege la racha. Cada hábito puede tener su propio recordatorio.';

  @override
  String get faqGoalsQ => '¿Cómo siguen el progreso las metas?';

  @override
  String get faqGoalsA =>
      'Dale a la meta una cantidad y una unidad y registra tu avance. Su tarjeta muestra cuánto llevas y cuánto falta antes de la fecha límite.';

  @override
  String get faqProjectsQ => '¿Para qué sirven los proyectos?';

  @override
  String get faqProjectsA =>
      'Agrupa tareas en un proyecto, añade hitos con fecha y sigue el progreso general. Los hitos también aparecen en el calendario.';

  @override
  String get faqInsightsQ => '¿Qué muestra Estadísticas?';

  @override
  String get faqInsightsA =>
      'Tu tiempo de enfoque, tareas terminadas y estudio por días y semanas, con sugerencias amables. Todo se calcula en tu teléfono.';

  @override
  String get faqSpacesQ => '¿Dónde están todas las secciones?';

  @override
  String get faqSpacesA =>
      'Espacios reúne todas las partes de la app (notas, mazos, hábitos, metas, proyectos, sonidos y más) para que la barra principal sea sencilla.';

  @override
  String get faqBackupQ => '¿Cómo se respaldan mis datos?';

  @override
  String get faqBackupA =>
      'Cada día la app guarda en silencio una copia cifrada en este teléfono y conserva las 7 últimas. En Ajustes también puedes exportar una copia con contraseña y restaurarla en otro teléfono.';

  @override
  String get faqPrayerQ => '¿Cómo funcionan los horarios de oración?';

  @override
  String get faqPrayerA =>
      'Elige tu ciudad en Ajustes → Horarios de oración. Se calculan en el teléfono con el método de ese lugar, y puedes cambiar el método y la escuela del Asr. Puedes recibir un aviso en cada oración y la sesión de enfoque se pausa.';

  @override
  String get faqPrivacyQ => '¿Dónde se guardan mis datos?';

  @override
  String get faqPrivacyA =>
      'Solo en tu teléfono, en una base de datos cifrada. No hay cuenta ni seguimiento. Internet solo lo usan las funciones que tú activas, como el asistente opcional.';

  @override
  String get faqAssistantQ => '¿Qué es el asistente?';

  @override
  String get faqAssistantA =>
      'Un ayudante opcional que conectas a tu propio servicio de IA en Ajustes. Está apagado por defecto y pregunta antes de enviar texto de tus notas.';

  @override
  String get tourPlanTitle => 'Planifica tu día';

  @override
  String get tourPlanBody =>
      'Tareas, calendario y hábitos en un lugar tranquilo. Empieza cada mañana con «Empezar mi día».';

  @override
  String get tourFocusTitle => 'Concéntrate a fondo';

  @override
  String get tourFocusBody =>
      'Sesiones con temporizador, sonidos naturales reales, No molestar y tonos finales suaves.';

  @override
  String get tourLearnTitle => 'Aprende para siempre';

  @override
  String get tourLearnBody =>
      'Tarjetas con repetición espaciada, voz en muchos idiomas e importación desde Anki o Excel.';

  @override
  String get helpTitle => 'Ayuda y preguntas';

  @override
  String get helpOpen => 'Abrir';

  @override
  String get helpTour => 'Ver el recorrido';

  @override
  String get tourNext => 'Siguiente';

  @override
  String get tourDone => 'Empecemos';

  @override
  String get transferColTitle => 'Título';

  @override
  String get transferColNotes => 'Notas';

  @override
  String get transferColBody => 'Texto';

  @override
  String get transferColDue => 'Fecha límite';

  @override
  String get transferColPriority => 'Prioridad (0-3)';

  @override
  String get transferColDone => 'Hecha';

  @override
  String get transferColProject => 'Proyecto';

  @override
  String get transferColCategory => 'Categoría';

  @override
  String get transferTitle => 'Importar y exportar';

  @override
  String get transferSaveAs => 'Guardar como';

  @override
  String get transferImport => 'Importar desde un archivo';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV o una tabla de Word. Columnas: título, fecha límite (2026-12-31), prioridad 0-3, hecha, proyecto, notas. Las tareas que ya existen se omiten.';

  @override
  String get transferImportNotesHint =>
      'Los archivos Word, Markdown o de texto se convierten en una nota. Excel o CSV: una nota por fila (título, texto).';

  @override
  String get transferSaved => 'Archivo guardado';

  @override
  String get transferFailed => 'No se pudo crear el archivo. No se cambió nada.';

  @override
  String get transferUnsupported =>
      'Este archivo no se puede leer aquí. Usa Excel, CSV, Word, Markdown o texto.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added añadidos',
      one: '1 añadido',
      zero: 'Nada nuevo que añadir',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Texto';

  @override
  String get transferAllNotes => 'Todas las notas';

  @override
  String get transferThisNote => 'Esta nota';

  @override
  String get transferDeckFormats => 'Guardar como Excel, Word o PDF';

  @override
  String get faqFilesQ => '¿Puedo usar archivos de Excel, Word o PDF?';

  @override
  String get faqFilesA =>
      'Sí. Tareas y Notas tienen arriba un botón de importar y exportar (dos flechas), y cada mazo lo tiene en su menú. Guarda como Excel, CSV, Word o PDF, o importa archivos de Excel, CSV, Word, Markdown o texto. Las columnas pueden estar en cualquier idioma de la app y lo que guardes siempre se puede volver a importar.';

  @override
  String get tplLecture => 'Clase';

  @override
  String get tplBook => 'Resumen de libro';

  @override
  String get tplJournal => 'Diario';

  @override
  String get tplWeek => 'Plan semanal';

  @override
  String get tplLectureBody => '## Ideas clave\n- \n\n## Preguntas\n- [ ] \n\n## Resumen\n';

  @override
  String get tplBookBody =>
      '## Idea principal\n\n## Qué aprendí\n- \n\n## Citas\n> \n\n## Para aplicar\n- [ ] \n';

  @override
  String get tplJournalBody => '## Agradezco\n- \n\n## Enfoque de hoy\n- [ ] \n\n## Notas\n';

  @override
  String get tplWeekBody =>
      '## Metas de la semana\n- [ ] \n\n### Sábado\n- [ ] \n\n### Domingo\n- [ ] \n\n### Lunes\n- [ ] \n\n### Martes\n- [ ] \n\n### Miércoles\n- [ ] \n\n### Jueves\n- [ ] \n\n### Viernes\n- [ ] \n';

  @override
  String get tplHint => 'Empieza con una plantilla';

  @override
  String get noteImage => 'Imagen';

  @override
  String get noteAddImage => 'Añadir imagen';

  @override
  String get noteImageUnreadable => 'Este archivo no es una imagen que la app pueda leer.';

  @override
  String get noteImageTooLarge => 'Esta imagen es demasiado grande.';

  @override
  String get examSet => 'Fijar fecha del examen';

  @override
  String get examDate => 'Fecha del examen';

  @override
  String get examToday => 'El examen es hoy. ¡Suerte!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Examen en $count días',
      one: 'Examen mañana',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'aprende $count tarjetas nuevas al día',
      one: 'aprende 1 tarjeta nueva al día',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'todas aprendidas, sigue repasando';

  @override
  String examRaiseLimit(int count) {
    return 'Mostrar $count tarjetas nuevas al día';
  }

  @override
  String get backupDriveHint =>
      'Para guardar una copia en línea, elige Google Drive (u otra app en la nube) en la pantalla de guardado que se abre después.';

  @override
  String get flashShareDeck => 'Compartir mazo con un amigo';

  @override
  String get flashSortManual => 'Mi orden (arrastrar)';

  @override
  String get flashReorderHint => 'Mantén pulsado el asa y arrastra una tarjeta para moverla.';

  @override
  String get flashReorderNeedsAll => 'Borra la búsqueda y los filtros para arrastrar tarjetas.';

  @override
  String get flashDragHandle => 'Arrastrar para mover';

  @override
  String get reportTitle => 'Informe mensual';

  @override
  String get reportFocus => 'Tiempo de enfoque';

  @override
  String reportSessions(int count) {
    return '$count sesiones';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Mejor día: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count días activos';
  }

  @override
  String get reportCards => 'Tarjetas repasadas';

  @override
  String reportCardsKnown(String percent) {
    return '$percent recordadas';
  }

  @override
  String get reportTasks => 'Tareas completadas';

  @override
  String get reportHabits => 'Registros de hábitos';

  @override
  String get reportEmpty => 'Todavía no hay nada registrado este mes.';

  @override
  String get reportSave => 'Guardar como PDF o Word';

  @override
  String get reportPrevMonth => 'Mes anterior';

  @override
  String get reportNextMonth => 'Mes siguiente';

  @override
  String get careTitle => 'Cuidado del teléfono y los datos';

  @override
  String get storageTitle => 'Almacenamiento';

  @override
  String get storageSubtitle => 'Qué ocupa espacio y limpieza de imágenes sin usar';

  @override
  String get storagePictures => 'Imágenes en notas';

  @override
  String get storageCardMedia => 'Imágenes y audio en tarjetas';

  @override
  String get storageText => 'Texto de notas';

  @override
  String get storageFree => 'Libre en tu teléfono';

  @override
  String get storageLow =>
      'Tu teléfono está casi lleno. Libera espacio para que las copias y los recordatorios sigan funcionando.';

  @override
  String storageUnused(int count, String size) {
    return '$count imágenes sin usar ($size)';
  }

  @override
  String get storageNoUnused => 'No hay imágenes sin usar. Todo en orden.';

  @override
  String get storageClean => 'Quitar imágenes sin usar';

  @override
  String storageCleaned(int count) {
    return '$count imágenes eliminadas';
  }

  @override
  String get storageHint =>
      'Una imagen solo es «sin usar» si ninguna nota la muestra, incluidas las de la papelera.';

  @override
  String get batteryTitle => 'Mantén los recordatorios activos';

  @override
  String get batterySubtitle => 'Algunos teléfonos detienen apps en segundo plano. Revisa el tuyo.';

  @override
  String get batteryStatusOk =>
      'El ahorro de batería no limita la app. Los recordatorios y sonidos deberían llegar a tiempo.';

  @override
  String get batteryStatusLimited =>
      'El ahorro de batería puede detener la app en segundo plano; recordatorios y sonidos pueden llegar tarde o no llegar.';

  @override
  String get batteryOpen => 'Abrir ajustes de batería';

  @override
  String get batteryOpenApp => 'Abrir ajustes de la app';

  @override
  String get batteryGeneric =>
      'En los ajustes de batería elige esta app y ponla en «Sin restricciones» (o «No optimizar»).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: abre también Seguridad › Permisos › Inicio automático y activa la app; ahorro de batería en «Sin restricciones».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: abre Batería › esta app y permite actividad en segundo plano e inicio automático; bloquea la app en recientes.';

  @override
  String get batterySamsung =>
      'Samsung: Batería › Límites de uso en segundo plano: quita la app de Apps en suspensión y Apps en suspensión profunda.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: Inicio de apps › esta app › gestionar manualmente y permite inicio automático, secundario y en segundo plano.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Batería › Consumo en segundo plano › permite esta app y activa el inicio automático en permisos.';

  @override
  String get whatsNewTitle => 'Novedades';

  @override
  String get whatsNewSubtitle => 'Los últimos cambios en pocas líneas';

  @override
  String get whatsNewDone => 'Entendido';

  @override
  String get whatsNewOrderTitle => 'Arrastra tarjetas a tu orden';

  @override
  String get whatsNewOrderBody => 'En un mazo elige Orden › Mi orden y arrastra el asa.';

  @override
  String get whatsNewSpeechTitle => 'Un altavoz en cada cara';

  @override
  String get whatsNewSpeechBody =>
      'Púlsalo para oír la palabra o la traducción. Velocidad, repeticiones y voz están en el menú de repaso. El idioma se detecta del texto.';

  @override
  String get whatsNewReportTitle => 'Informe mensual';

  @override
  String get whatsNewReportBody =>
      'En Estadísticas toca el icono del informe para ver el mes y guardarlo en PDF o Word.';

  @override
  String get whatsNewCareTitle => 'Cuidado del teléfono y los datos';

  @override
  String get whatsNewCareBody =>
      'Ajustes tiene ahora una página de almacenamiento con limpieza de imágenes y una guía de batería para tu marca.';

  @override
  String get whatsNewSoundTitle => 'Sonidos más calmados';

  @override
  String get whatsNewSoundBody =>
      'Los sonidos de la naturaleza son más suaves y bajos, y las tarjetas lucen mejor.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Revisado $date: la última copia se abre correctamente.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Revisado $date: se encontró una copia dañada y se sustituyó por una nueva.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Revisado $date: no se pudo abrir la última copia. Guarda una copia tú mismo desde Ajustes.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Sueles estudiar hacia las $time';
  }

  @override
  String get smartReviewTimeUse => 'Usar';

  @override
  String get widgetNewNote => 'Nueva nota';

  @override
  String get noteConnections => 'Etiquetas, enlaces y tareas';

  @override
  String get navCards => 'Tarjetas';

  @override
  String get studyAnswerWay => 'Cómo responder';

  @override
  String get studyMorePractice => 'Práctica extra';

  @override
  String get studySessionSettings => 'Ajustes de la sesión';

  @override
  String get focusAdjustTitle => 'Tu sesión';

  @override
  String get focusPresetsTitle => 'Listas';

  @override
  String get focusPresetStudy => 'Estudio';

  @override
  String get focusPresetDeep => 'Trabajo profundo';

  @override
  String get focusPresetQuick => 'Sprint corto';

  @override
  String get focusPresetReading => 'Lectura';

  @override
  String get focusPresetWorkout => 'Rondas de ejercicio';

  @override
  String get focusAdjustMinutes => 'Duración del foco';

  @override
  String get focusAdjustBreak => 'Duración del descanso';

  @override
  String get focusAdjustRounds => 'Rondas';

  @override
  String get focusRoundsOpen => 'Sin límite';

  @override
  String focusMinutesShort(String n) {
    return '$n minutos';
  }

  @override
  String get focusTapToAdjust => 'Toca para cambiar el tiempo';

  @override
  String get flashArrangeDecks => 'Ordenar mazos';

  @override
  String get flashDeckActions => 'Opciones del mazo';

  @override
  String get starterBrowse => 'Mazos listos';

  @override
  String get starterBrowseHint => 'Añade uno con un toque y empieza';

  @override
  String get dashOpenDecks => 'Abre tus tarjetas';

  @override
  String speechVoiceNumber(String n) {
    return 'Voz $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Buen ritmo. ¿Descansas $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Empezar descanso';

  @override
  String tasksFinishAt(String time) {
    return 'Si empiezas ahora, terminas todo a las $time';
  }

  @override
  String get focusCalmPacing => 'Ritmo tranquilo';

  @override
  String get focusCalmPacingHint => 'Solo minutos enteros y el anillo, sin segundos';

  @override
  String get focusFlipHint => 'Pon el teléfono boca abajo para empezar';

  @override
  String get focusImmersive => 'Modo inmersivo';

  @override
  String get focusImmersiveBlack => 'Negro puro (ahorra batería)';

  @override
  String get focusFlipToFocus => 'Voltear para enfocarte';

  @override
  String get focusFlipToFocusHint =>
      'En modo inmersivo: boca abajo empieza, al levantarlo se pausa';

  @override
  String get guardTitle => 'Guardián de distracciones';

  @override
  String get guardSubtitle => 'Pausa las apps que distraen mientras te concentras';

  @override
  String get guardSwitch => 'Pausar apps que distraen';

  @override
  String get guardSwitchHint => 'Durante las sesiones de concentración y tu horario';

  @override
  String get guardNeedsAccess => 'Necesita el permiso de accesibilidad: toca para activarlo';

  @override
  String get guardDisclosureTitle => 'Cómo funciona el guardián';

  @override
  String get guardDisclosureBody =>
      'Para pausar las apps que elijas, Deep Focus usa el servicio de accesibilidad de Android para saber qué app está abierta. Con \"Cerrar Shorts y Reels\" activado, también comprueba si hay un reproductor de videos cortos en pantalla.\n\nNo lee texto, no guarda nada de lo que ve y no envía nada: todo queda en tu teléfono. Puedes desactivarlo cuando quieras en Accesibilidad.';

  @override
  String get guardAgree => 'Aceptar y abrir ajustes';

  @override
  String get guardModeGentle => 'Suave';

  @override
  String get guardModeStrict => 'Estricto';

  @override
  String get guardGentleHint => 'Una pausa de 5 segundos para respirar y luego eliges';

  @override
  String get guardStrictHint =>
      'Las apps elegidas quedan cerradas hasta que termine la concentración';

  @override
  String get guardApps => 'Apps para pausar';

  @override
  String get guardAppsAllowed => 'Apps permitidas';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Ninguna elegida',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Permitir solo las apps elegidas';

  @override
  String get guardAllowlistHint =>
      'Todas las demás se pausan; llamadas, ajustes y teclado siempre funcionan';

  @override
  String get guardShorts => 'Cerrar Shorts y Reels';

  @override
  String get guardShortsHint =>
      'Siempre que el guardián esté activo. Lo mejor posible: estas apps cambian a menudo';

  @override
  String get guardSchedule => 'Horario protegido';

  @override
  String get guardScheduleHint => 'También en días y horas fijos, como clase o trabajo';

  @override
  String get guardFrom => 'Desde';

  @override
  String get guardTo => 'Hasta';

  @override
  String get guardSearchApps => 'Buscar apps';

  @override
  String get guardNoApps => 'No se encontraron apps';

  @override
  String get guardPrivacy =>
      'Funciona solo en tu teléfono: ve qué app está abierta, nunca su contenido, y no envía nada.';

  @override
  String get guardBreathe => 'Inhala… y exhala';

  @override
  String get guardQuestion => '¿Necesitas esta app ahora?';

  @override
  String get guardBackToFocus => 'Volver a concentrarme';

  @override
  String get guardOpenFive => 'Abrir 5 minutos';

  @override
  String get guardStrictBody => 'Esta app está en pausa hasta que termine tu concentración.';

  @override
  String get guardShortsClosed => 'Los videos cortos están cerrados con el guardián activo';

  @override
  String get faqGuardQ => '¿Cómo freno las apps que distraen mientras me concentro?';

  @override
  String get faqGuardA =>
      'Abre Concentración → ajustes del temporizador → Guardián de distracciones. Elige las apps y luego Suave (5 segundos de respiración y la pregunta \"¿Necesitas esta app ahora?\") o Estricto (quedan cerradas). Funciona en las sesiones y, con Horario protegido, en los días y horas que elijas. \"Permitir solo las apps elegidas\" pausa todo lo demás; llamadas, ajustes y teclado siempre funcionan. Android te pide una vez activarlo en Accesibilidad. Solo ve qué app está abierta y no envía nada.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Movida a $name';
  }

  @override
  String get notesDragHint => 'Mantén una nota y arrástrala a un cuaderno';

  @override
  String get guardReviewCards => 'Repasar tarjetas';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Te esperan $count tarjetas',
      one: 'Te espera 1 tarjeta',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emergencia: mantén 10 segundos';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Sigue manteniendo… $n';
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
      other: 'volviste a concentrarte $count veces',
      one: 'volviste a concentrarte 1 vez',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Renombrar palabras';

  @override
  String get wordsSubtitle => 'Usa tu propia palabra para cualquier texto';

  @override
  String get wordsHint =>
      'Toca un texto para cambiarlo. Tus palabras solo se aplican a este idioma y se guardan en las copias.';

  @override
  String get wordsSearch => 'Buscar textos';

  @override
  String get wordsChangedOnly => 'Solo cambiados';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Usar original';

  @override
  String get wordsResetAll => 'Restablecer todas';

  @override
  String get wordsResetAllConfirm => 'Todos los textos de este idioma vuelven al original.';

  @override
  String get wordsNone => 'No se encontró texto';

  @override
  String get settingsLanguageSearch => 'Buscar idioma';

  @override
  String get settingsLanguageNoMatch => 'Ningún idioma coincide';

  @override
  String get soundsMyMusic => 'Tu audio';

  @override
  String get soundsMusicHint =>
      'Reproduce un archivo de audio de tu teléfono. No se copia ni se sube nada.';

  @override
  String get soundsChooseMusic => 'Elegir audio';

  @override
  String get soundsRemoveMusic => 'Quitar audio';

  @override
  String get wordPacksTitle => 'Paquetes de palabras';

  @override
  String get wordPacksHint =>
      'Listas de palabras por tema. Descarga solo el idioma que quieras y luego edita o elimina las tarjetas libremente.';

  @override
  String get wordPacksFailed => 'No se pudo descargar. Comprueba la conexión.';

  @override
  String get wordPacksEmpty => 'Las palabras de este idioma aún se están preparando.';
}

/// The translations for Spanish Castilian, as used in Latin America and the Caribbean (`es_419`).
class AppLocalizationsEs419 extends AppLocalizationsEs {
  AppLocalizationsEs419() : super('es_419');

  @override
  String get moduleSettings => 'Configuración';

  @override
  String get actionAdd => 'Agregar';

  @override
  String get focusAddNote => 'Agrega una nota sobre esta sesión';

  @override
  String get focusOpenSettings => 'Abrir configuración';

  @override
  String get tasksQuickAddHint => 'Agregar una tarea…';

  @override
  String get tasksEmptyMessage => 'Agrega una tarea para empezar a dar forma a tu día.';

  @override
  String get taskAddChecklistItem => 'Agregar un elemento';

  @override
  String get taskAddSubtask => 'Agregar una subtarea';

  @override
  String get taskAddDependency => 'Agregar tarea bloqueante';

  @override
  String get calendarDragHint => 'Mantén presionado y arrastra un evento para cambiarlo de hora';

  @override
  String get deckEmptyCards => 'Agrega tarjetas para empezar a aprender.';

  @override
  String get cardAddAnother => 'Guardar y agregar otra';

  @override
  String get settingsTitle => 'Configuración';

  @override
  String get settingsGeneral => 'Configuración general';

  @override
  String get settingsPermissionDenied =>
      'Las notificaciones están bloqueadas en la configuración del sistema.';

  @override
  String get assistantScheduleConfirmTitle => '¿Agregar bloques de tiempo a tu calendario?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Se agregarán $count bloques de tiempo al calendario de hoy.',
      one: 'Se agregará 1 bloque de tiempo al calendario de hoy.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count bloques de tiempo agregados',
      one: '1 bloque de tiempo agregado',
    );
    return '$_temp0';
  }

  @override
  String get assistantNoEstimate => 'Agrega una estimación para planificarlas';

  @override
  String get calendarNoEventsHint =>
      'Agrega un evento o un bloque de tiempo para planificar este día.';

  @override
  String get flashcardsCardAdded => 'Tarjeta agregada';

  @override
  String get focusNotificationsDisabledInApp =>
      'Los recordatorios están desactivados en Configuración. No recibirás ningún aviso cuando termine una sesión.';

  @override
  String get habitsCheckInHint => 'Mantén presionado para ajustar';

  @override
  String get onboardingLanguageBody => 'Puedes cambiarlo en cualquier momento en Configuración.';

  @override
  String get projectAddTask => 'Agregar tarea al proyecto';

  @override
  String get taskSubtaskDetailsHint =>
      'Guarda primero la tarea para agregar subtareas, elementos de lista, etiquetas y dependencias.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'No hay ninguna voz instalada para este idioma. Agrega una en la configuración de texto a voz de Android.';

  @override
  String get milestoneAdd => 'Agregar hito';

  @override
  String get milestonesEmpty =>
      'Aún no hay hitos. Agrega puntos de control con fecha para seguir el proyecto en el calendario.';

  @override
  String get flashcardsFavorite => 'Agregar a favoritas';

  @override
  String get flashcardsAddTag => 'Agregar etiqueta';

  @override
  String get flashcardsAddImage => 'Agregar imagen';

  @override
  String get flashcardsAddAudio => 'Agregar audio';

  @override
  String get flashcardsAddField => 'Agregar campo';

  @override
  String get flashcardsTemplateConfirm =>
      'La plantilla define cómo se muestran los campos y agrega los suyos. Tus tarjetas y campos se mantienen.';

  @override
  String get flashcardsMicDenied =>
      'El acceso al micrófono está desactivado. Permítelo en la configuración del sistema para grabar.';

  @override
  String get speechGetVoicesHint =>
      'Los idiomas sin voz se pueden descargar en la configuración de voz del teléfono.';

  @override
  String get speechSettingsFailed => 'No se pudo abrir la configuración de voz de este teléfono.';

  @override
  String get flashMenuAdd => 'Agregar tarjetas';

  @override
  String get focusDndNeedsAccess =>
      'Permite el acceso en la configuración del teléfono para usarlo';

  @override
  String get starterHint => 'Agrega uno para estudiar ya. Puedes editarlo o borrarlo después.';

  @override
  String get starterAdd => 'Agregar';

  @override
  String get faqMyDayA =>
      'Aparece una vez al día en Inicio: ves las tareas de hoy, el próximo evento, los hábitos pendientes y las tarjetas por repasar, y empiezas una sesión de enfoque con un toque. Mantén presionado el icono de la app para accesos rápidos o agrega el widget a tu pantalla.';

  @override
  String get faqTasksQ => '¿Cómo agrego una tarea con recordatorio?';

  @override
  String get faqFocusA =>
      'Elige Pomodoro, cuenta regresiva o tiempo libre y toca Empezar; los descansos pueden seguir solos. En Configuración eliges el sonido final, activas No molestar durante el enfoque y reproduces tus sonidos naturales en cada sesión.';

  @override
  String get faqCalendarA =>
      'Sí. Las fechas hégira (Umm al-Qura) se muestran solas en árabe y puedes activarlas en Configuración para cualquier idioma. Eventos, tareas con fecha e hitos de proyectos aparecen juntos.';

  @override
  String get faqImportA =>
      'Sí. En un mazo elige Importar y un archivo: Anki (.apkg), Excel (.xlsx) o CSV, y asigna las columnas. Usa «Plantilla de hoja de cálculo» para escribir tarjetas en la computadora. Las imágenes y sonidos de Anki no se importan.';

  @override
  String get faqNotesA =>
      'Escribe con listas y formato, fija o marca como favoritas las notas importantes, agrega etiquetas y enlaza notas con tareas. El botón del micrófono te deja dictar. Una nota nueva puede empezar con una plantilla (clase, resumen de libro, diario, plan semanal) y el botón de imagen agrega fotos.';

  @override
  String get faqProjectsA =>
      'Agrupa tareas en un proyecto, agrega hitos con fecha y sigue el progreso general. Los hitos también aparecen en el calendario.';

  @override
  String get faqBackupA =>
      'Cada día la app guarda en silencio una copia cifrada en este teléfono y conserva las 7 últimas. En Configuración también puedes exportar una copia con contraseña y restaurarla en otro teléfono.';

  @override
  String get faqPrayerA =>
      'Elige tu ciudad en Configuración → Horarios de oración. Se calculan en el teléfono con el método de ese lugar, y puedes cambiar el método y la escuela del Asr. Puedes recibir un aviso en cada oración y la sesión de enfoque se pausa.';

  @override
  String get faqAssistantA =>
      'Un ayudante opcional que conectas a tu propio servicio de IA en Configuración. Está apagado por defecto y pregunta antes de enviar texto de tus notas.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added agregados',
      one: '1 agregado',
      zero: 'Nada nuevo que agregar',
    );
    return '$_temp0';
  }

  @override
  String get noteAddImage => 'Agregar imagen';

  @override
  String get flashReorderHint => 'Mantén presionado el asa y arrastra una tarjeta para moverla.';

  @override
  String get batteryOpen => 'Abrir configuración de batería';

  @override
  String get batteryOpenApp => 'Abrir configuración de la app';

  @override
  String get batteryGeneric =>
      'En la configuración de batería elige esta app y ponla en «Sin restricciones» (o «No optimizar»).';

  @override
  String get whatsNewCareBody =>
      'Configuración tiene ahora una página de almacenamiento con limpieza de imágenes y una guía de batería para tu marca.';

  @override
  String autoBackupCheckFailed(String date) {
    return 'Revisado $date: no se pudo abrir la última copia. Guarda una copia tú mismo desde Configuración.';
  }

  @override
  String get studySessionSettings => 'Configuración de la sesión';

  @override
  String get starterBrowseHint => 'Agrega uno con un toque y empieza';

  @override
  String get guardAgree => 'Aceptar y abrir configuración';

  @override
  String get guardAllowlistHint =>
      'Todas las demás se pausan; llamadas, configuración y teclado siempre funcionan';

  @override
  String get faqGuardA =>
      'Abre Concentración → configuración del temporizador → Guardián de distracciones. Elige las apps y luego Suave (5 segundos de respiración y la pregunta \"¿Necesitas esta app ahora?\") o Estricto (quedan cerradas). Funciona en las sesiones y, con Horario protegido, en los días y horas que elijas. \"Permitir solo las apps elegidas\" pausa todo lo demás; llamadas, configuración y teclado siempre funcionan. Android te pide una vez activarlo en Accesibilidad. Solo ve qué app está abierta y no envía nada.';
}
