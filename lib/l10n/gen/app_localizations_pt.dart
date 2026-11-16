// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'Future OS';

  @override
  String get navHome => 'Início';

  @override
  String get navTasks => 'Tarefas';

  @override
  String get navFocus => 'Foco';

  @override
  String get navCalendar => 'Calendário';

  @override
  String get navSpaces => 'Espaços';

  @override
  String get moduleProjects => 'Projetos';

  @override
  String get moduleNotes => 'Notas';

  @override
  String get moduleFlashcards => 'Cartões';

  @override
  String get moduleGoals => 'Metas';

  @override
  String get moduleHabits => 'Hábitos';

  @override
  String get moduleAnalytics => 'Estatísticas';

  @override
  String get moduleSearch => 'Busca';

  @override
  String get moduleAssistant => 'Assistente';

  @override
  String get moduleSettings => 'Configurações';

  @override
  String get moduleTrash => 'Lixeira';

  @override
  String get spacesSubtitle => 'Tudo o que você organiza, em um só lugar';

  @override
  String get actionSave => 'Salvar';

  @override
  String get actionCancel => 'Cancelar';

  @override
  String get actionDelete => 'Excluir';

  @override
  String get actionEdit => 'Editar';

  @override
  String get actionDone => 'Concluir';

  @override
  String get actionAdd => 'Adicionar';

  @override
  String get actionCreate => 'Criar';

  @override
  String get actionClose => 'Fechar';

  @override
  String get actionBack => 'Voltar';

  @override
  String get actionUndo => 'Desfazer';

  @override
  String get actionRestore => 'Restaurar';

  @override
  String get actionRetry => 'Tentar de novo';

  @override
  String get actionContinue => 'Continuar';

  @override
  String get actionSkip => 'Pular';

  @override
  String get actionArchive => 'Arquivar';

  @override
  String get actionUnarchive => 'Desarquivar';

  @override
  String get actionPin => 'Fixar';

  @override
  String get actionUnpin => 'Desafixar';

  @override
  String get actionMore => 'Mais opções';

  @override
  String get actionClear => 'Limpar';

  @override
  String get actionSearch => 'Buscar';

  @override
  String get actionFilter => 'Filtrar';

  @override
  String get actionSort => 'Ordenar';

  @override
  String get actionShare => 'Compartilhar';

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
  String get actionStop => 'Parar';

  @override
  String get actionComplete => 'Concluir';

  @override
  String get actionReopen => 'Reabrir';

  @override
  String get actionDeleteForever => 'Excluir de vez';

  @override
  String get actionEmptyTrash => 'Esvaziar lixeira';

  @override
  String get actionSelect => 'Selecionar';

  @override
  String get actionNone => 'Nenhum';

  @override
  String get actionLink => 'Vincular';

  @override
  String get actionUnlink => 'Desvincular';

  @override
  String get actionCustomize => 'Personalizar';

  @override
  String get actionReset => 'Redefinir';

  @override
  String get actionOpen => 'Abrir';

  @override
  String get actionEnable => 'Ativar';

  @override
  String get actionDisable => 'Desativar';

  @override
  String get actionAllow => 'Permitir';

  @override
  String get actionNotNow => 'Agora não';

  @override
  String get actionPreview => 'Visualizar';

  @override
  String get actionLog => 'Registrar progresso';

  @override
  String get stateLoading => 'Carregando…';

  @override
  String get stateSaving => 'Salvando…';

  @override
  String get stateSaved => 'Salvo';

  @override
  String get stateUnsaved => 'Alterações não salvas';

  @override
  String get errorGenericTitle => 'Algo deu errado';

  @override
  String get errorGenericMessage => 'Seus dados estão seguros. Tente de novo.';

  @override
  String get errorLoadFailed => 'Não foi possível carregar este conteúdo.';

  @override
  String get errorSaveFailed => 'Não foi possível salvar. Suas alterações continuam aqui.';

  @override
  String get validationRequired => 'Este campo é obrigatório';

  @override
  String get validationTitleRequired => 'Digite um título';

  @override
  String get validationNameRequired => 'Digite um nome';

  @override
  String get validationTooLong => 'Está longo demais';

  @override
  String get validationEndBeforeStart => 'O fim precisa ser depois do início';

  @override
  String get validationStartAfterDue => 'A data de início precisa ser antes do prazo';

  @override
  String get validationPositiveNumber => 'Digite um número maior que zero';

  @override
  String get validationDependencyCycle => 'Isso criaria uma dependência circular';

  @override
  String get validationInvalidRepeat => 'Esta regra de repetição não é válida';

  @override
  String get deletedItem => 'Movido para a lixeira';

  @override
  String get restoredItem => 'Restaurado';

  @override
  String get untitled => 'Sem título';

  @override
  String get noProject => 'Sem projeto';

  @override
  String get confirmDeleteTitle => 'Excluir permanentemente?';

  @override
  String get confirmDeleteMessage => 'Não é possível desfazer esta ação.';

  @override
  String get greetingMorning => 'Bom dia';

  @override
  String get greetingAfternoon => 'Boa tarde';

  @override
  String get greetingEvening => 'Boa noite';

  @override
  String get dashboardTitle => 'Hoje';

  @override
  String get dashFocusToday => 'Foco de hoje';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done de $target';
  }

  @override
  String get dashStartFocus => 'Iniciar foco';

  @override
  String get dashFocusRunning => 'Sessão em andamento';

  @override
  String get dashTodayTasks => 'Para hoje';

  @override
  String get dashAgenda => 'Próximos eventos';

  @override
  String get dashHabits => 'Hábitos de hoje';

  @override
  String get dashGoals => 'Metas';

  @override
  String get dashReview => 'Revisão';

  @override
  String get dashRecentNotes => 'Notas recentes';

  @override
  String get dashInsight => 'Sugestão';

  @override
  String get dashSeeAll => 'Ver tudo';

  @override
  String get dashNoTasksToday => 'Nada para hoje. Caminho livre.';

  @override
  String get dashNoEvents => 'Nenhum outro evento hoje';

  @override
  String get dashNoHabits => 'Crie um hábito para acompanhá-lo aqui';

  @override
  String get dashNoGoals => 'Defina uma meta para ver seu progresso';

  @override
  String get dashNoNotes => 'Suas notas mais recentes vão aparecer aqui';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões para revisar',
      one: '1 cartão para revisar',
      zero: 'Nenhum cartão para revisar',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Revisar agora';

  @override
  String get dashCustomizeTitle => 'Seções do início';

  @override
  String get dashCustomizeHint => 'Escolha o que aparece na sua tela inicial.';

  @override
  String get dashSectionFocus => 'Foco';

  @override
  String get dashSectionToday => 'Tarefas para hoje';

  @override
  String get dashSectionAgenda => 'Próximos eventos';

  @override
  String get dashSectionHabits => 'Hábitos';

  @override
  String get dashSectionGoals => 'Metas';

  @override
  String get dashSectionReview => 'Revisão de cartões';

  @override
  String get dashSectionNotes => 'Notas recentes';

  @override
  String get dashSectionInsight => 'Sugestões';

  @override
  String get quickAddTask => 'Nova tarefa';

  @override
  String get quickAddNote => 'Nova nota';

  @override
  String get quickAddEvent => 'Novo evento';

  @override
  String get quickStartFocus => 'Foco';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Você tem $count tarefas atrasadas. Comece pela mais importante.',
      one: 'Você tem 1 tarefa atrasada. Remarque ou conclua primeiro.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Faltam $minutes minutos para sua meta diária de foco.';
  }

  @override
  String get insightCardsDue =>
      'Revise agora seus cartões pendentes, enquanto estão frescos na memória.';

  @override
  String get insightAllClear => 'Tudo em dia. Planeje o amanhã ou faça uma pausa consciente.';

  @override
  String insightHabitStreak(String habit) {
    return 'Mantenha sua sequência: $habit ainda está pendente hoje.';
  }

  @override
  String get focusTitle => 'Foco';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Temporizador';

  @override
  String get focusModeCountUp => 'Cronômetro';

  @override
  String get focusModeOpen => 'Livre';

  @override
  String get focusPhaseWork => 'Foco';

  @override
  String get focusPhaseShortBreak => 'Pausa curta';

  @override
  String get focusPhaseLongBreak => 'Pausa longa';

  @override
  String get focusReady => 'Quando você quiser';

  @override
  String get focusPaused => 'Pausado';

  @override
  String get focusRunning => 'Em foco';

  @override
  String get focusElapsed => 'Decorrido';

  @override
  String get focusRemaining => 'Restante';

  @override
  String get focusDuration => 'Duração';

  @override
  String get focusLinkTask => 'Vincular tarefa';

  @override
  String get focusLinkedTask => 'Trabalhando em';

  @override
  String get focusNoTask => 'Nenhuma tarefa vinculada';

  @override
  String focusCycle(int current, int total) {
    return 'Ciclo $current de $total';
  }

  @override
  String get focusSkipBreak => 'Pular pausa';

  @override
  String get focusStartBreak => 'Iniciar pausa';

  @override
  String get focusStartNext => 'Próximo foco';

  @override
  String get focusSessionComplete => 'Sessão concluída';

  @override
  String get focusSessionStopped => 'Sessão salva';

  @override
  String focusSessionSummary(String duration) {
    return 'Você ficou em foco por $duration.';
  }

  @override
  String get focusAddNote => 'Adicione uma nota sobre esta sessão';

  @override
  String get focusHistory => 'Histórico';

  @override
  String get focusNoHistory => 'As sessões concluídas vão aparecer aqui';

  @override
  String get focusTargets => 'Metas de foco';

  @override
  String get focusDailyTarget => 'Meta diária';

  @override
  String get focusWeeklyTarget => 'Meta semanal';

  @override
  String get focusOutcomeCompleted => 'Concluída';

  @override
  String get focusOutcomeInterrupted => 'Encerrada antes';

  @override
  String get focusRecovered => 'Sua sessão continuou enquanto o app estava fechado.';

  @override
  String get focusCompletedWhileAway =>
      'Uma sessão terminou enquanto o app estava fechado e foi salva.';

  @override
  String get focusNotificationsOff =>
      'As notificações estão desativadas. Você não será avisado quando uma sessão terminar.';

  @override
  String get focusBatteryHint =>
      'Alguns aparelhos pausam apps em segundo plano. O timer continua preciso, mas os alertas podem atrasar. Permita o uso irrestrito da bateria para receber alertas confiáveis.';

  @override
  String get focusOpenSettings => 'Abrir configurações';

  @override
  String get focusStopConfirmTitle => 'Parar esta sessão?';

  @override
  String get focusStopConfirmMessage => 'O tempo de foco até agora será salvo.';

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
    return '$phase, faltam $time';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time decorridos';
  }

  @override
  String get focusDeleteSession => 'Excluir sessão';

  @override
  String get tasksTitle => 'Tarefas';

  @override
  String get tasksViewToday => 'Hoje';

  @override
  String get tasksViewUpcoming => 'Próximas';

  @override
  String get tasksViewAll => 'Todas';

  @override
  String get tasksViewOverdue => 'Atrasadas';

  @override
  String get tasksViewCompleted => 'Concluídas';

  @override
  String get tasksQuickAddHint => 'Adicionar uma tarefa…';

  @override
  String get tasksEmptyTitle => 'Tudo em dia';

  @override
  String get tasksEmptyMessage => 'Adicione uma tarefa para começar a organizar seu dia.';

  @override
  String get tasksEmptyCompleted => 'As tarefas concluídas vão aparecer aqui.';

  @override
  String get taskNew => 'Nova tarefa';

  @override
  String get taskEdit => 'Editar tarefa';

  @override
  String get taskTitleLabel => 'Título';

  @override
  String get taskTitleHint => 'O que precisa ser feito?';

  @override
  String get taskDescriptionLabel => 'Descrição';

  @override
  String get taskNotesLabel => 'Anotações';

  @override
  String get taskPriority => 'Prioridade';

  @override
  String get priorityNone => 'Nenhuma';

  @override
  String get priorityLow => 'Baixa';

  @override
  String get priorityMedium => 'Média';

  @override
  String get priorityHigh => 'Alta';

  @override
  String get priorityUrgent => 'Urgente';

  @override
  String get taskDueDate => 'Prazo';

  @override
  String get taskStartDate => 'Data de início';

  @override
  String get taskReminder => 'Lembrete';

  @override
  String get taskRepeat => 'Repetir';

  @override
  String get taskProject => 'Projeto';

  @override
  String get taskCategory => 'Categoria';

  @override
  String get taskCategoryHint => 'ex.: Trabalho, Casa, Estudos';

  @override
  String get taskEstimate => 'Estimativa';

  @override
  String get taskEstimateMinutes => 'Estimativa (minutos)';

  @override
  String get taskTracked => 'Foco registrado';

  @override
  String get taskLabels => 'Marcadores';

  @override
  String get taskAddLabel => 'Novo marcador';

  @override
  String get taskChecklist => 'Lista de verificação';

  @override
  String get taskAddChecklistItem => 'Adicionar um item';

  @override
  String get taskSubtasks => 'Subtarefas';

  @override
  String get taskAddSubtask => 'Adicionar uma subtarefa';

  @override
  String get taskDependencies => 'Bloqueada por';

  @override
  String get taskAddDependency => 'Adicionar tarefa bloqueadora';

  @override
  String get taskLinkedNotes => 'Notas vinculadas';

  @override
  String get taskSetTime => 'Definir horário';

  @override
  String get taskNoDate => 'Sem data';

  @override
  String get taskCompleted => 'Tarefa concluída';

  @override
  String get taskNextOccurrence => 'Próxima ocorrência criada';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskDueOn(String date) {
    return 'Prazo: $date';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days dias de atraso',
      one: '1 dia de atraso',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marcar “$title” como concluída';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marcar “$title” como não concluída';
  }

  @override
  String get sortSmart => 'Inteligente';

  @override
  String get sortDueDate => 'Prazo';

  @override
  String get sortPriority => 'Prioridade';

  @override
  String get sortCreated => 'Mais recentes';

  @override
  String get sortTitle => 'Título';

  @override
  String get filterAllProjects => 'Todos os projetos';

  @override
  String get filterAnyPriority => 'Qualquer prioridade';

  @override
  String get filterTitle => 'Filtrar e ordenar';

  @override
  String get dateToday => 'Hoje';

  @override
  String get dateTomorrow => 'Amanhã';

  @override
  String get dateYesterday => 'Ontem';

  @override
  String get dateNextWeek => 'Próxima semana';

  @override
  String get repeatNever => 'Não se repete';

  @override
  String get repeatDaily => 'Todo dia';

  @override
  String get repeatWeekdays => 'Dias úteis';

  @override
  String get repeatWeekly => 'Toda semana';

  @override
  String get repeatMonthly => 'Todo mês';

  @override
  String get repeatYearly => 'Todo ano';

  @override
  String get repeatCustom => 'Personalizado';

  @override
  String get repeatEvery => 'Repetir a cada';

  @override
  String get repeatOnDays => 'Nos dias';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'dias', one: 'dia');
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
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'meses', one: 'mês');
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
      other: '$count vezes',
      one: '1 vez',
    );
    return 'Termina após $_temp0';
  }

  @override
  String get repeatEndsNever => 'Nunca termina';

  @override
  String get reminderAtTime => 'No horário do evento';

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
  String get reminderDayBefore => '1 dia antes';

  @override
  String get projectsTitle => 'Projetos';

  @override
  String get projectsEmptyTitle => 'Nenhum projeto ainda';

  @override
  String get projectsEmptyMessage => 'Agrupe tarefas, notas e tempo de foco relacionados.';

  @override
  String get projectNew => 'Novo projeto';

  @override
  String get projectEdit => 'Editar projeto';

  @override
  String get projectName => 'Nome';

  @override
  String get projectDescription => 'Descrição';

  @override
  String get projectGoal => 'Objetivo';

  @override
  String get projectDeadline => 'Prazo final';

  @override
  String get projectColor => 'Cor';

  @override
  String get projectIcon => 'Ícone';

  @override
  String get projectNotes => 'Notas do projeto';

  @override
  String get projectProgress => 'Progresso';

  @override
  String projectTasksDone(int done, int total) {
    return '$done de $total tarefas concluídas';
  }

  @override
  String get projectFocusTime => 'Tempo de foco';

  @override
  String get projectArchived => 'Projetos arquivados';

  @override
  String get projectShowArchived => 'Mostrar arquivados';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: 'Faltam $days dias',
      one: 'Falta 1 dia',
      zero: 'Vence hoje',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Prazo vencido';

  @override
  String get calendarTitle => 'Calendário';

  @override
  String get calendarMonth => 'Mês';

  @override
  String get calendarWeek => 'Semana';

  @override
  String get calendarDay => 'Dia';

  @override
  String get calendarToday => 'Hoje';

  @override
  String get calendarPrevious => 'Anterior';

  @override
  String get calendarNext => 'Próximo';

  @override
  String get calendarNoEvents => 'Nada agendado';

  @override
  String get calendarAllDay => 'Dia inteiro';

  @override
  String get eventNew => 'Novo evento';

  @override
  String get eventEdit => 'Editar evento';

  @override
  String get eventTitleHint => 'Título do evento';

  @override
  String get eventStarts => 'Início';

  @override
  String get eventEnds => 'Fim';

  @override
  String get eventKind => 'Tipo';

  @override
  String get eventKindEvent => 'Evento';

  @override
  String get eventKindTimeBlock => 'Bloco de tempo';

  @override
  String get eventKindFocus => 'Sessão de foco';

  @override
  String get eventKindGoal => 'Meta pessoal';

  @override
  String get eventDescription => 'Detalhes';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Conflita com $count eventos',
      one: 'Conflita com 1 evento',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflitos de horário neste dia';

  @override
  String get calendarTaskDue => 'Prazo de tarefa';

  @override
  String get calendarDragHint => 'Toque e segure um evento e arraste para remarcá-lo';

  @override
  String get calendarRescheduled => 'Evento movido';

  @override
  String get calendarScheduleTask => 'Agendar como bloco de tempo';

  @override
  String get calendarLegend => 'Legenda';

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
  String get notesNotebooks => 'Cadernos';

  @override
  String get notesTags => 'Etiquetas';

  @override
  String get notesNewNotebook => 'Novo caderno';

  @override
  String get notesNoNotebook => 'Sem caderno';

  @override
  String get notesEmptyTitle => 'Uma tela em branco';

  @override
  String get notesEmptyMessage => 'Registre ideias, anotações de reuniões e conhecimentos.';

  @override
  String get noteTitleHint => 'Título';

  @override
  String get noteBodyHint =>
      'Comece a escrever… Use # para etiquetas e [[Título]] para vincular notas.';

  @override
  String get noteFavorite => 'Favoritar';

  @override
  String get noteUnfavorite => 'Remover dos favoritos';

  @override
  String get noteMoveTo => 'Mover para caderno';

  @override
  String get noteBacklinks => 'Mencionada em';

  @override
  String get noteLinkedTasks => 'Tarefas vinculadas';

  @override
  String get noteLinkTask => 'Vincular tarefa';

  @override
  String get noteLinkProject => 'Projeto';

  @override
  String get noteFormatHeading => 'Título';

  @override
  String get noteFormatBold => 'Negrito';

  @override
  String get noteFormatItalic => 'Itálico';

  @override
  String get noteFormatList => 'Lista com marcadores';

  @override
  String get noteFormatChecklist => 'Lista de verificação';

  @override
  String get noteFormatLink => 'Inserir link';

  @override
  String noteEdited(String time) {
    return 'Editada $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count palavras',
      one: '1 palavra',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Cartões';

  @override
  String get flashEmptyTitle => 'Crie seu primeiro baralho';

  @override
  String get flashEmptyMessage =>
      'A repetição espaçada mostra cada cartão logo antes de você esquecê-lo.';

  @override
  String get deckNew => 'Novo baralho';

  @override
  String get deckEdit => 'Editar baralho';

  @override
  String get deckName => 'Nome do baralho';

  @override
  String get deckDescription => 'Descrição';

  @override
  String get deckDailyNew => 'Novos cartões por dia';

  @override
  String get deckDailyReview => 'Meta diária de revisão';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões',
      one: '1 cartão',
      zero: 'Nenhum cartão',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Pendentes';

  @override
  String get deckNewCards => 'Novos';

  @override
  String get deckMature => 'Maduros';

  @override
  String get deckStudy => 'Estudar';

  @override
  String get deckNothingDue => 'Nada para revisar agora. Volte mais tarde.';

  @override
  String get deckEmptyCards => 'Adicione cartões para começar a aprender.';

  @override
  String get cardNew => 'Novo cartão';

  @override
  String get cardEdit => 'Editar cartão';

  @override
  String get cardFront => 'Frente';

  @override
  String get cardBack => 'Verso';

  @override
  String get cardFrontHint => 'Pergunta ou termo';

  @override
  String get cardBackHint => 'Resposta ou definição';

  @override
  String get cardTags => 'Etiquetas';

  @override
  String get cardAddAnother => 'Salvar e adicionar outro';

  @override
  String get reviewShowAnswer => 'Ver resposta';

  @override
  String get reviewAgain => 'De novo';

  @override
  String get reviewHard => 'Difícil';

  @override
  String get reviewGood => 'Bom';

  @override
  String get reviewEasy => 'Fácil';

  @override
  String reviewProgress(int done, int total) {
    return '$done de $total';
  }

  @override
  String get reviewFinishedTitle => 'Sessão concluída';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Você revisou $count cartões.',
      one: 'Você revisou 1 cartão.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Toque para ver a resposta';

  @override
  String get importCardsTitle => 'Importar cartões';

  @override
  String get importCardsHint =>
      'Cole um cartão por linha, com frente e verso separados por tabulação ou ponto e vírgula, ou cole um arquivo de baralho exportado.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões importados',
      one: '1 cartão importado',
      zero: 'Nenhum cartão importado',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Não foi possível importar este conteúdo.';

  @override
  String get exportCopied => 'Baralho exportado';

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
      other: '$count dias',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Metas';

  @override
  String get goalsEmptyTitle => 'Mire em algo';

  @override
  String get goalsEmptyMessage =>
      'Defina metas diárias, semanais, mensais ou de longo prazo e acompanhe seu progresso real.';

  @override
  String get goalNew => 'Nova meta';

  @override
  String get goalEdit => 'Editar meta';

  @override
  String get goalTitleHint => 'O que você quer alcançar?';

  @override
  String get goalPeriod => 'Período';

  @override
  String get goalPeriodDaily => 'Diária';

  @override
  String get goalPeriodWeekly => 'Semanal';

  @override
  String get goalPeriodMonthly => 'Mensal';

  @override
  String get goalPeriodLongTerm => 'Longo prazo';

  @override
  String get goalTarget => 'Alvo';

  @override
  String get goalUnit => 'Unidade';

  @override
  String get goalUnitHint => 'ex.: páginas, km, horas';

  @override
  String get goalStatusActive => 'Ativa';

  @override
  String get goalStatusPaused => 'Pausada';

  @override
  String get goalStatusAchieved => 'Alcançada';

  @override
  String get goalPause => 'Pausar meta';

  @override
  String get goalResume => 'Retomar meta';

  @override
  String get goalMarkAchieved => 'Marcar como alcançada';

  @override
  String goalProgressOf(String current, String target) {
    return '$current de $target';
  }

  @override
  String get goalLogAmount => 'Quantidade';

  @override
  String get goalLogNote => 'Nota (opcional)';

  @override
  String get goalHistory => 'Histórico';

  @override
  String get goalNoHistory => 'O progresso registrado vai aparecer aqui';

  @override
  String get goalLinkedTasks => 'Tarefas vinculadas';

  @override
  String get goalLinkedTasksHint => 'Cada tarefa vinculada concluída conta 1 para esta meta.';

  @override
  String get goalThisPeriod => 'Este período';

  @override
  String get habitsTitle => 'Hábitos';

  @override
  String get habitsEmptyTitle => 'Pequenos passos, todo dia';

  @override
  String get habitsEmptyMessage => 'Crie um hábito e marque quando cumpri-lo.';

  @override
  String get habitNew => 'Novo hábito';

  @override
  String get habitEdit => 'Editar hábito';

  @override
  String get habitNameHint => 'ex.: Ler 20 páginas';

  @override
  String get habitDays => 'Frequência';

  @override
  String get habitEveryDay => 'Todo dia';

  @override
  String get habitTargetPerDay => 'Vezes por dia';

  @override
  String get habitReminder => 'Lembrete diário';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sequência de $count dias',
      one: 'Sequência de 1 dia',
      zero: 'Sem sequência',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Melhor sequência';

  @override
  String get habitCurrentStreak => 'Sequência atual';

  @override
  String get habitConsistency => 'Constância';

  @override
  String get habitLast90 => 'Últimos 90 dias';

  @override
  String get habitPaused => 'Pausado';

  @override
  String get habitPause => 'Pausar hábito';

  @override
  String get habitResume => 'Retomar hábito';

  @override
  String get habitDoneToday => 'Feito hoje';

  @override
  String habitCountToday(int count, int target) {
    return '$count de $target hoje';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Marcar “$name”';
  }

  @override
  String get habitNotScheduledToday => 'Não previsto para hoje';

  @override
  String get analyticsTitle => 'Estatísticas';

  @override
  String get rangeWeek => '7 dias';

  @override
  String get rangeMonth => '30 dias';

  @override
  String get rangeQuarter => '90 dias';

  @override
  String get statFocusTime => 'Tempo de foco';

  @override
  String get statSessions => 'Sessões';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed concluídas · $interrupted encerradas antes';
  }

  @override
  String get statTasksDone => 'Tarefas concluídas';

  @override
  String get statCompletionRate => 'Concluídas no prazo';

  @override
  String get statHabitConsistency => 'Constância nos hábitos';

  @override
  String get statRetention => 'Retenção de cartões';

  @override
  String get statReviews => 'Revisões';

  @override
  String get statActiveGoals => 'Metas ativas';

  @override
  String get statEstimated => 'Trabalho estimado concluído';

  @override
  String get statEstimatedNote => 'Com base nas suas estimativas, não em tempo medido';

  @override
  String get statMeasuredNote => 'Medido a partir das sessões de foco';

  @override
  String get chartFocusByDay => 'Minutos de foco por dia';

  @override
  String get chartTasksByDay => 'Tarefas concluídas por dia';

  @override
  String get chartTimeByProject => 'Tempo por projeto';

  @override
  String get chartProjectProgress => 'Progresso dos projetos';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, melhor dia $best';
  }

  @override
  String get analyticsNoData => 'Ainda não há dados suficientes';

  @override
  String get analyticsUnassigned => 'Sem projeto';

  @override
  String get searchHint => 'Buscar em tudo…';

  @override
  String get searchRecent => 'Buscas recentes';

  @override
  String get searchClearRecent => 'Limpar buscas recentes';

  @override
  String searchNoResults(String query) {
    return 'Nenhum resultado para “$query”';
  }

  @override
  String get searchStartTyping =>
      'Busque em tarefas, notas, cartões, metas, eventos e muito mais. A busca fica neste aparelho.';

  @override
  String get searchCatTask => 'Tarefas';

  @override
  String get searchCatProject => 'Projetos';

  @override
  String get searchCatNote => 'Notas';

  @override
  String get searchCatFlashcard => 'Cartões';

  @override
  String get searchCatDeck => 'Baralhos';

  @override
  String get searchCatGoal => 'Metas';

  @override
  String get searchCatHabit => 'Hábitos';

  @override
  String get searchCatEvent => 'Eventos';

  @override
  String get searchCatSession => 'Sessões';

  @override
  String get searchAll => 'Tudo';

  @override
  String get assistantTitle => 'Assistente';

  @override
  String get assistantIntro =>
      'Ajuda para planejar que funciona no seu aparelho. Se quiser, conecte um provedor de IA de sua escolha para resumos e geração de conteúdo.';

  @override
  String get assistantOnDevice => 'No aparelho';

  @override
  String get assistantCloud => 'Provedor de IA';

  @override
  String get assistantPlanDay => 'Planejar meu dia';

  @override
  String get assistantPlanDayDesc =>
      'Ordena as tarefas abertas por urgência, prioridade e estimativa, e as encaixa entre seus eventos.';

  @override
  String get assistantExtractTasks => 'Extrair tarefas de uma nota';

  @override
  String get assistantExtractTasksDesc =>
      'Encontra itens de listas de verificação e linhas de ação em uma nota e os transforma em tarefas.';

  @override
  String get assistantMakeCards => 'Criar cartões de uma nota';

  @override
  String get assistantMakeCardsDesc =>
      'Transforma linhas “termo: definição” e de pergunta/resposta em cartões.';

  @override
  String get assistantSummarize => 'Resumir uma nota';

  @override
  String get assistantSummarizeDesc =>
      'Requer um provedor de IA. A nota só é enviada depois que você confirmar.';

  @override
  String get assistantWorkload => 'Visão da carga de trabalho';

  @override
  String get assistantWorkloadDesc =>
      'Compara o trabalho estimado com seu tempo livre nesta semana.';

  @override
  String get assistantPlanEmpty => 'Nenhuma tarefa aberta para planejar. Aproveite o tempo livre.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Tempo livre para foco hoje: $time';
  }

  @override
  String get assistantPlanOverflow => 'Estas podem não caber hoje:';

  @override
  String get assistantChooseNote => 'Escolha uma nota';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas encontradas',
      one: '1 tarefa encontrada',
      zero: 'Nenhuma tarefa encontrada nesta nota',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões encontrados',
      one: '1 cartão encontrado',
      zero: 'Nenhum cartão encontrado nesta nota',
    );
    return '$_temp0';
  }

  @override
  String get assistantCreateAll => 'Criar todos';

  @override
  String get assistantChooseDeck => 'Escolha um baralho';

  @override
  String get assistantCreated => 'Criado';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Trabalho estimado: $estimated. Tempo livre: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Você planejou mais do que o tempo disponível. Considere remanejar as tarefas de menor prioridade.';

  @override
  String get assistantWorkloadOk => 'Seu plano cabe no seu tempo disponível.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas abertas não têm estimativa.',
      one: '1 tarefa aberta não tem estimativa.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Provedor de IA';

  @override
  String get assistantProviderOff =>
      'Nenhum provedor conectado. As ferramentas no aparelho continuam funcionando.';

  @override
  String assistantProviderOn(String host) {
    return 'Conectado a $host';
  }

  @override
  String get assistantEndpoint => 'Endpoint da API (HTTPS)';

  @override
  String get assistantModel => 'Modelo';

  @override
  String get assistantApiKey => 'Chave de API';

  @override
  String get assistantApiKeyStored => 'Armazenada com segurança neste aparelho';

  @override
  String get assistantHttpsOnly => 'Só são permitidos endpoints HTTPS';

  @override
  String get assistantConsentTitle => 'Enviar este conteúdo ao seu provedor de IA?';

  @override
  String assistantConsentBody(String host) {
    return 'O texto da nota selecionada vai sair deste aparelho e ser processado por $host. Nada mais é enviado.';
  }

  @override
  String get assistantConsentAlways => 'Não perguntar de novo para este provedor';

  @override
  String get assistantSend => 'Enviar';

  @override
  String get assistantUnavailable => 'Não foi possível acessar o provedor de IA. Tente mais tarde.';

  @override
  String get assistantDisabledTitle => 'O assistente está desativado';

  @override
  String get assistantDisabledMessage =>
      'Ative-o para usar as ferramentas de planejamento. Nenhum dado sai do seu aparelho, a menos que você conecte um provedor e confirme cada solicitação.';

  @override
  String get assistantSummaryTitle => 'Resumo';

  @override
  String get assistantRemoveProvider => 'Remover provedor';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get settingsGeneral => 'Geral';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsLanguageSystem => 'Idioma do aparelho';

  @override
  String get settingsAppearance => 'Aparência';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get settingsReduceMotion => 'Reduzir movimento';

  @override
  String get settingsReduceMotionDesc => 'Minimiza animações e fundos em movimento';

  @override
  String get settingsFocus => 'Timer de foco';

  @override
  String get settingsWorkLength => 'Duração do foco';

  @override
  String get settingsShortBreak => 'Pausa curta';

  @override
  String get settingsLongBreak => 'Pausa longa';

  @override
  String get settingsLongBreakEvery => 'Pausa longa após';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessões',
      one: '1 sessão',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Iniciar pausas automaticamente';

  @override
  String get settingsSound => 'Som de conclusão';

  @override
  String get settingsDailyFocusTarget => 'Meta diária de foco';

  @override
  String get settingsWeeklyFocusTarget => 'Meta semanal de foco';

  @override
  String get settingsNotifications => 'Notificações';

  @override
  String get settingsNotificationsEnable => 'Permitir lembretes';

  @override
  String get settingsQuietHours => 'Horário silencioso';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Lembretes de hábitos, metas e revisões ficam silenciados das $start às $end';
  }

  @override
  String get settingsReviewReminder => 'Lembrete de revisão de cartões';

  @override
  String get settingsPermissionDenied =>
      'As notificações estão bloqueadas nas configurações do sistema.';

  @override
  String get settingsPrivacy => 'Privacidade e dados';

  @override
  String get settingsPrivacyStatement =>
      'Seus dados ficam armazenados só neste aparelho, com criptografia. Sem conta, sem análises de uso e sem rastreamento.';

  @override
  String get settingsBackup => 'Criar backup criptografado';

  @override
  String get settingsBackupDesc => 'Protegido por uma senha que você escolhe';

  @override
  String get settingsRestore => 'Restaurar backup';

  @override
  String get settingsRestoreDesc => 'Substitui todos os dados deste aparelho';

  @override
  String get settingsErase => 'Apagar todos os dados';

  @override
  String get settingsEraseDesc => 'Exclui permanentemente tudo neste aparelho';

  @override
  String get settingsEraseConfirmTitle => 'Apagar todos os dados?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Todas as tarefas, notas, cartões, metas, hábitos, eventos e sessões serão excluídos permanentemente. Digite $word para confirmar.';
  }

  @override
  String get settingsEraseWord => 'APAGAR';

  @override
  String get settingsErased => 'Todos os dados foram apagados';

  @override
  String get backupPassword => 'Senha do backup';

  @override
  String get backupPasswordConfirm => 'Confirmar senha';

  @override
  String backupPasswordHint(int count) {
    return 'No mínimo $count caracteres. Não é possível recuperá-la se você esquecer.';
  }

  @override
  String get backupPasswordMismatch => 'As senhas não coincidem';

  @override
  String get backupPasswordShort => 'A senha é muito curta';

  @override
  String get backupCreating => 'Criptografando backup…';

  @override
  String get backupCreated => 'Backup pronto para salvar';

  @override
  String get backupRestoring => 'Verificando e restaurando…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens restaurados',
      one: '1 item restaurado',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Senha incorreta, ou o arquivo foi modificado.';

  @override
  String get backupNotABackup => 'Este arquivo não é um backup do Future OS.';

  @override
  String get backupCorrupted => 'O arquivo de backup está danificado.';

  @override
  String get backupNewer =>
      'Este backup foi criado por uma versão mais recente do app. Atualize primeiro.';

  @override
  String get backupRestoreConfirmTitle => 'Substituir todos os dados?';

  @override
  String get backupRestoreConfirmBody =>
      'Tudo o que está neste aparelho agora será substituído pelo backup. Se a restauração falhar, nada muda.';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String settingsVersion(String version) {
    return 'Versão $version';
  }

  @override
  String get settingsLicenses => 'Licenças de código aberto';

  @override
  String get settingsAssistant => 'Assistente';

  @override
  String get settingsAssistantEnable => 'Ativar assistente';

  @override
  String get settingsDashboard => 'Seções do início';

  @override
  String get settingsTrash => 'Lixeira';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'A lixeira está vazia';

  @override
  String get trashHint => 'Os itens excluídos ficam aqui até você removê-los.';

  @override
  String get trashTasks => 'Tarefas';

  @override
  String get trashNotes => 'Notas';

  @override
  String get onboardWelcomeTitle => 'Boas-vindas ao seu espaço de trabalho do futuro';

  @override
  String get onboardWelcomeBody =>
      'Tarefas, foco, calendário, notas, cartões, metas e hábitos — tudo junto, lindamente simples.';

  @override
  String get onboardPrivateTitle => 'Privado por natureza';

  @override
  String get onboardPrivateBody =>
      'Tudo fica neste aparelho, com criptografia. Sem conta. Sem rastreamento. Você no controle.';

  @override
  String get onboardLanguageTitle => 'Escolha seu idioma';

  @override
  String get onboardNotifTitle => 'Lembretes gentis';

  @override
  String get onboardNotifBody =>
      'Permita notificações para lembretes de tarefas e alertas de foco. Você pode mudar isso quando quiser.';

  @override
  String get onboardGetStarted => 'Começar';

  @override
  String onboardStep(int current, int total) {
    return 'Etapa $current de $total';
  }

  @override
  String get notifChannelReminders => 'Lembretes';

  @override
  String get notifChannelRemindersDesc => 'Lembretes de tarefas, eventos, hábitos e metas';

  @override
  String get notifChannelFocus => 'Timer de foco';

  @override
  String get notifChannelFocusDesc => 'Alertas quando uma sessão de foco ou pausa termina';

  @override
  String get notifTaskTitle => 'Lembrete de tarefa';

  @override
  String get notifEventTitle => 'Próximo evento';

  @override
  String notifEventBody(String title, String time) {
    return '$title às $time';
  }

  @override
  String get notifFocusDoneTitle => 'Sessão de foco concluída';

  @override
  String get notifFocusDoneBody => 'Ótimo trabalho. Hora de uma pausa.';

  @override
  String get notifBreakDoneTitle => 'A pausa acabou';

  @override
  String get notifBreakDoneBody => 'Pronto para a próxima sessão de foco?';

  @override
  String get notifHabitTitle => 'Lembrete de hábito';

  @override
  String get notifReviewTitle => 'Seus cartões estão prontos';

  @override
  String get notifReviewBody => 'Uma revisão rápida mantém sua memória afiada.';

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
  String get weekdaysShort => 'S,T,Q,Q,S,S,D';

  @override
  String get a11yOpenMenu => 'Abrir menu';

  @override
  String a11yProgress(int value) {
    return 'Progresso: $value por cento';
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
  String get a11ySelected => 'Selecionado';

  @override
  String get analyticsRangeLabel => 'Time range';

  @override
  String get analyticsRefresh => 'Refresh';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done of $total due tasks done on time';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done of $total tasks done';
  }

  @override
  String get analyticsNoProjects => 'No active projects';

  @override
  String get analyticsNoFocus => 'No focus sessions in this range';

  @override
  String get analyticsHabitsNone => 'No active habits';

  @override
  String get analyticsRetentionNote => 'Share of mature cards you remembered';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Free time counts $start–$end on workdays ($days), minus timed events. Estimated work is the sum of estimates of open tasks due in the next 7 days.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Monday–Friday';

  @override
  String get assistantWorkdaysSunThu => 'Sunday–Thursday';

  @override
  String get assistantWorkloadDayOff => 'Day off';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planned · $free free';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planned from now until $end, around today\'s events. Overdue tasks first, then priority, due date and estimate.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Schedule as time blocks';

  @override
  String get assistantScheduleConfirmTitle => 'Add time blocks to your calendar?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time blocks will be added to today\'s calendar.',
      one: '1 time block will be added to today\'s calendar.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count time blocks added',
      one: '1 time block added',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Already on your calendar';

  @override
  String get assistantPlanTimeline => 'Fits today';

  @override
  String get assistantNoEstimate => 'Add an estimate to plan these';

  @override
  String get assistantNoNotes => 'No notes yet. Write a note first.';

  @override
  String get assistantNoteEmpty => 'This note is empty.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks created',
      one: '1 task created',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards created',
      one: '1 card created',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Create $count',
      one: 'Create 1',
      zero: 'Nothing selected',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Recognized: unchecked checkboxes \"- [ ]\" and lines starting with TODO: or To do:';

  @override
  String get assistantCardsHint =>
      'Recognized: \"term: definition\", \"term — definition\" and Q:/A: line pairs';

  @override
  String get assistantProviderHint =>
      'Use any OpenAI-compatible service. The key stays in this device\'s secure storage and is never included in backups.';

  @override
  String get assistantEndpointHelp => 'For example https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Leave empty to keep the stored key';

  @override
  String get assistantApiKeyRequired => 'Enter an API key';

  @override
  String get assistantProviderSaved => 'Provider saved';

  @override
  String get assistantProviderRemoved => 'Provider removed and key deleted';

  @override
  String get assistantRemoveProviderConfirm =>
      'Remove the provider and delete the stored API key from this device?';

  @override
  String get assistantAskEveryTime => 'Ask before every request';

  @override
  String get assistantSummarizing => 'Summarizing…';

  @override
  String assistantSummaryNote(String host) {
    return 'Generated by $host. Review before relying on it.';
  }

  @override
  String get assistantCopy => 'Copy';

  @override
  String get assistantCopied => 'Copied';

  @override
  String get assistantConfigure => 'Set up provider';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'All events in this series were moved';

  @override
  String get calendarEventReminder => 'Reminder';

  @override
  String get calendarEventRepeat => 'Repeat';

  @override
  String get calendarEventColor => 'Color';

  @override
  String get calendarDefaultColor => 'Use type color';

  @override
  String get calendarEventLinkedTask => 'Linked task';

  @override
  String get calendarEventNoTask => 'No linked task';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count events',
      one: '1 event',
      zero: 'No events',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks due',
      one: '1 task due',
      zero: 'no tasks due',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint => 'Add an event or a time block to plan this day.';

  @override
  String get calendarNow => 'Current time';

  @override
  String get calendarRecurring => 'Repeats';

  @override
  String get calendarEventNotFound => 'This event no longer exists';

  @override
  String get calendarEventLocalTime => 'Times are shown in your device\'s time zone';

  @override
  String get calendarEventDeleted => 'Event moved to trash';

  @override
  String get calendarConflictMarker => 'Overlaps another event';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'Changes apply to every event in this series';

  @override
  String get calendarDragHintSeries => 'Dragging a repeating event moves the whole series';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, task due';
  }

  @override
  String get startupErrorTitle => 'Não foi possível abrir seus dados';

  @override
  String get startupErrorLocked =>
      'A chave de criptografia dos dados deste aparelho não está disponível. Nada foi excluído. Reiniciar o aparelho costuma resolver. Se você restaurou o aparelho recentemente, restaure seus dados a partir de um backup criptografado.';

  @override
  String get startupErrorCipher =>
      'Este aparelho não é compatível com o armazenamento criptografado exigido pelo app. Nada foi salvo sem criptografia.';

  @override
  String get startupErrorRetry => 'Tentar de novo';

  @override
  String flashcardsDueBanner(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards are due for review',
      one: '1 card is due for review',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count due';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count new';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Mature cards: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Enter 0 or more';

  @override
  String get flashcardsSearchCards => 'Search cards';

  @override
  String get flashcardsSearchEmpty => 'No cards match your search';

  @override
  String get flashcardsCardAdded => 'Card added';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Due $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copy to clipboard';

  @override
  String get flashcardsExportTitle => 'Export deck';

  @override
  String get flashcardsDeleteDeck => 'Delete deck';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, next review in $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Question: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Answer: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Show question';

  @override
  String get flashcardsImportField => 'Cards to import';

  @override
  String get flashcardsNothingToStudy => 'Nothing to study';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards ready to study',
      one: '1 card ready to study',
      zero: 'No cards ready',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'By rating';

  @override
  String get flashcardsDeckNotFound => 'This deck is no longer available.';

  @override
  String get focusSessionDeleted => 'Session deleted';

  @override
  String get focusDeleteConfirm =>
      'Delete this session from your history? Its time will no longer count toward your targets.';

  @override
  String get focusUnlinkTask => 'Remove linked task';

  @override
  String get focusNoteHint => 'What did you work on?';

  @override
  String get focusTargetCaption => 'Measured from saved sessions';

  @override
  String get focusModeLabel => 'Timer mode';

  @override
  String focusUpNext(String phase) {
    return 'Up next: $phase';
  }

  @override
  String get focusStopwatchHint => 'Counts up until you stop.';

  @override
  String get focusOpenHint => 'No time limit. Stop whenever you are done.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Reminders are turned off in settings. You will not be alerted when a session ends.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'All';

  @override
  String get goalsFilterPeriod => 'Period filter';

  @override
  String get goalsFilterStatus => 'Status filter';

  @override
  String get goalsEmptyFiltered => 'No goals match this filter';

  @override
  String goalsDueOn(String date) {
    return 'Due $date';
  }

  @override
  String get goalsDeadline => 'Deadline (optional)';

  @override
  String get goalsNoDeadline => 'No deadline';

  @override
  String get goalsSetDeadline => 'Set deadline';

  @override
  String get goalsRemoveDeadline => 'Remove deadline';

  @override
  String get goalsDescription => 'Description (optional)';

  @override
  String get goalsTitleLabel => 'Title';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Target reached';

  @override
  String get goalsLogged => 'Progress logged';

  @override
  String get goalsEntryDeleted => 'Entry removed';

  @override
  String get goalsDeleteEntry => 'Remove entry';

  @override
  String get goalsDeleted => 'Goal deleted';

  @override
  String get goalsMarkActive => 'Mark as active';

  @override
  String get goalsNotFound => 'This goal is no longer available';

  @override
  String get goalsLinkTask => 'Link a task';

  @override
  String get goalsNoLinkedTasks => 'No linked tasks yet';

  @override
  String get goalsUnlinkTask => 'Unlink task';

  @override
  String get goalsTaskOpen => 'Not completed yet';

  @override
  String get goalsTaskLinked => 'Task linked';

  @override
  String get goalsTaskUnlinked => 'Task unlinked';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count completed linked tasks',
      one: '1 completed linked task',
    );
    return 'Includes $_temp0 this period';
  }

  @override
  String get goalsHistoryAllTime =>
      'Entries from earlier periods are kept here but count only toward their own period.';

  @override
  String goalsPercentOfTarget(String percent) {
    return '$percent of target';
  }

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done of $total done today';
  }

  @override
  String get habitsNothingToday => 'No habits are scheduled for today';

  @override
  String get habitsDecrease => 'Remove one check-in';

  @override
  String get habitsResetToday => 'Reset today';

  @override
  String get habitsCheckInHint => 'Long-press to adjust';

  @override
  String get habitsName => 'Name';

  @override
  String get habitsColor => 'Color';

  @override
  String get habitsValidationDays => 'Choose at least one day';

  @override
  String habitsReminderAt(String time) {
    return 'Every day at $time';
  }

  @override
  String get habitsSetReminder => 'Set a reminder time';

  @override
  String get habitsRemoveReminder => 'Remove reminder';

  @override
  String get habitsReminderNote =>
      'Reminders appear on scheduled days when notifications are allowed.';

  @override
  String get habitsArchived => 'Habit archived';

  @override
  String get habitsNotFound => 'This habit is no longer available';

  @override
  String get habitsLast30 => 'Last 30 days';

  @override
  String get habitsConsistencyNone => 'Not enough data yet';

  @override
  String get habitsCalendar => 'Check-in history';

  @override
  String get habitsCalendarHint => 'Tap a day to correct it.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count of $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Check-ins over the last 90 days. Consistency $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty => 'Check-ins over the last 90 days. Not enough data yet.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Paused days don\'t affect your streak.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archive habit';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count times a day',
      one: 'Once a day',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Other notes';

  @override
  String get notesAllNotebooks => 'All notebooks';

  @override
  String get notesNotebookName => 'Notebook name';

  @override
  String get notesNotebookColor => 'Color';

  @override
  String get notesDeleteNotebook => 'Delete notebook';

  @override
  String get notesDeleteNotebookMessage =>
      'The notebook is removed. Its notes are kept and appear under All notebooks.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Pin important notes to keep them at the top.';

  @override
  String get notesEmptyFavorites => 'Notes you mark as favorite appear here.';

  @override
  String get notesEmptyArchived => 'Archived notes appear here.';

  @override
  String get notesEmptyFiltered => 'No notes match these filters.';

  @override
  String get notesArchivedSnack => 'Note archived';

  @override
  String get notesUnarchivedSnack => 'Note moved back to your notes';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done of $total done';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatting';

  @override
  String get notesWrite => 'Write';

  @override
  String get notesPreviewEmpty => 'Nothing to preview yet.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'No other notes link here yet. Link to this note with [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle => 'Give this note a title so other notes can link to it.';

  @override
  String get notesLinkedTasksEmpty => 'No tasks linked to this note.';

  @override
  String notesLinkMissing(String title) {
    return 'There is no note titled \"$title\" yet.';
  }

  @override
  String get notesNotFound => 'This note no longer exists.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Checklist item: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Open note $title';
  }

  @override
  String get notesTagsHint => 'Add tags by writing #tag in the note.';

  @override
  String get notesTaskDone => 'Completed';

  @override
  String get notifTimerDoneBody => 'The time you set has passed.';

  @override
  String get onboardingPrivatePointDevice => 'Stored only on this device, encrypted';

  @override
  String get onboardingPrivatePointAccount => 'No account needed';

  @override
  String get onboardingPrivatePointTracking => 'No analytics, no tracking';

  @override
  String get onboardingLanguageBody => 'You can change this anytime in Settings.';

  @override
  String get onboardingNext => 'Next';

  @override
  String get projectsActive => 'Active';

  @override
  String get projectNameHint => 'e.g. Product launch';

  @override
  String get projectGoalHint => 'What does done look like?';

  @override
  String get projectNoDeadline => 'No deadline';

  @override
  String get projectTasksOpen => 'Open tasks';

  @override
  String get projectTasksCompleted => 'Completed tasks';

  @override
  String get projectAddTask => 'Add task to project';

  @override
  String get projectAddNote => 'New project note';

  @override
  String get projectLinkedNotes => 'Notes';

  @override
  String get projectNoTasks => 'No tasks in this project yet';

  @override
  String get projectArchivedBadge => 'Archived';

  @override
  String get projectDeleted => 'Project moved to trash';

  @override
  String get projectDeleteMessage => 'Tasks stay in your list without a project.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent percent complete';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count results',
      one: '1 result',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filter by type';

  @override
  String searchRecentTap(String query) {
    return 'Search again for $query';
  }

  @override
  String get settingsLanguageHint =>
      'Choose the language for the whole app. Names are shown in their own language.';

  @override
  String get settingsThemeHint => 'Light, dark or follow the system';

  @override
  String settingsDecrease(String setting) {
    return 'Decrease $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Increase $setting';
  }

  @override
  String get settingsQuietStart => 'Starts';

  @override
  String get settingsQuietEnd => 'Ends';

  @override
  String get settingsNotificationsHint =>
      'This saves your preference in the app. The system may also ask for permission.';

  @override
  String get settingsDashboardHint => 'Drag to reorder. Turn off sections you do not need.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reorder $section';
  }

  @override
  String get settingsDashboardReset => 'Restore default order';

  @override
  String get settingsAssistantDesc =>
      'Optional planning help. Nothing leaves this device unless you connect a provider.';

  @override
  String get settingsAssistantSetup => 'Assistant and provider setup';

  @override
  String get settingsTrashDesc => 'Restore or permanently delete removed items';

  @override
  String get settingsEraseFirstBody =>
      'This cannot be undone. Consider creating an encrypted backup first.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Type $word';
  }

  @override
  String get settingsEraseFailed => 'Data could not be erased. Nothing was changed.';

  @override
  String get settingsAboutTagline => 'A private, local-first productivity workspace.';

  @override
  String get backupShowPassword => 'Show password';

  @override
  String get backupHidePassword => 'Hide password';

  @override
  String get backupSaved => 'Backup saved';

  @override
  String get backupFailed => 'The backup could not be created. Your data is unchanged.';

  @override
  String get backupReadFailed => 'The selected file could not be read.';

  @override
  String get backupRestoreFailed => 'Restore failed. Nothing was changed.';

  @override
  String get backupShareSubject => 'Future OS encrypted backup';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count days',
      one: 'Every day',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count weeks',
      one: 'Every week',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count months',
      one: 'Every month',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Every $count years',
      one: 'Every year',
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
    return 'on $days';
  }

  @override
  String get repeatEndsLabel => 'Ends';

  @override
  String get repeatEndsAfter => 'After a number of times';

  @override
  String get repeatCountLabel => 'Occurrences';

  @override
  String get reminderNone => 'No reminder';

  @override
  String get reminderCustomTime => 'At a specific time';

  @override
  String get a11yDecrease => 'Decrease';

  @override
  String get a11yIncrease => 'Increase';

  @override
  String get pickTaskTitle => 'Choose a task';

  @override
  String get pickTaskEmpty => 'No open tasks';

  @override
  String get tasksSearchTooltip => 'Search tasks';

  @override
  String get tasksSectionOverdue => 'Overdue';

  @override
  String get tasksSectionToday => 'Today';

  @override
  String get tasksRecurringSemantics => 'Repeats';

  @override
  String get tasksFilterPriorityAtLeast => 'Minimum priority';

  @override
  String get tasksFilterCategory => 'Category';

  @override
  String get tasksFilterAnyCategory => 'Any category';

  @override
  String get tasksFilterLabel => 'Label';

  @override
  String get tasksFilterAnyLabel => 'Any label';

  @override
  String get tasksFilterReset => 'Reset filters';

  @override
  String get tasksViewByProject => 'By project';

  @override
  String get tasksViewByPriority => 'By priority';

  @override
  String get tasksViewByCategory => 'By category';

  @override
  String get tasksGroupNoCategory => 'No category';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks',
      one: '1 task',
    );
    return 'Blocked by $_temp0';
  }

  @override
  String get taskBlockedWarning => 'This task is blocked by unfinished tasks. Complete it anyway?';

  @override
  String get taskDeleteConfirm => 'Move this task to trash?';

  @override
  String get taskStartFocus => 'Focus on this task';

  @override
  String get taskRemoveDate => 'Remove date';

  @override
  String get taskAllDay => 'No specific time';

  @override
  String get taskSaved => 'Task saved';

  @override
  String get taskCreated => 'Task created';

  @override
  String get taskReminderNeedsDue => 'Set a due date to use relative reminders';

  @override
  String taskEstimateValue(String value) {
    return 'Estimate: $value';
  }

  @override
  String taskTrackedValue(String value) {
    return 'Tracked: $value';
  }

  @override
  String get taskSubtaskDetailsHint =>
      'Save the task first to add subtasks, checklist items, labels and dependencies.';

  @override
  String get taskNoLabels => 'No labels yet';

  @override
  String get taskLabelName => 'Label name';

  @override
  String get taskMoreDetails => 'Details';

  @override
  String get taskPlanning => 'Planning';

  @override
  String get taskOrganize => 'Organize';

  @override
  String get taskBreakdown => 'Breakdown';

  @override
  String get trashDeleteTaskTitle => 'Delete this task forever?';

  @override
  String get trashDeleteNoteTitle => 'Delete this note forever?';

  @override
  String get trashDeleteBody => 'This cannot be undone.';

  @override
  String get trashEmptyTitle => 'Empty trash?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items will be deleted permanently.',
      one: '1 item will be deleted permanently.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restored';

  @override
  String get trashPurged => 'Deleted forever';

  @override
  String trashDeletedOn(String date) {
    return 'Deleted $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
    );
    return '$_temp0';
  }
}
