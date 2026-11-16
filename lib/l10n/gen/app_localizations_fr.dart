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
  String get startupErrorTitle => 'Impossible d’ouvrir vos données';

  @override
  String get startupErrorLocked =>
      'La clé de chiffrement des données de cet appareil n’est pas disponible. Rien n’a été supprimé. Redémarrer l’appareil suffit souvent. Si vous avez récemment restauré l’appareil, restaurez plutôt vos données à partir d’une sauvegarde chiffrée.';

  @override
  String get startupErrorCipher =>
      'Cet appareil ne prend pas en charge le stockage chiffré requis par l’app. Rien n’a été enregistré sans chiffrement.';

  @override
  String get startupErrorRetry => 'Réessayer';

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
