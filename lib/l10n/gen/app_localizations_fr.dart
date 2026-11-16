// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Future OS';

  @override
  String get navHome => 'Accueil';

  @override
  String get navTasks => 'Tâches';

  @override
  String get navFocus => 'Concentration';

  @override
  String get navCalendar => 'Calendrier';

  @override
  String get navSpaces => 'Espaces';

  @override
  String get moduleProjects => 'Projets';

  @override
  String get moduleNotes => 'Mes notes';

  @override
  String get moduleFlashcards => 'Fiches';

  @override
  String get moduleGoals => 'Objectifs';

  @override
  String get moduleHabits => 'Habitudes';

  @override
  String get moduleAnalytics => 'Statistiques';

  @override
  String get moduleSearch => 'Recherche';

  @override
  String get moduleAssistant => 'Assistant personnel';

  @override
  String get moduleSettings => 'Réglages';

  @override
  String get moduleTrash => 'Corbeille';

  @override
  String get spacesSubtitle => 'Tout ce que vous organisez, au même endroit';

  @override
  String get actionSave => 'Enregistrer';

  @override
  String get actionCancel => 'Annuler';

  @override
  String get actionDelete => 'Supprimer';

  @override
  String get actionEdit => 'Modifier';

  @override
  String get actionDone => 'OK';

  @override
  String get actionAdd => 'Ajouter';

  @override
  String get actionCreate => 'Créer';

  @override
  String get actionClose => 'Fermer';

  @override
  String get actionBack => 'Retour';

  @override
  String get actionUndo => 'Annuler';

  @override
  String get actionRestore => 'Restaurer';

  @override
  String get actionRetry => 'Réessayer';

  @override
  String get actionContinue => 'Continuer';

  @override
  String get actionSkip => 'Passer';

  @override
  String get actionArchive => 'Archiver';

  @override
  String get actionUnarchive => 'Désarchiver';

  @override
  String get actionPin => 'Épingler';

  @override
  String get actionUnpin => 'Désépingler';

  @override
  String get actionMore => 'Plus d’options';

  @override
  String get actionClear => 'Effacer';

  @override
  String get actionSearch => 'Rechercher';

  @override
  String get actionFilter => 'Filtrer';

  @override
  String get actionSort => 'Trier';

  @override
  String get actionShare => 'Partager';

  @override
  String get actionImport => 'Importer';

  @override
  String get actionExport => 'Exporter';

  @override
  String get actionPause => 'Suspendre';

  @override
  String get actionResume => 'Reprendre';

  @override
  String get actionStart => 'Démarrer';

  @override
  String get actionStop => 'Arrêter';

  @override
  String get actionComplete => 'Terminer';

  @override
  String get actionReopen => 'Rouvrir';

  @override
  String get actionDeleteForever => 'Supprimer définitivement';

  @override
  String get actionEmptyTrash => 'Vider la corbeille';

  @override
  String get actionSelect => 'Sélectionner';

  @override
  String get actionNone => 'Aucun';

  @override
  String get actionLink => 'Lier';

  @override
  String get actionUnlink => 'Délier';

  @override
  String get actionCustomize => 'Personnaliser';

  @override
  String get actionReset => 'Réinitialiser';

  @override
  String get actionOpen => 'Ouvrir';

  @override
  String get actionEnable => 'Activer';

  @override
  String get actionDisable => 'Désactiver';

  @override
  String get actionAllow => 'Autoriser';

  @override
  String get actionNotNow => 'Plus tard';

  @override
  String get actionPreview => 'Aperçu';

  @override
  String get actionLog => 'Noter un progrès';

  @override
  String get stateLoading => 'Chargement…';

  @override
  String get stateSaving => 'Enregistrement…';

  @override
  String get stateSaved => 'Enregistré';

  @override
  String get stateUnsaved => 'Modifications non enregistrées';

  @override
  String get errorGenericTitle => 'Un problème est survenu';

  @override
  String get errorGenericMessage => 'Vos données sont en sécurité. Veuillez réessayer.';

  @override
  String get errorLoadFailed => 'Impossible de charger ce contenu.';

  @override
  String get errorSaveFailed => 'Échec de l’enregistrement. Vos modifications sont toujours là.';

  @override
  String get validationRequired => 'Ce champ est obligatoire';

  @override
  String get validationTitleRequired => 'Veuillez saisir un titre';

  @override
  String get validationNameRequired => 'Veuillez saisir un nom';

  @override
  String get validationTooLong => 'C’est trop long';

  @override
  String get validationEndBeforeStart => 'La fin doit être postérieure au début';

  @override
  String get validationStartAfterDue => 'La date de début doit précéder l’échéance';

  @override
  String get validationPositiveNumber => 'Saisissez un nombre supérieur à zéro';

  @override
  String get validationDependencyCycle => 'Cela créerait une dépendance circulaire';

  @override
  String get validationInvalidRepeat => 'Cette règle de répétition n’est pas valide';

  @override
  String get deletedItem => 'Placé dans la corbeille';

  @override
  String get restoredItem => 'Restauré';

  @override
  String get untitled => 'Sans titre';

  @override
  String get noProject => 'Aucun projet';

  @override
  String get confirmDeleteTitle => 'Supprimer définitivement ?';

  @override
  String get confirmDeleteMessage => 'Cette action est irréversible.';

  @override
  String get greetingMorning => 'Bonjour';

  @override
  String get greetingAfternoon => 'Bon après-midi';

  @override
  String get greetingEvening => 'Bonsoir';

  @override
  String get dashboardTitle => 'Aujourd’hui';

  @override
  String get dashFocusToday => 'Concentration du jour';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done sur $target';
  }

  @override
  String get dashStartFocus => 'Se concentrer';

  @override
  String get dashFocusRunning => 'Séance en cours';

  @override
  String get dashTodayTasks => 'À faire aujourd’hui';

  @override
  String get dashAgenda => 'Au programme';

  @override
  String get dashHabits => 'Habitudes du jour';

  @override
  String get dashGoals => 'Objectifs';

  @override
  String get dashReview => 'Révision';

  @override
  String get dashRecentNotes => 'Notes récentes';

  @override
  String get dashInsight => 'Suggestion du jour';

  @override
  String get dashSeeAll => 'Tout voir';

  @override
  String get dashNoTasksToday => 'Rien à rendre aujourd’hui. Champ libre.';

  @override
  String get dashNoEvents => 'Plus d’événement aujourd’hui';

  @override
  String get dashNoHabits => 'Créez une habitude pour la suivre ici';

  @override
  String get dashNoGoals => 'Fixez un objectif pour suivre vos progrès';

  @override
  String get dashNoNotes => 'Vos dernières notes apparaîtront ici';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches à réviser',
      one: '1 fiche à réviser',
      zero: 'Aucune fiche à réviser',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Réviser';

  @override
  String get dashCustomizeTitle => 'Sections de l’accueil';

  @override
  String get dashCustomizeHint => 'Choisissez ce qui s’affiche sur votre écran d’accueil.';

  @override
  String get dashSectionFocus => 'Concentration';

  @override
  String get dashSectionToday => 'Tâches du jour';

  @override
  String get dashSectionAgenda => 'Au programme';

  @override
  String get dashSectionHabits => 'Habitudes';

  @override
  String get dashSectionGoals => 'Objectifs';

  @override
  String get dashSectionReview => 'Révision des fiches';

  @override
  String get dashSectionNotes => 'Notes récentes';

  @override
  String get dashSectionInsight => 'Recommandations';

  @override
  String get quickAddTask => 'Nouvelle tâche';

  @override
  String get quickAddNote => 'Nouvelle note';

  @override
  String get quickAddEvent => 'Nouvel événement';

  @override
  String get quickStartFocus => 'Concentration';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vous avez $count tâches en retard. Commencez par la plus importante.',
      one: 'Vous avez 1 tâche en retard. Replanifiez-la ou terminez-la d’abord.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'Plus que $minutes minutes pour atteindre votre objectif quotidien de concentration.';
  }

  @override
  String get insightCardsDue => 'Révisez vos fiches maintenant, tant qu’elles sont fraîches.';

  @override
  String get insightAllClear =>
      'Tout est en ordre. Planifiez demain ou accordez-vous une pause en pleine conscience.';

  @override
  String insightHabitStreak(String habit) {
    return 'Gardez votre série : $habit reste à faire aujourd’hui.';
  }

  @override
  String get focusTitle => 'Concentration';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Minuteur';

  @override
  String get focusModeCountUp => 'Chronomètre';

  @override
  String get focusModeOpen => 'Libre';

  @override
  String get focusPhaseWork => 'Concentration';

  @override
  String get focusPhaseShortBreak => 'Pause courte';

  @override
  String get focusPhaseLongBreak => 'Pause longue';

  @override
  String get focusReady => 'Prêt quand vous l’êtes';

  @override
  String get focusPaused => 'En pause';

  @override
  String get focusRunning => 'Concentré';

  @override
  String get focusElapsed => 'Écoulé';

  @override
  String get focusRemaining => 'Restant';

  @override
  String get focusDuration => 'Durée';

  @override
  String get focusLinkTask => 'Lier une tâche';

  @override
  String get focusLinkedTask => 'En cours';

  @override
  String get focusNoTask => 'Aucune tâche liée';

  @override
  String focusCycle(int current, int total) {
    return 'Cycle $current sur $total';
  }

  @override
  String get focusSkipBreak => 'Passer la pause';

  @override
  String get focusStartBreak => 'Commencer la pause';

  @override
  String get focusStartNext => 'Séance suivante';

  @override
  String get focusSessionComplete => 'Séance terminée';

  @override
  String get focusSessionStopped => 'Séance enregistrée';

  @override
  String focusSessionSummary(String duration) {
    return 'Vous vous êtes concentré pendant $duration.';
  }

  @override
  String get focusAddNote => 'Ajoutez une note sur cette séance';

  @override
  String get focusHistory => 'Historique';

  @override
  String get focusNoHistory => 'Les séances terminées apparaîtront ici';

  @override
  String get focusTargets => 'Objectifs';

  @override
  String get focusDailyTarget => 'Objectif quotidien';

  @override
  String get focusWeeklyTarget => 'Objectif hebdomadaire';

  @override
  String get focusOutcomeCompleted => 'Terminée';

  @override
  String get focusOutcomeInterrupted => 'Arrêtée avant la fin';

  @override
  String get focusRecovered => 'Votre séance a continué pendant que l’app était fermée.';

  @override
  String get focusCompletedWhileAway =>
      'Une séance s’est terminée pendant que l’app était fermée ; elle a été enregistrée.';

  @override
  String get focusNotificationsOff =>
      'Les notifications sont désactivées. Vous ne serez pas averti à la fin d’une séance.';

  @override
  String get focusBatteryHint =>
      'Certains appareils mettent les apps en pause en arrière-plan. Le minuteur reste précis, mais les alertes peuvent être retardées. Autorisez l’utilisation illimitée de la batterie pour des alertes fiables.';

  @override
  String get focusOpenSettings => 'Ouvrir les réglages';

  @override
  String get focusStopConfirmTitle => 'Arrêter cette séance ?';

  @override
  String get focusStopConfirmMessage => 'Le temps de concentration déjà effectué sera enregistré.';

  @override
  String get focusDiscard => 'Ignorer';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes',
      one: '$minutes minute',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time restantes';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time écoulées';
  }

  @override
  String get focusDeleteSession => 'Supprimer la séance';

  @override
  String get tasksTitle => 'Tâches';

  @override
  String get tasksViewToday => 'Aujourd’hui';

  @override
  String get tasksViewUpcoming => 'À venir';

  @override
  String get tasksViewAll => 'Toutes';

  @override
  String get tasksViewOverdue => 'En retard';

  @override
  String get tasksViewCompleted => 'Terminées';

  @override
  String get tasksQuickAddHint => 'Ajouter une tâche…';

  @override
  String get tasksEmptyTitle => 'Tout est fait';

  @override
  String get tasksEmptyMessage => 'Ajoutez une tâche pour commencer à organiser votre journée.';

  @override
  String get tasksEmptyCompleted => 'Les tâches terminées apparaîtront ici.';

  @override
  String get taskNew => 'Nouvelle tâche';

  @override
  String get taskEdit => 'Modifier la tâche';

  @override
  String get taskTitleLabel => 'Titre';

  @override
  String get taskTitleHint => 'Que faut-il faire ?';

  @override
  String get taskDescriptionLabel => 'Descriptif';

  @override
  String get taskNotesLabel => 'Remarques';

  @override
  String get taskPriority => 'Priorité';

  @override
  String get priorityNone => 'Aucune';

  @override
  String get priorityLow => 'Basse';

  @override
  String get priorityMedium => 'Moyenne';

  @override
  String get priorityHigh => 'Haute';

  @override
  String get priorityUrgent => 'Urgente';

  @override
  String get taskDueDate => 'Échéance';

  @override
  String get taskStartDate => 'Date de début';

  @override
  String get taskReminder => 'Rappel';

  @override
  String get taskRepeat => 'Répétition';

  @override
  String get taskProject => 'Projet';

  @override
  String get taskCategory => 'Catégorie';

  @override
  String get taskCategoryHint => 'ex. : Travail, Maison, Études';

  @override
  String get taskEstimate => 'Estimation';

  @override
  String get taskEstimateMinutes => 'Estimation (minutes)';

  @override
  String get taskTracked => 'Concentration mesurée';

  @override
  String get taskLabels => 'Libellés';

  @override
  String get taskAddLabel => 'Nouveau libellé';

  @override
  String get taskChecklist => 'Liste de contrôle';

  @override
  String get taskAddChecklistItem => 'Ajouter un élément';

  @override
  String get taskSubtasks => 'Sous-tâches';

  @override
  String get taskAddSubtask => 'Ajouter une sous-tâche';

  @override
  String get taskDependencies => 'Bloquée par';

  @override
  String get taskAddDependency => 'Ajouter une tâche bloquante';

  @override
  String get taskLinkedNotes => 'Notes liées';

  @override
  String get taskSetTime => 'Définir l’heure';

  @override
  String get taskNoDate => 'Sans date';

  @override
  String get taskCompleted => 'Tâche terminée';

  @override
  String get taskNextOccurrence => 'Prochaine occurrence créée';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskDueOn(String date) {
    return 'Échéance : $date';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours de retard',
      one: '1 jour de retard',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Marquer « $title » comme terminée';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Marquer « $title » comme non terminée';
  }

  @override
  String get sortSmart => 'Intelligent';

  @override
  String get sortDueDate => 'Échéance';

  @override
  String get sortPriority => 'Priorité';

  @override
  String get sortCreated => 'Plus récentes';

  @override
  String get sortTitle => 'Titre';

  @override
  String get filterAllProjects => 'Tous les projets';

  @override
  String get filterAnyPriority => 'Toutes les priorités';

  @override
  String get filterTitle => 'Filtrer et trier';

  @override
  String get dateToday => 'Aujourd’hui';

  @override
  String get dateTomorrow => 'Demain';

  @override
  String get dateYesterday => 'Hier';

  @override
  String get dateNextWeek => 'Semaine prochaine';

  @override
  String get repeatNever => 'Aucune répétition';

  @override
  String get repeatDaily => 'Tous les jours';

  @override
  String get repeatWeekdays => 'En semaine';

  @override
  String get repeatWeekly => 'Toutes les semaines';

  @override
  String get repeatMonthly => 'Tous les mois';

  @override
  String get repeatYearly => 'Tous les ans';

  @override
  String get repeatCustom => 'Personnalisé';

  @override
  String get repeatEvery => 'Répéter tous les';

  @override
  String get repeatOnDays => 'Les jours';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'jours', one: 'jour');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'semaines',
      one: 'semaine',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'mois', one: 'mois');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'ans', one: 'an');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fois',
      one: '1 fois',
    );
    return 'Se termine après $_temp0';
  }

  @override
  String get repeatEndsNever => 'Sans fin';

  @override
  String get reminderAtTime => 'À l’heure de l’événement';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes avant',
      one: '1 minute avant',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours heures avant',
      one: '1 heure avant',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 jour avant';

  @override
  String get projectsTitle => 'Projets';

  @override
  String get projectsEmptyTitle => 'Aucun projet pour l’instant';

  @override
  String get projectsEmptyMessage => 'Regroupez tâches, notes et temps de concentration liés.';

  @override
  String get projectNew => 'Nouveau projet';

  @override
  String get projectEdit => 'Modifier le projet';

  @override
  String get projectName => 'Nom';

  @override
  String get projectDescription => 'Descriptif';

  @override
  String get projectGoal => 'Objectif';

  @override
  String get projectDeadline => 'Date limite';

  @override
  String get projectColor => 'Couleur';

  @override
  String get projectIcon => 'Icône';

  @override
  String get projectNotes => 'Notes du projet';

  @override
  String get projectProgress => 'Avancement';

  @override
  String projectTasksDone(int done, int total) {
    return '$done tâches terminées sur $total';
  }

  @override
  String get projectFocusTime => 'Temps de concentration';

  @override
  String get projectArchived => 'Projets archivés';

  @override
  String get projectShowArchived => 'Afficher les archives';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours restants',
      one: '1 jour restant',
      zero: 'Échéance aujourd’hui',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Date limite dépassée';

  @override
  String get calendarTitle => 'Calendrier';

  @override
  String get calendarMonth => 'Mois';

  @override
  String get calendarWeek => 'Semaine';

  @override
  String get calendarDay => 'Jour';

  @override
  String get calendarToday => 'Aujourd’hui';

  @override
  String get calendarPrevious => 'Précédent';

  @override
  String get calendarNext => 'Suivant';

  @override
  String get calendarNoEvents => 'Rien de prévu';

  @override
  String get calendarAllDay => 'Toute la journée';

  @override
  String get eventNew => 'Nouvel événement';

  @override
  String get eventEdit => 'Modifier l’événement';

  @override
  String get eventTitleHint => 'Titre de l’événement';

  @override
  String get eventStarts => 'Début';

  @override
  String get eventEnds => 'Fin';

  @override
  String get eventKind => 'Type d’événement';

  @override
  String get eventKindEvent => 'Événement';

  @override
  String get eventKindTimeBlock => 'Plage horaire';

  @override
  String get eventKindFocus => 'Séance de concentration';

  @override
  String get eventKindGoal => 'Objectif personnel';

  @override
  String get eventDescription => 'Détails';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Chevauche $count événements',
      one: 'Chevauche 1 événement',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Conflits d’horaire ce jour-là';

  @override
  String get calendarTaskDue => 'Tâche à échéance';

  @override
  String get calendarDragHint =>
      'Appuyez longuement sur un événement et faites-le glisser pour le replanifier';

  @override
  String get calendarRescheduled => 'Événement déplacé';

  @override
  String get calendarScheduleTask => 'Planifier comme plage horaire';

  @override
  String get calendarLegend => 'Légende';

  @override
  String get notesTitle => 'Mes notes';

  @override
  String get notesViewAll => 'Toutes';

  @override
  String get notesViewPinned => 'Épinglées';

  @override
  String get notesViewFavorites => 'Favoris';

  @override
  String get notesViewArchived => 'Archivées';

  @override
  String get notesNotebooks => 'Carnets';

  @override
  String get notesTags => 'Étiquettes';

  @override
  String get notesNewNotebook => 'Nouveau carnet';

  @override
  String get notesNoNotebook => 'Aucun carnet';

  @override
  String get notesEmptyTitle => 'Une page blanche';

  @override
  String get notesEmptyMessage => 'Notez vos idées, comptes rendus de réunion et connaissances.';

  @override
  String get noteTitleHint => 'Titre';

  @override
  String get noteBodyHint =>
      'Commencez à écrire… Utilisez # pour les étiquettes et [[Titre]] pour lier des notes.';

  @override
  String get noteFavorite => 'Ajouter aux favoris';

  @override
  String get noteUnfavorite => 'Retirer des favoris';

  @override
  String get noteMoveTo => 'Déplacer vers un carnet';

  @override
  String get noteBacklinks => 'Citée dans';

  @override
  String get noteLinkedTasks => 'Tâches liées';

  @override
  String get noteLinkTask => 'Lier une tâche';

  @override
  String get noteLinkProject => 'Projet';

  @override
  String get noteFormatHeading => 'Titre';

  @override
  String get noteFormatBold => 'Gras';

  @override
  String get noteFormatItalic => 'Italique';

  @override
  String get noteFormatList => 'Liste à puces';

  @override
  String get noteFormatChecklist => 'Liste de contrôle';

  @override
  String get noteFormatLink => 'Lien';

  @override
  String noteEdited(String time) {
    return 'Modifiée $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mots',
      one: '1 mot',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Fiches';

  @override
  String get flashEmptyTitle => 'Créez votre premier paquet';

  @override
  String get flashEmptyMessage =>
      'La répétition espacée vous montre chaque fiche juste avant que vous ne l’oubliiez.';

  @override
  String get deckNew => 'Nouveau paquet';

  @override
  String get deckEdit => 'Modifier le paquet';

  @override
  String get deckName => 'Nom du paquet';

  @override
  String get deckDescription => 'Descriptif';

  @override
  String get deckDailyNew => 'Nouvelles fiches par jour';

  @override
  String get deckDailyReview => 'Objectif quotidien de révision';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches',
      one: '1 fiche',
      zero: 'Aucune fiche',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'À réviser';

  @override
  String get deckNewCards => 'Nouvelles';

  @override
  String get deckMature => 'Acquises';

  @override
  String get deckStudy => 'Étudier';

  @override
  String get deckNothingDue => 'Rien à réviser pour l’instant. Revenez plus tard.';

  @override
  String get deckEmptyCards => 'Ajoutez des fiches pour commencer à apprendre.';

  @override
  String get cardNew => 'Nouvelle fiche';

  @override
  String get cardEdit => 'Modifier la fiche';

  @override
  String get cardFront => 'Recto';

  @override
  String get cardBack => 'Verso';

  @override
  String get cardFrontHint => 'Question ou terme';

  @override
  String get cardBackHint => 'Réponse ou définition';

  @override
  String get cardTags => 'Étiquettes';

  @override
  String get cardAddAnother => 'Enregistrer et ajouter';

  @override
  String get reviewShowAnswer => 'Voir la réponse';

  @override
  String get reviewAgain => 'Encore';

  @override
  String get reviewHard => 'Difficile';

  @override
  String get reviewGood => 'Bien';

  @override
  String get reviewEasy => 'Facile';

  @override
  String reviewProgress(int done, int total) {
    return '$done sur $total';
  }

  @override
  String get reviewFinishedTitle => 'Séance terminée';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vous avez révisé $count fiches.',
      one: 'Vous avez révisé 1 fiche.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Touchez pour afficher la réponse';

  @override
  String get importCardsTitle => 'Importer des fiches';

  @override
  String get importCardsHint =>
      'Collez une fiche par ligne, recto et verso séparés par une tabulation ou un point-virgule, ou collez un fichier de paquet exporté.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches importées',
      one: '1 fiche importée',
      zero: 'Aucune fiche importée',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'Impossible d’importer ce contenu.';

  @override
  String get exportCopied => 'Paquet exporté';

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
      other: '$count jours',
      one: '1 jour',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Objectifs';

  @override
  String get goalsEmptyTitle => 'Visez quelque chose';

  @override
  String get goalsEmptyMessage =>
      'Fixez des objectifs quotidiens, hebdomadaires, mensuels ou à long terme et suivez vos vrais progrès.';

  @override
  String get goalNew => 'Nouvel objectif';

  @override
  String get goalEdit => 'Modifier l’objectif';

  @override
  String get goalTitleHint => 'Que voulez-vous accomplir ?';

  @override
  String get goalPeriod => 'Période';

  @override
  String get goalPeriodDaily => 'Quotidien';

  @override
  String get goalPeriodWeekly => 'Hebdomadaire';

  @override
  String get goalPeriodMonthly => 'Mensuel';

  @override
  String get goalPeriodLongTerm => 'Long terme';

  @override
  String get goalTarget => 'Cible';

  @override
  String get goalUnit => 'Unité';

  @override
  String get goalUnitHint => 'ex. : pages, km, heures';

  @override
  String get goalStatusActive => 'Actif';

  @override
  String get goalStatusPaused => 'En pause';

  @override
  String get goalStatusAchieved => 'Atteint';

  @override
  String get goalPause => 'Mettre en pause';

  @override
  String get goalResume => 'Reprendre l’objectif';

  @override
  String get goalMarkAchieved => 'Marquer comme atteint';

  @override
  String goalProgressOf(String current, String target) {
    return '$current sur $target';
  }

  @override
  String get goalLogAmount => 'Quantité';

  @override
  String get goalLogNote => 'Note (facultatif)';

  @override
  String get goalHistory => 'Historique';

  @override
  String get goalNoHistory => 'Les progrès notés apparaîtront ici';

  @override
  String get goalLinkedTasks => 'Tâches liées';

  @override
  String get goalLinkedTasksHint => 'Chaque tâche liée terminée compte pour 1 dans cet objectif.';

  @override
  String get goalThisPeriod => 'Cette période';

  @override
  String get habitsTitle => 'Habitudes';

  @override
  String get habitsEmptyTitle => 'Petits pas, chaque jour';

  @override
  String get habitsEmptyMessage => 'Créez une habitude et cochez-la quand vous la réalisez.';

  @override
  String get habitNew => 'Nouvelle habitude';

  @override
  String get habitEdit => 'Modifier l’habitude';

  @override
  String get habitNameHint => 'ex. : Lire 20 pages';

  @override
  String get habitDays => 'Fréquence';

  @override
  String get habitEveryDay => 'Tous les jours';

  @override
  String get habitTargetPerDay => 'Fois par jour';

  @override
  String get habitReminder => 'Rappel quotidien';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Série de $count jours',
      one: 'Série de 1 jour',
      zero: 'Aucune série',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Meilleure série';

  @override
  String get habitCurrentStreak => 'Série actuelle';

  @override
  String get habitConsistency => 'Régularité';

  @override
  String get habitLast90 => '90 derniers jours';

  @override
  String get habitPaused => 'En pause';

  @override
  String get habitPause => 'Suspendre l’habitude';

  @override
  String get habitResume => 'Reprendre l’habitude';

  @override
  String get habitDoneToday => 'Fait aujourd’hui';

  @override
  String habitCountToday(int count, int target) {
    return '$count sur $target aujourd’hui';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Cocher « $name »';
  }

  @override
  String get habitNotScheduledToday => 'Pas prévu aujourd’hui';

  @override
  String get analyticsTitle => 'Statistiques';

  @override
  String get rangeWeek => '7 jours';

  @override
  String get rangeMonth => '30 jours';

  @override
  String get rangeQuarter => '90 jours';

  @override
  String get statFocusTime => 'Temps de concentration';

  @override
  String get statSessions => 'Séances';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed terminées · $interrupted arrêtées avant la fin';
  }

  @override
  String get statTasksDone => 'Tâches terminées';

  @override
  String get statCompletionRate => 'Terminées dans les délais';

  @override
  String get statHabitConsistency => 'Régularité des habitudes';

  @override
  String get statRetention => 'Mémorisation des fiches';

  @override
  String get statReviews => 'Révisions';

  @override
  String get statActiveGoals => 'Objectifs actifs';

  @override
  String get statEstimated => 'Travail estimé accompli';

  @override
  String get statEstimatedNote => 'D’après vos estimations, pas le temps mesuré';

  @override
  String get statMeasuredNote => 'Mesuré à partir des séances de concentration';

  @override
  String get chartFocusByDay => 'Minutes de concentration par jour';

  @override
  String get chartTasksByDay => 'Tâches terminées par jour';

  @override
  String get chartTimeByProject => 'Temps par projet';

  @override
  String get chartProjectProgress => 'Avancement des projets';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title : total $total, meilleur jour $best';
  }

  @override
  String get analyticsNoData => 'Pas encore assez de données';

  @override
  String get analyticsUnassigned => 'Sans projet';

  @override
  String get searchHint => 'Tout rechercher…';

  @override
  String get searchRecent => 'Recherches récentes';

  @override
  String get searchClearRecent => 'Effacer les recherches récentes';

  @override
  String searchNoResults(String query) {
    return 'Aucun résultat pour « $query »';
  }

  @override
  String get searchStartTyping =>
      'Recherchez dans les tâches, notes, fiches, objectifs, événements et plus encore. La recherche reste sur cet appareil.';

  @override
  String get searchCatTask => 'Tâches';

  @override
  String get searchCatProject => 'Projets';

  @override
  String get searchCatNote => 'Mes notes';

  @override
  String get searchCatFlashcard => 'Fiches';

  @override
  String get searchCatDeck => 'Paquets';

  @override
  String get searchCatGoal => 'Objectifs';

  @override
  String get searchCatHabit => 'Habitudes';

  @override
  String get searchCatEvent => 'Événements';

  @override
  String get searchCatSession => 'Séances';

  @override
  String get searchAll => 'Tout';

  @override
  String get assistantTitle => 'Assistant personnel';

  @override
  String get assistantIntro =>
      'Une aide à la planification qui fonctionne sur votre appareil. Vous pouvez aussi connecter le fournisseur d’IA de votre choix pour les résumés et la génération de contenu.';

  @override
  String get assistantOnDevice => 'Sur l’appareil';

  @override
  String get assistantCloud => 'Fournisseur d’IA';

  @override
  String get assistantPlanDay => 'Planifier ma journée';

  @override
  String get assistantPlanDayDesc =>
      'Classe les tâches ouvertes par urgence, priorité et estimation, et les place autour de vos événements.';

  @override
  String get assistantExtractTasks => 'Extraire les tâches d’une note';

  @override
  String get assistantExtractTasksDesc =>
      'Repère les éléments de liste et les lignes d’action d’une note et les transforme en tâches.';

  @override
  String get assistantMakeCards => 'Créer des fiches depuis une note';

  @override
  String get assistantMakeCardsDesc =>
      'Transforme les lignes « terme : définition » et question/réponse en fiches.';

  @override
  String get assistantSummarize => 'Résumer une note';

  @override
  String get assistantSummarizeDesc =>
      'Nécessite un fournisseur d’IA. La note n’est envoyée qu’après votre confirmation.';

  @override
  String get assistantWorkload => 'Charge de travail';

  @override
  String get assistantWorkloadDesc =>
      'Compare le travail estimé à votre temps libre cette semaine.';

  @override
  String get assistantPlanEmpty => 'Aucune tâche ouverte à planifier. Profitez de ce temps libre.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Temps de concentration disponible aujourd’hui : $time';
  }

  @override
  String get assistantPlanOverflow => 'Ces tâches risquent de ne pas tenir aujourd’hui :';

  @override
  String get assistantChooseNote => 'Choisir une note';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches trouvées',
      one: '1 tâche trouvée',
      zero: 'Aucune tâche trouvée dans cette note',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches trouvées',
      one: '1 fiche trouvée',
      zero: 'Aucune fiche trouvée dans cette note',
    );
    return '$_temp0';
  }

  @override
  String get assistantCreateAll => 'Tout créer';

  @override
  String get assistantChooseDeck => 'Choisir un paquet';

  @override
  String get assistantCreated => 'Créé';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Travail estimé : $estimated. Temps libre : $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'Vous avez prévu plus que le temps disponible. Pensez à décaler les tâches moins prioritaires.';

  @override
  String get assistantWorkloadOk => 'Votre planning tient dans votre temps disponible.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches ouvertes n’ont pas d’estimation.',
      one: '1 tâche ouverte n’a pas d’estimation.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'Fournisseur d’IA';

  @override
  String get assistantProviderOff =>
      'Aucun fournisseur connecté. Les outils sur l’appareil fonctionnent toujours.';

  @override
  String assistantProviderOn(String host) {
    return 'Connecté à $host';
  }

  @override
  String get assistantEndpoint => 'Point de terminaison de l’API (HTTPS)';

  @override
  String get assistantModel => 'Modèle';

  @override
  String get assistantApiKey => 'Clé d’API';

  @override
  String get assistantApiKeyStored => 'Stockée en toute sécurité sur cet appareil';

  @override
  String get assistantHttpsOnly => 'Seuls les points de terminaison HTTPS sont autorisés';

  @override
  String get assistantConsentTitle => 'Envoyer ce contenu à votre fournisseur d’IA ?';

  @override
  String assistantConsentBody(String host) {
    return 'Le texte de la note sélectionnée quittera cet appareil et sera traité par $host. Rien d’autre n’est envoyé.';
  }

  @override
  String get assistantConsentAlways => 'Ne plus demander pour ce fournisseur';

  @override
  String get assistantSend => 'Envoyer';

  @override
  String get assistantUnavailable =>
      'Impossible de joindre le fournisseur d’IA. Réessayez plus tard.';

  @override
  String get assistantDisabledTitle => 'L’assistant est désactivé';

  @override
  String get assistantDisabledMessage =>
      'Activez-le pour utiliser les outils de planification. Aucune donnée ne quitte votre appareil, sauf si vous connectez un fournisseur et confirmez chaque requête.';

  @override
  String get assistantSummaryTitle => 'Résumé';

  @override
  String get assistantRemoveProvider => 'Retirer le fournisseur';

  @override
  String get settingsTitle => 'Réglages';

  @override
  String get settingsGeneral => 'Général';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsLanguageSystem => 'Langue de l’appareil';

  @override
  String get settingsAppearance => 'Apparence';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeSystem => 'Système';

  @override
  String get settingsReduceMotion => 'Réduire les animations';

  @override
  String get settingsReduceMotionDesc => 'Limite les animations et les arrière-plans animés';

  @override
  String get settingsFocus => 'Minuteur de concentration';

  @override
  String get settingsWorkLength => 'Durée de concentration';

  @override
  String get settingsShortBreak => 'Pause courte';

  @override
  String get settingsLongBreak => 'Pause longue';

  @override
  String get settingsLongBreakEvery => 'Pause longue après';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count séances',
      one: '1 séance',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Lancer les pauses automatiquement';

  @override
  String get settingsSound => 'Son de fin';

  @override
  String get settingsDailyFocusTarget => 'Objectif quotidien de concentration';

  @override
  String get settingsWeeklyFocusTarget => 'Objectif hebdomadaire de concentration';

  @override
  String get settingsNotifications => 'Notifications et rappels';

  @override
  String get settingsNotificationsEnable => 'Autoriser les rappels';

  @override
  String get settingsQuietHours => 'Heures calmes';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Les rappels d’habitudes, d’objectifs et de révision sont silencieux de $start à $end';
  }

  @override
  String get settingsReviewReminder => 'Rappel de révision des fiches';

  @override
  String get settingsPermissionDenied =>
      'Les notifications sont bloquées dans les réglages du système.';

  @override
  String get settingsPrivacy => 'Confidentialité et données';

  @override
  String get settingsPrivacyStatement =>
      'Vos données sont stockées uniquement sur cet appareil, et chiffrées. Pas de compte, pas d’analyse d’usage, pas de suivi.';

  @override
  String get settingsBackup => 'Créer une sauvegarde chiffrée';

  @override
  String get settingsBackupDesc => 'Protégée par un mot de passe de votre choix';

  @override
  String get settingsRestore => 'Restaurer une sauvegarde';

  @override
  String get settingsRestoreDesc => 'Remplace toutes les données de cet appareil';

  @override
  String get settingsErase => 'Effacer toutes les données';

  @override
  String get settingsEraseDesc => 'Supprime définitivement tout le contenu de cet appareil';

  @override
  String get settingsEraseConfirmTitle => 'Effacer toutes les données ?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Toutes les tâches, notes, fiches, objectifs, habitudes, événements et séances seront définitivement supprimés. Saisissez $word pour confirmer.';
  }

  @override
  String get settingsEraseWord => 'EFFACER';

  @override
  String get settingsErased => 'Toutes les données ont été effacées';

  @override
  String get backupPassword => 'Mot de passe de la sauvegarde';

  @override
  String get backupPasswordConfirm => 'Confirmer le mot de passe';

  @override
  String backupPasswordHint(int count) {
    return 'Au moins $count caractères. Il ne pourra pas être récupéré en cas de perte.';
  }

  @override
  String get backupPasswordMismatch => 'Les mots de passe ne correspondent pas';

  @override
  String get backupPasswordShort => 'Mot de passe trop court';

  @override
  String get backupCreating => 'Chiffrement de la sauvegarde…';

  @override
  String get backupCreated => 'Sauvegarde prête à être enregistrée';

  @override
  String get backupRestoring => 'Vérification et restauration…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments restaurés',
      one: '1 élément restauré',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Mot de passe incorrect, ou le fichier a été modifié.';

  @override
  String get backupNotABackup => 'Ce fichier n’est pas une sauvegarde Future OS.';

  @override
  String get backupCorrupted => 'Le fichier de sauvegarde est endommagé.';

  @override
  String get backupNewer =>
      'Cette sauvegarde provient d’une version plus récente de l’app. Veuillez d’abord la mettre à jour.';

  @override
  String get backupRestoreConfirmTitle => 'Remplacer toutes les données ?';

  @override
  String get backupRestoreConfirmBody =>
      'Tout le contenu actuel de cet appareil sera remplacé par la sauvegarde. Si la restauration échoue, rien ne change.';

  @override
  String get settingsAbout => 'À propos';

  @override
  String settingsVersion(String version) {
    return 'Version : $version';
  }

  @override
  String get settingsLicenses => 'Licences open source';

  @override
  String get settingsAssistant => 'Assistant personnel';

  @override
  String get settingsAssistantEnable => 'Activer l’assistant';

  @override
  String get settingsDashboard => 'Sections de l’accueil';

  @override
  String get settingsTrash => 'Corbeille';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'La corbeille est vide';

  @override
  String get trashHint => 'Les éléments supprimés restent ici jusqu’à ce que vous les effaciez.';

  @override
  String get trashTasks => 'Tâches';

  @override
  String get trashNotes => 'Notes supprimées';

  @override
  String get onboardWelcomeTitle => 'Bienvenue dans votre espace de travail du futur';

  @override
  String get onboardWelcomeBody =>
      'Tâches, concentration, calendrier, notes, fiches, objectifs et habitudes — réunis, d’une simplicité élégante.';

  @override
  String get onboardPrivateTitle => 'Confidentiel par conception';

  @override
  String get onboardPrivateBody =>
      'Tout reste sur cet appareil, chiffré. Pas de compte. Pas de suivi. Vous gardez le contrôle.';

  @override
  String get onboardLanguageTitle => 'Choisissez votre langue';

  @override
  String get onboardNotifTitle => 'Des rappels en douceur';

  @override
  String get onboardNotifBody =>
      'Autorisez les notifications pour les rappels de tâches et les alertes de concentration. Vous pourrez modifier ce choix à tout moment.';

  @override
  String get onboardGetStarted => 'Commencer';

  @override
  String onboardStep(int current, int total) {
    return 'Étape $current sur $total';
  }

  @override
  String get notifChannelReminders => 'Rappels';

  @override
  String get notifChannelRemindersDesc =>
      'Rappels de tâches, d’événements, d’habitudes et d’objectifs';

  @override
  String get notifChannelFocus => 'Minuteur de concentration';

  @override
  String get notifChannelFocusDesc =>
      'Alertes à la fin d’une séance de concentration ou d’une pause';

  @override
  String get notifTaskTitle => 'Rappel de tâche';

  @override
  String get notifEventTitle => 'Événement à venir';

  @override
  String notifEventBody(String title, String time) {
    return '$title à $time';
  }

  @override
  String get notifFocusDoneTitle => 'Séance de concentration terminée';

  @override
  String get notifFocusDoneBody => 'Beau travail. C’est l’heure de la pause.';

  @override
  String get notifBreakDoneTitle => 'La pause est terminée';

  @override
  String get notifBreakDoneBody => 'Prêt pour la prochaine séance de concentration ?';

  @override
  String get notifHabitTitle => 'Rappel d’habitude';

  @override
  String get notifReviewTitle => 'Vos fiches sont prêtes';

  @override
  String get notifReviewBody => 'Une courte révision entretient votre mémoire.';

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
    return '$value %';
  }

  @override
  String get weekdaysShort => 'L,M,M,J,V,S,D';

  @override
  String get a11yOpenMenu => 'Ouvrir le menu';

  @override
  String a11yProgress(int value) {
    return 'Progression : $value pour cent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priorité : $level';
  }

  @override
  String a11yColor(int index) {
    return 'Couleur $index';
  }

  @override
  String get a11ySelected => 'Sélectionné';

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
