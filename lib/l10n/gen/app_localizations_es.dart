// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Future OS';

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
  String get spacesSubtitle => 'Todo lo que organizas, en un solo lugar';

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
  String get actionFilter => 'Filtrar';

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
  String get actionReopen => 'Reabrir';

  @override
  String get actionDeleteForever => 'Eliminar para siempre';

  @override
  String get actionEmptyTrash => 'Vaciar papelera';

  @override
  String get actionSelect => 'Seleccionar';

  @override
  String get actionNone => 'Ninguno';

  @override
  String get actionLink => 'Vincular';

  @override
  String get actionUnlink => 'Desvincular';

  @override
  String get actionCustomize => 'Personalizar';

  @override
  String get actionReset => 'Restablecer';

  @override
  String get actionOpen => 'Abrir';

  @override
  String get actionEnable => 'Activar';

  @override
  String get actionDisable => 'Desactivar';

  @override
  String get actionAllow => 'Permitir';

  @override
  String get actionNotNow => 'Ahora no';

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
  String get restoredItem => 'Restaurado';

  @override
  String get untitled => 'Sin título';

  @override
  String get noProject => 'Sin proyecto';

  @override
  String get confirmDeleteTitle => '¿Eliminar definitivamente?';

  @override
  String get confirmDeleteMessage => 'Esta acción no se puede deshacer.';

  @override
  String get greetingMorning => 'Buenos días';

  @override
  String get greetingAfternoon => 'Buenas tardes';

  @override
  String get greetingEvening => 'Buenas noches';

  @override
  String get dashboardTitle => 'Hoy';

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
  String get dashNoTasksToday => 'Nada pendiente para hoy. Vía libre.';

  @override
  String get dashNoEvents => 'No hay más eventos hoy';

  @override
  String get dashNoHabits => 'Crea un hábito para seguirlo aquí';

  @override
  String get dashNoGoals => 'Define una meta para ver tu avance';

  @override
  String get dashNoNotes => 'Tus notas más recientes aparecerán aquí';

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
  String get focusElapsed => 'Transcurrido';

  @override
  String get focusRemaining => 'Restante';

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
  String get taskEstimate => 'Estimación';

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
  String taskDueOn(String date) {
    return 'Vence el $date';
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
  String get dateNextWeek => 'Próxima semana';

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
  String get projectNotes => 'Notas del proyecto';

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
  String get calendarLegend => 'Leyenda';

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
  String get notesNotebooks => 'Cuadernos';

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
      'Pega una tarjeta por línea, con anverso y reverso separados por un tabulador o un punto y coma, o pega un archivo de mazo exportado.';

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
  String get assistantCreateAll => 'Crear todas';

  @override
  String get assistantChooseDeck => 'Elige un mazo';

  @override
  String get assistantCreated => 'Creado';

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
  String get backupNotABackup => 'Este archivo no es una copia de seguridad de Future OS.';

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
  String get a11yOpenMenu => 'Abrir menú';

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
  String get a11ySelected => 'Seleccionado';

  @override
  String get startupErrorTitle => 'Your data could not be opened';

  @override
  String get startupErrorLocked =>
      'The encryption key for this device\'s data is not available. Nothing has been deleted. Restarting the device often helps. If you recently restored the device, restore your data from an encrypted backup instead.';

  @override
  String get startupErrorCipher =>
      'This device does not support the encrypted storage the app requires. Nothing has been saved unencrypted.';

  @override
  String get startupErrorRetry => 'Try again';
}
