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
  String get analyticsRangeLabel => 'Período';

  @override
  String get analyticsRefresh => 'Atualizar';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done de $total tarefas com prazo concluídas no prazo';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done de $total tarefas concluídas';
  }

  @override
  String get analyticsNoProjects => 'Nenhum projeto ativo';

  @override
  String get analyticsNoFocus => 'Nenhuma sessão de foco neste período';

  @override
  String get analyticsHabitsNone => 'Nenhum hábito ativo';

  @override
  String get analyticsRetentionNote => 'Proporção de cartões maduros que você lembrou';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name: $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'O tempo livre conta de $start a $end nos dias úteis ($days), menos os eventos com horário. O trabalho estimado é a soma das estimativas das tarefas abertas com prazo nos próximos 7 dias.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Segunda a sexta';

  @override
  String get assistantWorkdaysSunThu => 'Domingo a quinta';

  @override
  String get assistantWorkloadDayOff => 'Folga';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated planejado · $free livre';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planejado de agora até $end, respeitando os eventos de hoje. Primeiro as tarefas atrasadas, depois prioridade, prazo e estimativa.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Agendar como blocos de tempo';

  @override
  String get assistantScheduleConfirmTitle => 'Adicionar blocos de tempo ao calendário?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blocos de tempo serão adicionados ao calendário de hoje.',
      one: '1 bloco de tempo será adicionado ao calendário de hoje.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blocos de tempo adicionados',
      one: '1 bloco de tempo adicionado',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Já está no seu calendário';

  @override
  String get assistantPlanTimeline => 'Cabe hoje';

  @override
  String get assistantNoEstimate => 'Adicione uma estimativa para planejar estas tarefas';

  @override
  String get assistantNoNotes => 'Ainda não há notas. Escreva uma nota primeiro.';

  @override
  String get assistantNoteEmpty => 'Esta nota está vazia.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas criadas',
      one: '1 tarefa criada',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões criados',
      one: '1 cartão criado',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Criar $count',
      one: 'Criar 1',
      zero: 'Nada selecionado',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Reconhecidos: caixas de seleção desmarcadas \"- [ ]\" e linhas que começam com TODO: ou To do:';

  @override
  String get assistantCardsHint =>
      'Reconhecidos: \"termo: definição\", \"termo — definição\" e pares de linhas Q:/A:';

  @override
  String get assistantProviderHint =>
      'Use qualquer serviço compatível com OpenAI. A chave fica no armazenamento seguro deste dispositivo e nunca é incluída nos backups.';

  @override
  String get assistantEndpointHelp => 'Por exemplo: https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Deixe vazio para manter a chave salva';

  @override
  String get assistantApiKeyRequired => 'Digite uma chave de API';

  @override
  String get assistantProviderSaved => 'Provedor salvo';

  @override
  String get assistantProviderRemoved => 'Provedor removido e chave excluída';

  @override
  String get assistantRemoveProviderConfirm =>
      'Remover o provedor e excluir a chave de API salva neste dispositivo?';

  @override
  String get assistantAskEveryTime => 'Perguntar antes de cada solicitação';

  @override
  String get assistantSummarizing => 'Resumindo…';

  @override
  String assistantSummaryNote(String host) {
    return 'Gerado por $host. Revise antes de confiar no resultado.';
  }

  @override
  String get assistantCopy => 'Copiar';

  @override
  String get assistantCopied => 'Copiado';

  @override
  String get assistantConfigure => 'Configurar provedor';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Todos os eventos desta série foram movidos';

  @override
  String get calendarEventReminder => 'Lembrete';

  @override
  String get calendarEventRepeat => 'Repetir';

  @override
  String get calendarEventColor => 'Cor';

  @override
  String get calendarDefaultColor => 'Usar a cor do tipo';

  @override
  String get calendarEventLinkedTask => 'Tarefa vinculada';

  @override
  String get calendarEventNoTask => 'Nenhuma tarefa vinculada';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count eventos',
      one: '1 evento',
      zero: 'Nenhum evento',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas com prazo',
      one: '1 tarefa com prazo',
      zero: 'nenhuma tarefa com prazo',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Adicione um evento ou um bloco de tempo para planejar este dia.';

  @override
  String get calendarNow => 'Hora atual';

  @override
  String get calendarRecurring => 'Repete';

  @override
  String get calendarEventNotFound => 'Este evento não existe mais';

  @override
  String get calendarEventLocalTime =>
      'Os horários são exibidos no fuso horário do seu dispositivo';

  @override
  String get calendarEventDeleted => 'Evento movido para a lixeira';

  @override
  String get calendarConflictMarker => 'Sobrepõe outro evento';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote => 'As alterações valem para todos os eventos desta série';

  @override
  String get calendarDragHintSeries => 'Arrastar um evento recorrente move a série inteira';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tarefa com prazo';
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
      other: '$count cartões para revisar',
      one: '1 cartão para revisar',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count para revisar';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count novos';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Cartões maduros: $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Digite 0 ou mais';

  @override
  String get flashcardsSearchCards => 'Buscar cartões';

  @override
  String get flashcardsSearchEmpty => 'Nenhum cartão corresponde à sua busca';

  @override
  String get flashcardsCardAdded => 'Cartão adicionado';

  @override
  String flashcardsCardDueOn(String date) {
    return 'Revisão em $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copiar para a área de transferência';

  @override
  String get flashcardsExportTitle => 'Exportar baralho';

  @override
  String get flashcardsDeleteDeck => 'Excluir baralho';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, próxima revisão em $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Pergunta: $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Resposta: $text';
  }

  @override
  String get flashcardsShowQuestion => 'Mostrar pergunta';

  @override
  String get flashcardsImportField => 'Cartões a importar';

  @override
  String get flashcardsNothingToStudy => 'Nada para estudar';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões prontos para estudar',
      one: '1 cartão pronto para estudar',
      zero: 'Nenhum cartão pronto',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Por avaliação';

  @override
  String get flashcardsDeckNotFound => 'Este baralho não está mais disponível.';

  @override
  String get focusSessionDeleted => 'Sessão excluída';

  @override
  String get focusDeleteConfirm =>
      'Excluir esta sessão do seu histórico? O tempo dela deixará de contar para suas metas.';

  @override
  String get focusUnlinkTask => 'Remover tarefa vinculada';

  @override
  String get focusNoteHint => 'No que você trabalhou?';

  @override
  String get focusTargetCaption => 'Calculado a partir das sessões salvas';

  @override
  String get focusModeLabel => 'Modo do timer';

  @override
  String focusUpNext(String phase) {
    return 'A seguir: $phase';
  }

  @override
  String get focusStopwatchHint => 'Conta o tempo até você parar.';

  @override
  String get focusOpenHint => 'Sem limite de tempo. Pare quando terminar.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Os lembretes estão desativados nas configurações. Você não será avisado quando uma sessão terminar.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Todas';

  @override
  String get goalsFilterPeriod => 'Filtro de período';

  @override
  String get goalsFilterStatus => 'Filtro de status';

  @override
  String get goalsEmptyFiltered => 'Nenhuma meta corresponde a este filtro';

  @override
  String goalsDueOn(String date) {
    return 'Prazo: $date';
  }

  @override
  String get goalsDeadline => 'Prazo (opcional)';

  @override
  String get goalsNoDeadline => 'Sem prazo';

  @override
  String get goalsSetDeadline => 'Definir prazo';

  @override
  String get goalsRemoveDeadline => 'Remover prazo';

  @override
  String get goalsDescription => 'Descrição (opcional)';

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
  String get goalsReached => 'Meta atingida';

  @override
  String get goalsLogged => 'Progresso registrado';

  @override
  String get goalsEntryDeleted => 'Registro removido';

  @override
  String get goalsDeleteEntry => 'Remover registro';

  @override
  String get goalsDeleted => 'Meta excluída';

  @override
  String get goalsMarkActive => 'Marcar como ativa';

  @override
  String get goalsNotFound => 'Esta meta não está mais disponível';

  @override
  String get goalsLinkTask => 'Vincular uma tarefa';

  @override
  String get goalsNoLinkedTasks => 'Nenhuma tarefa vinculada ainda';

  @override
  String get goalsUnlinkTask => 'Desvincular tarefa';

  @override
  String get goalsTaskOpen => 'Ainda não concluída';

  @override
  String get goalsTaskLinked => 'Tarefa vinculada';

  @override
  String get goalsTaskUnlinked => 'Tarefa desvinculada';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tarefas vinculadas concluídas',
      one: '1 tarefa vinculada concluída',
    );
    return 'Inclui $_temp0 neste período';
  }

  @override
  String get goalsHistoryAllTime =>
      'Registros de períodos anteriores ficam guardados aqui, mas contam apenas para o próprio período.';

  @override
  String goalsPercentOfTarget(String percent) {
    return '$percent da meta';
  }

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done de $total concluídos hoje';
  }

  @override
  String get habitsNothingToday => 'Nenhum hábito programado para hoje';

  @override
  String get habitsDecrease => 'Remover um registro';

  @override
  String get habitsResetToday => 'Zerar hoje';

  @override
  String get habitsCheckInHint => 'Pressione e segure para ajustar';

  @override
  String get habitsName => 'Nome';

  @override
  String get habitsColor => 'Cor';

  @override
  String get habitsValidationDays => 'Escolha pelo menos um dia';

  @override
  String habitsReminderAt(String time) {
    return 'Todos os dias às $time';
  }

  @override
  String get habitsSetReminder => 'Definir horário do lembrete';

  @override
  String get habitsRemoveReminder => 'Remover lembrete';

  @override
  String get habitsReminderNote =>
      'Os lembretes aparecem nos dias programados quando as notificações estão permitidas.';

  @override
  String get habitsArchived => 'Hábito arquivado';

  @override
  String get habitsNotFound => 'Este hábito não está mais disponível';

  @override
  String get habitsLast30 => 'Últimos 30 dias';

  @override
  String get habitsConsistencyNone => 'Ainda não há dados suficientes';

  @override
  String get habitsCalendar => 'Histórico de registros';

  @override
  String get habitsCalendarHint => 'Toque em um dia para corrigi-lo.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date: $count de $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Registros dos últimos 90 dias. Consistência de $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Registros dos últimos 90 dias. Ainda não há dados suficientes.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dias',
      one: '1 dia',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Dias em pausa não afetam sua sequência.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Arquivar hábito';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count vezes por dia',
      one: 'Uma vez por dia',
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
  String get notesDeleteNotebook => 'Excluir caderno';

  @override
  String get notesDeleteNotebookMessage =>
      'O caderno será removido. As notas dele são mantidas e aparecem em Todos os cadernos.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Fixe notas importantes para mantê-las no topo.';

  @override
  String get notesEmptyFavorites => 'As notas que você marcar como favoritas aparecem aqui.';

  @override
  String get notesEmptyArchived => 'As notas arquivadas aparecem aqui.';

  @override
  String get notesEmptyFiltered => 'Nenhuma nota corresponde a estes filtros.';

  @override
  String get notesArchivedSnack => 'Nota arquivada';

  @override
  String get notesUnarchivedSnack => 'Nota devolvida às suas notas';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done de $total concluídos';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Formatação';

  @override
  String get notesWrite => 'Escrever';

  @override
  String get notesPreviewEmpty => 'Ainda não há nada para visualizar.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Nenhuma outra nota aponta para cá ainda. Vincule esta nota com [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Dê um título a esta nota para que outras notas possam vinculá-la.';

  @override
  String get notesLinkedTasksEmpty => 'Nenhuma tarefa vinculada a esta nota.';

  @override
  String notesLinkMissing(String title) {
    return 'Ainda não existe nenhuma nota com o título \"$title\".';
  }

  @override
  String get notesNotFound => 'Esta nota não existe mais.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Item da lista: $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Abrir nota $title';
  }

  @override
  String get notesTagsHint => 'Adicione tags escrevendo #tag na nota.';

  @override
  String get notesTaskDone => 'Concluída';

  @override
  String get notifTimerDoneBody => 'O tempo que você definiu acabou.';

  @override
  String get onboardingPrivatePointDevice => 'Armazenado apenas neste dispositivo, criptografado';

  @override
  String get onboardingPrivatePointAccount => 'Sem necessidade de conta';

  @override
  String get onboardingPrivatePointTracking => 'Sem análises, sem rastreamento';

  @override
  String get onboardingLanguageBody => 'Você pode mudar isso a qualquer momento em Configurações.';

  @override
  String get onboardingNext => 'Avançar';

  @override
  String get projectsActive => 'Ativos';

  @override
  String get projectNameHint => 'Ex.: Lançamento do produto';

  @override
  String get projectGoalHint => 'Como seria o projeto concluído?';

  @override
  String get projectNoDeadline => 'Sem prazo';

  @override
  String get projectTasksOpen => 'Tarefas abertas';

  @override
  String get projectTasksCompleted => 'Tarefas concluídas';

  @override
  String get projectAddTask => 'Adicionar tarefa ao projeto';

  @override
  String get projectAddNote => 'Nova nota do projeto';

  @override
  String get projectLinkedNotes => 'Notas';

  @override
  String get projectNoTasks => 'Ainda não há tarefas neste projeto';

  @override
  String get projectArchivedBadge => 'Arquivado';

  @override
  String get projectDeleted => 'Projeto movido para a lixeira';

  @override
  String get projectDeleteMessage => 'As tarefas continuam na sua lista, sem projeto.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent por cento concluído';
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
    return 'Buscar novamente por $query';
  }

  @override
  String get settingsLanguageHint =>
      'Escolha o idioma de todo o app. Os nomes aparecem no próprio idioma.';

  @override
  String get settingsThemeHint => 'Claro, escuro ou seguir o sistema';

  @override
  String settingsDecrease(String setting) {
    return 'Diminuir $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Aumentar $setting';
  }

  @override
  String get settingsQuietStart => 'Início';

  @override
  String get settingsQuietEnd => 'Fim';

  @override
  String get settingsNotificationsHint =>
      'Isso salva sua preferência no app. O sistema também pode pedir permissão.';

  @override
  String get settingsDashboardHint =>
      'Arraste para reordenar. Desative as seções de que você não precisa.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Reordenar $section';
  }

  @override
  String get settingsDashboardReset => 'Restaurar ordem padrão';

  @override
  String get settingsAssistantDesc =>
      'Ajuda opcional de planejamento. Nada sai deste dispositivo a menos que você conecte um provedor.';

  @override
  String get settingsAssistantSetup => 'Assistente e configuração do provedor';

  @override
  String get settingsTrashDesc => 'Restaure ou exclua permanentemente os itens removidos';

  @override
  String get settingsEraseFirstBody =>
      'Isso não pode ser desfeito. Considere criar um backup criptografado antes.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Digite $word';
  }

  @override
  String get settingsEraseFailed => 'Não foi possível apagar os dados. Nada foi alterado.';

  @override
  String get settingsAboutTagline =>
      'Um espaço de produtividade privado e local em primeiro lugar.';

  @override
  String get backupShowPassword => 'Mostrar senha';

  @override
  String get backupHidePassword => 'Ocultar senha';

  @override
  String get backupSaved => 'Backup salvo';

  @override
  String get backupFailed => 'Não foi possível criar o backup. Seus dados não foram alterados.';

  @override
  String get backupReadFailed => 'Não foi possível ler o arquivo selecionado.';

  @override
  String get backupRestoreFailed => 'Falha na restauração. Nada foi alterado.';

  @override
  String get backupShareSubject => 'Backup criptografado do Future OS';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A cada $count dias',
      one: 'Todos os dias',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A cada $count semanas',
      one: 'Todas as semanas',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A cada $count meses',
      one: 'Todos os meses',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A cada $count anos',
      one: 'Todos os anos',
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
    return 'em $days';
  }

  @override
  String get repeatEndsLabel => 'Termina';

  @override
  String get repeatEndsAfter => 'Após um número de vezes';

  @override
  String get repeatCountLabel => 'Ocorrências';

  @override
  String get reminderNone => 'Sem lembrete';

  @override
  String get reminderCustomTime => 'Em um horário específico';

  @override
  String get a11yDecrease => 'Diminuir';

  @override
  String get a11yIncrease => 'Aumentar';

  @override
  String get pickTaskTitle => 'Escolha uma tarefa';

  @override
  String get pickTaskEmpty => 'Nenhuma tarefa aberta';

  @override
  String get tasksSearchTooltip => 'Buscar tarefas';

  @override
  String get tasksSectionOverdue => 'Atrasadas';

  @override
  String get tasksSectionToday => 'Hoje';

  @override
  String get tasksRecurringSemantics => 'Repete';

  @override
  String get tasksFilterPriorityAtLeast => 'Prioridade mínima';

  @override
  String get tasksFilterCategory => 'Categoria';

  @override
  String get tasksFilterAnyCategory => 'Qualquer categoria';

  @override
  String get tasksFilterLabel => 'Etiqueta';

  @override
  String get tasksFilterAnyLabel => 'Qualquer etiqueta';

  @override
  String get tasksFilterReset => 'Redefinir filtros';

  @override
  String get tasksViewByProject => 'Por projeto';

  @override
  String get tasksViewByPriority => 'Por prioridade';

  @override
  String get tasksViewByCategory => 'Por categoria';

  @override
  String get tasksGroupNoCategory => 'Sem categoria';

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
      'Esta tarefa está bloqueada por tarefas não concluídas. Concluir mesmo assim?';

  @override
  String get taskDeleteConfirm => 'Mover esta tarefa para a lixeira?';

  @override
  String get taskStartFocus => 'Focar nesta tarefa';

  @override
  String get taskRemoveDate => 'Remover data';

  @override
  String get taskAllDay => 'Sem horário específico';

  @override
  String get taskSaved => 'Tarefa salva';

  @override
  String get taskCreated => 'Tarefa criada';

  @override
  String get taskReminderNeedsDue => 'Defina um prazo para usar lembretes relativos';

  @override
  String taskEstimateValue(String value) {
    return 'Estimativa: $value';
  }

  @override
  String taskTrackedValue(String value) {
    return 'Registrado: $value';
  }

  @override
  String get taskSubtaskDetailsHint =>
      'Salve a tarefa primeiro para adicionar subtarefas, itens de checklist, etiquetas e dependências.';

  @override
  String get taskNoLabels => 'Ainda não há etiquetas';

  @override
  String get taskLabelName => 'Nome da etiqueta';

  @override
  String get taskMoreDetails => 'Detalhes';

  @override
  String get taskPlanning => 'Planejamento';

  @override
  String get taskOrganize => 'Organizar';

  @override
  String get taskBreakdown => 'Divisão';

  @override
  String get trashDeleteTaskTitle => 'Excluir esta tarefa de vez?';

  @override
  String get trashDeleteNoteTitle => 'Excluir esta nota de vez?';

  @override
  String get trashDeleteBody => 'Isso não pode ser desfeito.';

  @override
  String get trashEmptyTitle => 'Esvaziar a lixeira?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens serão excluídos permanentemente.',
      one: '1 item será excluído permanentemente.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restaurado';

  @override
  String get trashPurged => 'Excluído de vez';

  @override
  String trashDeletedOn(String date) {
    return 'Excluído em $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens',
      one: '1 item',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Ler em voz alta';

  @override
  String get flashcardsTtsUnavailable =>
      'A conversão de texto em fala não está disponível neste dispositivo.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Nenhuma voz instalada para este idioma. Adicione uma nas configurações de conversão de texto em fala do Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Faísca',
      'rocket': 'Foguete',
      'book': 'Livro',
      'work': 'Trabalho',
      'home': 'Casa',
      'heart': 'Coração',
      'code': 'Código',
      'palette': 'Paleta',
      'fitness': 'Exercício',
      'school': 'Escola',
      'travel': 'Viagem',
      'money': 'Economia',
      'other': 'Ícone',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Mais campos';

  @override
  String get cardFieldExample => 'Exemplo';

  @override
  String get cardFieldExplanation => 'Explicação';

  @override
  String get cardFieldPronunciation => 'Pronúncia';

  @override
  String get cardFieldNotes => 'Notas adicionais';

  @override
  String get projectMilestones => 'Marcos';

  @override
  String get milestoneAdd => 'Adicionar marco';

  @override
  String get milestoneEdit => 'Editar marco';

  @override
  String get milestoneTitleLabel => 'Marco';

  @override
  String get milestoneNoDate => 'Sem data';

  @override
  String get milestonesEmpty =>
      'Ainda não há marcos. Adicione etapas com data para acompanhar o projeto no calendário.';

  @override
  String get milestoneDeleted => 'Marco excluído';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marcar o marco \"$title\" como concluído';
  }

  @override
  String calendarMilestone(String project) {
    return 'Marco · $project';
  }

  @override
  String get tasksViewInbox => 'Caixa de entrada';

  @override
  String get tasksViewArchived => 'Arquivadas';

  @override
  String get tasksEmptyInbox =>
      'Tarefas sem projeto ou data chegam aqui. Organize-as quando tiver um minuto.';

  @override
  String get tasksEmptyArchived =>
      'Tarefas arquivadas ficam aqui, fora das suas listas e lembretes.';

  @override
  String get taskArchivedBadge => 'Arquivada';

  @override
  String get taskStatusInProgress => 'Em andamento';

  @override
  String get taskArchived => 'Tarefa arquivada';

  @override
  String get taskUnarchived => 'Tarefa restaurada do arquivo';

  @override
  String get focusPlanTitle => 'Plano de sessões';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Sessões de foco';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Pausa longa após';

  @override
  String get focusPlanSkipLastBreak => 'Pular a última pausa';

  @override
  String get focusPlanAutoBreaks => 'Iniciar pausas automaticamente';

  @override
  String get focusPlanAutoFocus => 'Iniciar o foco após a pausa';

  @override
  String get focusPlanSave => 'Salvar plano';

  @override
  String get focusPlanNameHint => 'ex.: Prova';

  @override
  String get focusPlanSaved => 'Plano salvo';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min de foco, $rest min de pausa';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Diminuir $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Aumentar $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Sessão $current de $total';
  }

  @override
  String get focusSeriesComplete => 'Série concluída. Muito bem!';

  @override
  String get exportDone => 'Exportação pronta';

  @override
  String get filterAll => 'Todas';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importadas · $duplicates duplicadas ignoradas · $invalid linhas incompletas';
  }

  @override
  String get flashcardsSuspend => 'Suspender cartão';

  @override
  String get flashcardsResume => 'Retomar cartão';

  @override
  String get flashcardsSuspended => 'Cartão suspenso: não será agendado';

  @override
  String get flashcardsResumed => 'Cartão retomado';

  @override
  String get flashcardsSuspendedFilter => 'Suspensos';

  @override
  String get flashcardsExportCsv => 'Exportar como CSV';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown de $total cartões';
  }

  @override
  String get flashcardsImportFile => 'De arquivo';

  @override
  String get speechTitle => 'Voz';

  @override
  String get speechAppLanguage => 'Idioma do app';

  @override
  String get speechFrontLanguage => 'Idioma da frente';

  @override
  String get speechBackLanguage => 'Idioma do verso';

  @override
  String get speechRepeat => 'Repetir cada leitura';

  @override
  String get speechRate => 'Velocidade';

  @override
  String get speechAutoRead => 'Ler a pergunta automaticamente';

  @override
  String get speechHint =>
      'Usa as vozes instaladas no aparelho, offline. Se um idioma não tiver voz, você será avisado e nenhuma outra será usada.';

  @override
  String get studyHowTitle => 'Como você quer estudar?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Revisar $count cartões',
      one: 'Revisar 1 cartão',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Praticar todos (sem alterar o agendamento)';

  @override
  String get studyPracticeMistakes => 'Praticar erros recentes';

  @override
  String get studyPracticeHint =>
      'A prática não altera quando os cartões vencem. A revisão atualiza o agendamento.';

  @override
  String get studyModeClassic => 'Clássico';

  @override
  String get studyModeReverse => 'Inverso';

  @override
  String get studyModeMixed => 'Nos dois sentidos';

  @override
  String get studyModeTyped => 'Digitar a resposta';

  @override
  String get studyModeChoice => 'Múltipla escolha';

  @override
  String get studyModeListening => 'Escuta';

  @override
  String get studyPractice => 'prática';

  @override
  String get studyNoMistakes => 'Nenhum erro recente neste baralho. Ótimo!';

  @override
  String get studyTypeAnswer => 'Digite sua resposta';

  @override
  String get studyCheck => 'Verificar';

  @override
  String get studyKnewIt => 'Eu sabia';

  @override
  String get studyDidntKnow => 'Não sabia';

  @override
  String studyMistakes(int count) {
    return 'Erros ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repetir os erros';

  @override
  String get studyCorrect => 'Correto';

  @override
  String get studyAlmost => 'Quase: confira a grafia';

  @override
  String get studyWrong => 'Não exatamente';

  @override
  String get studyShowText => 'Mostrar o texto';

  @override
  String get flashcardsImportFileFailed =>
      'Não foi possível abrir o arquivo. Você pode colar o conteúdo.';

  @override
  String get studyNoMatchingCards => 'Ainda não há cartões para esta opção.';

  @override
  String get studyPracticeNew => 'Só novos';

  @override
  String get studyPracticeHard => 'Cartões difíceis';

  @override
  String get studyPracticeFavorites => 'Favoritos';

  @override
  String get studySessionSize => 'Cartões por sessão';

  @override
  String get studySessionAll => 'Todos';

  @override
  String get studyOrder => 'Ordem';

  @override
  String get studyOrderDue => 'Mais atrasados primeiro';

  @override
  String get studyOrderRandom => 'Aleatório';

  @override
  String get studyOrderHardest => 'Mais difíceis primeiro';

  @override
  String get flashcardsHard => 'Difícil';

  @override
  String get flashcardsFavorites => 'Favoritos';

  @override
  String get flashcardsFavorite => 'Adicionar aos favoritos';

  @override
  String get flashcardsUnfavorite => 'Remover dos favoritos';

  @override
  String get flashcardsDuplicate => 'Duplicar';

  @override
  String get flashcardsMoveTo => 'Mover para baralho';

  @override
  String get flashcardsNoOtherDeck => 'Crie outro baralho primeiro.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartões movidos',
      one: 'Cartão movido',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Adicionar etiqueta';

  @override
  String get flashcardsTagHint => 'ex.: verbos';

  @override
  String flashcardsSelected(int count) {
    return '$count selecionados';
  }

  @override
  String get flashcardsSelectAll => 'Selecionar todos';

  @override
  String flashcardsSelectCard(String front) {
    return 'Selecionar $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Lembrança $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Possível duplicado';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Este baralho já tem “$front” → “$back”. Salvar mesmo assim?';
  }

  @override
  String get flashcardsSaveAnyway => 'Salvar mesmo assim';

  @override
  String get flashcardsStats => 'Estatísticas';

  @override
  String get flashcardsStatTotal => 'Cartões';

  @override
  String get flashcardsStatLearning => 'Aprendendo';

  @override
  String get flashcardsStatMatureCaption => 'Lembrados por 21+ dias';

  @override
  String get flashcardsStatReviewsToday => 'Revisões hoje';

  @override
  String get flashcardsStatCorrect => 'Respostas corretas';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Últimos $days dias';
  }

  @override
  String get flashcardsStatForget => 'Taxa de esquecimento';

  @override
  String get flashcardsStatForgetCaption => '“De novo” em cartões aprendidos';

  @override
  String get flashcardsStatRecall => 'Lembrança agora';

  @override
  String get flashcardsStatRecallCaption => 'Estimativa FSRS, cartões revisados';

  @override
  String flashcardsStatActivity(int count) {
    return 'Revisões por dia · $count no total';
  }

  @override
  String get flashcardsStatHistory => 'Últimas respostas';

  @override
  String get flashcardsStatNoHistory =>
      'Ainda sem revisões. Estude o baralho para ver o progresso.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Ler $field em voz alta';
  }

  @override
  String get speechVoice => 'Voz';

  @override
  String get speechVoiceDefault => 'Padrão do aparelho';

  @override
  String get speechVoiceOnline => 'requer internet';

  @override
  String get speechTest => 'Testar voz';

  @override
  String get importNext => 'Pré-visualizar';

  @override
  String get importPreviewTitle => 'Associe colunas aos campos';

  @override
  String get importIgnoreColumn => 'Ignorar';

  @override
  String importColumn(int n) {
    return 'Coluna $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready cartões prontos · $invalid linhas incompletas serão ignoradas';
  }

  @override
  String get importNeedFrontBack => 'Escolha quais colunas são a frente e o verso.';

  @override
  String get actionMoveUp => 'Mover para cima';

  @override
  String get actionMoveDown => 'Mover para baixo';

  @override
  String get flashcardsLayoutTitle => 'Layout do cartão';

  @override
  String get flashcardsLayoutHint =>
      'Renomeie, oculte ou reordene os campos extras deste baralho. O conteúdo nunca muda.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Mostrar $field ao estudar';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Revelar a resposta passo a passo';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Primeiro o verso; cada campo extra abre com um toque.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Mostrar $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'O arquivo tem mais de $mb MB.';
  }

  @override
  String get flashcardsImage => 'Imagem';

  @override
  String get flashcardsAudio => 'Áudio';

  @override
  String get flashcardsAddImage => 'Adicionar imagem';

  @override
  String get flashcardsAddAudio => 'Adicionar áudio';

  @override
  String get flashcardsPlayAudio => 'Tocar gravação';

  @override
  String get flashcardsAudioUnavailable => 'Não é possível tocar neste aparelho.';

  @override
  String get flashcardsCustomFields => 'Seus campos';

  @override
  String get flashcardsTemplates => 'Modelos';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Campo $n';
  }

  @override
  String get flashcardsAddField => 'Adicionar campo';

  @override
  String get flashcardsFieldName => 'Nome do campo';

  @override
  String get flashcardsFieldLangDefault => 'Idioma do lado';

  @override
  String get flashcardsTemplateConfirm =>
      'O modelo define a exibição e adiciona seus campos. Seus cartões e campos continuam iguais.';

  @override
  String get flashcardsApplyTemplate => 'Aplicar';

  @override
  String get templateVocabulary => 'Vocabulário';

  @override
  String get templateTwoTranslations => 'Palavra com duas traduções';

  @override
  String get templateQuestionAnswer => 'Pergunta e resposta';

  @override
  String get templateDefinition => 'Termo e definição';

  @override
  String get templateGrammar => 'Regra gramatical';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Segunda tradução';

  @override
  String get templateFieldSynonyms => 'Sinônimos';

  @override
  String get templateFieldRule => 'Regra';

  @override
  String get deckCategory => 'Nível ou tema';

  @override
  String get deckCategoryHint => 'ex.: A1, Medicina';

  @override
  String get flashcardsSearchAll => 'Buscar em todos';

  @override
  String get flashcardsSearchAllHint => 'Palavra, tradução, exemplo, nota, etiqueta…';

  @override
  String get flashcardsAllDecks => 'Todos os baralhos';

  @override
  String get flashcardsAllLanguages => 'Todos os idiomas';

  @override
  String get flashcardsLangUnset => 'Idioma não definido';

  @override
  String get flashcardsLevelUnset => 'Sem nível ou tema';

  @override
  String get flashcardsByLanguage => 'Progresso por idioma';

  @override
  String get flashcardsByLevel => 'Progresso por nível ou tema';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks baralhos · $cards cartões · $mature maduros · $due pendentes · $correct corretas (30 dias)';
  }

  @override
  String get flashcardsRecord => 'Gravar';

  @override
  String get flashcardsRecording => 'Gravando…';

  @override
  String get flashcardsRecordStop => 'Parar e manter';

  @override
  String get flashcardsMicDenied =>
      'O acesso ao microfone está desativado. Permita-o nas configurações do sistema para gravar.';

  @override
  String get flashcardsRecordFailed => 'A gravação não está disponível neste dispositivo.';

  @override
  String get soundsTitle => 'Sons';

  @override
  String get soundsSubtitle =>
      'Sons da natureza criados ao vivo no seu dispositivo. Nunca se repetem.';

  @override
  String get soundsNature => 'Natureza';

  @override
  String get soundsNoise => 'Ruído para foco';

  @override
  String get soundRain => 'Chuva';

  @override
  String get soundStorm => 'Tempestade';

  @override
  String get soundRiver => 'Rio';

  @override
  String get soundOcean => 'Ondas do mar';

  @override
  String get soundFire => 'Fogueira';

  @override
  String get soundWind => 'Vento';

  @override
  String get soundForest => 'Pássaros da floresta';

  @override
  String get soundNight => 'Noite de verão';

  @override
  String get soundWhite => 'Ruído branco';

  @override
  String get soundPink => 'Ruído rosa';

  @override
  String get soundBrown => 'Ruído marrom';

  @override
  String get soundsPlay => 'Reproduzir';

  @override
  String get soundsSleep => 'Timer de sono';

  @override
  String get soundsSleepOff => 'Desligado';

  @override
  String soundsSleepAt(String time) {
    return 'Para às $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Até $count sons ao mesmo tempo.';
  }

  @override
  String get soundsHint =>
      'Toque em um som para começar. Misture vários e ajuste o volume de cada um.';

  @override
  String get soundsMixer => 'Mistura';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume de $name';
  }

  @override
  String get soundsChannel => 'Sons da natureza';

  @override
  String get settingsEndTone => 'Som ao terminar';

  @override
  String get toneGentle => 'Bipes suaves';

  @override
  String get toneBeeps => 'Bipes';

  @override
  String get toneDrops => 'Gotas de água';

  @override
  String get toneWood => 'Batidas na madeira';

  @override
  String get toneBird => 'Canto de pássaro';

  @override
  String get toneStream => 'Riacho';

  @override
  String get toneSystem => 'Som do telefone';
}
