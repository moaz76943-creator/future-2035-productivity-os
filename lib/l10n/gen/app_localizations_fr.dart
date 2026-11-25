// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Deep Focus';

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
  String get actionDeleteForever => 'Supprimer définitivement';

  @override
  String get actionEmptyTrash => 'Vider la corbeille';

  @override
  String get actionUnlink => 'Délier';

  @override
  String get actionCustomize => 'Personnaliser';

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
  String get untitled => 'Sans titre';

  @override
  String get noProject => 'Aucun projet';

  @override
  String get greetingMorning => 'Bonjour';

  @override
  String get greetingAfternoon => 'Bon après-midi';

  @override
  String get greetingEvening => 'Bonsoir';

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
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches à réviser',
      one: '$count fiche à réviser',
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
      one: 'Vous avez $count tâche en retard. Replanifiez-la ou terminez-la d’abord.',
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
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days jours de retard',
      one: '$days jour de retard',
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
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'jours',
      one: 'jour',
      zero: 'jours',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'semaines',
      one: 'semaine',
      zero: 'semaines',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'mois',
      one: 'mois',
      zero: 'mois',
    );
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ans',
      one: 'an',
      zero: 'ans',
    );
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fois',
      one: '$count fois',
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
      one: '$minutes minute avant',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours heures avant',
      one: '$hours heure avant',
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
      one: '$days jour restant',
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
      one: 'Chevauche $count événement',
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
      one: '$count mot',
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
      one: '$count fiche',
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
      one: 'Vous avez révisé $count fiche.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Touchez pour afficher la réponse';

  @override
  String get importCardsTitle => 'Importer des fiches';

  @override
  String get importCardsHint =>
      'Collez une carte par ligne (recto et verso séparés par une tabulation ou un point-virgule) ou choisissez un fichier : Excel (.xlsx), CSV, un paquet Anki (.apkg) ou un paquet exporté.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches importées',
      one: '$count fiche importée',
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
      one: '$count min',
    );
    return '$_temp0';
  }

  @override
  String intervalDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
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
      one: 'Série de $count jour',
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
      one: '$count tâche trouvée',
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
      one: '$count fiche trouvée',
      zero: 'Aucune fiche trouvée dans cette note',
    );
    return '$_temp0';
  }

  @override
  String get assistantChooseDeck => 'Choisir un paquet';

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
      one: '$count tâche ouverte n’a pas d’estimation.',
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
      one: '$count séance',
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
      one: '$count élément restauré',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Mot de passe incorrect, ou le fichier a été modifié.';

  @override
  String get backupNotABackup => 'Ce fichier n’est pas une sauvegarde Deep Focus.';

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
  String get analyticsRangeLabel => 'Période';

  @override
  String get analyticsRefresh => 'Actualiser';

  @override
  String analyticsOnTimeDetail(int done, int total) {
    return '$done tâches sur $total à échéance terminées à temps';
  }

  @override
  String analyticsProjectTasks(int done, int total) {
    return '$done tâches sur $total terminées';
  }

  @override
  String get analyticsNoProjects => 'Aucun projet actif';

  @override
  String get analyticsNoFocus => 'Aucune séance de concentration sur cette période';

  @override
  String get analyticsHabitsNone => 'Aucune habitude active';

  @override
  String get analyticsRetentionNote => 'Part des fiches maîtrisées dont vous vous êtes souvenu';

  @override
  String analyticsBarValue(String name, String value) {
    return '$name : $value';
  }

  @override
  String assistantWorkloadRule(String start, String end, String days) {
    return 'Le temps libre compte de $start à $end les jours ouvrés ($days), hors événements horaires. Le travail estimé correspond à la somme des estimations des tâches ouvertes à échéance dans les 7 prochains jours.';
  }

  @override
  String get assistantWorkdaysMonFri => 'Lundi–vendredi';

  @override
  String get assistantWorkdaysSunThu => 'Dimanche–jeudi';

  @override
  String get assistantWorkloadDayOff => 'Jour de repos';

  @override
  String assistantWorkloadDay(String estimated, String free) {
    return '$estimated prévues · $free libres';
  }

  @override
  String assistantPlanRule(String end) {
    return 'Planifié de maintenant jusqu’à $end, en tenant compte des événements du jour. D’abord les tâches en retard, puis par priorité, échéance et estimation.';
  }

  @override
  String assistantTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get assistantScheduleBlocks => 'Planifier en blocs horaires';

  @override
  String get assistantScheduleConfirmTitle => 'Ajouter des blocs horaires à votre calendrier ?';

  @override
  String assistantScheduleConfirmBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blocs horaires seront ajoutés au calendrier d’aujourd’hui.',
      one: '$count bloc horaire sera ajouté au calendrier d’aujourd’hui.',
    );
    return '$_temp0';
  }

  @override
  String assistantScheduled(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blocs horaires ajoutés',
      one: '$count bloc horaire ajouté',
    );
    return '$_temp0';
  }

  @override
  String get assistantAlreadyScheduled => 'Déjà dans votre calendrier';

  @override
  String get assistantPlanTimeline => 'Tient dans la journée';

  @override
  String get assistantNoEstimate => 'Ajoutez une estimation pour les planifier';

  @override
  String get assistantNoNotes => 'Aucune note pour l’instant. Écrivez d’abord une note.';

  @override
  String get assistantNoteEmpty => 'Cette note est vide.';

  @override
  String assistantTasksCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches créées',
      one: '$count tâche créée',
    );
    return '$_temp0';
  }

  @override
  String assistantCardsCreated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches créées',
      one: '$count fiche créée',
    );
    return '$_temp0';
  }

  @override
  String assistantCreateSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Créer $count',
      one: 'Créer $count',
      zero: 'Rien de sélectionné',
    );
    return '$_temp0';
  }

  @override
  String get assistantExtractHint =>
      'Reconnus : cases non cochées « - [ ] » et lignes commençant par TODO: ou To do:';

  @override
  String get assistantCardsHint =>
      'Reconnus : « terme: définition », « terme — définition » et paires de lignes Q:/A:';

  @override
  String get assistantProviderHint =>
      'Utilisez n’importe quel service compatible OpenAI. La clé reste dans le stockage sécurisé de cet appareil et n’est jamais incluse dans les sauvegardes.';

  @override
  String get assistantEndpointHelp => 'Par exemple https://api.example.com/v1';

  @override
  String get assistantApiKeyKeep => 'Laissez vide pour conserver la clé enregistrée';

  @override
  String get assistantApiKeyRequired => 'Saisissez une clé API';

  @override
  String get assistantProviderSaved => 'Fournisseur enregistré';

  @override
  String get assistantProviderRemoved => 'Fournisseur retiré et clé supprimée';

  @override
  String get assistantRemoveProviderConfirm =>
      'Retirer le fournisseur et supprimer la clé API enregistrée sur cet appareil ?';

  @override
  String get assistantAskEveryTime => 'Demander avant chaque requête';

  @override
  String get assistantSummarizing => 'Résumé en cours…';

  @override
  String assistantSummaryNote(String host) {
    return 'Généré par $host. À vérifier avant de vous y fier.';
  }

  @override
  String get assistantCopy => 'Copier';

  @override
  String get assistantCopied => 'Copié';

  @override
  String get assistantConfigure => 'Configurer le fournisseur';

  @override
  String calendarTimeRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String calendarWeekRange(String start, String end) {
    return '$start – $end';
  }

  @override
  String get calendarSeriesMoved => 'Tous les événements de cette série ont été déplacés';

  @override
  String get calendarEventReminder => 'Rappel';

  @override
  String get calendarEventRepeat => 'Répétition';

  @override
  String get calendarEventColor => 'Couleur';

  @override
  String get calendarDefaultColor => 'Utiliser la couleur du type';

  @override
  String get calendarEventLinkedTask => 'Tâche liée';

  @override
  String get calendarEventNoTask => 'Aucune tâche liée';

  @override
  String calendarEventsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count événements',
      one: '$count événement',
      zero: 'Aucun événement',
    );
    return '$_temp0';
  }

  @override
  String calendarTasksDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches à échéance',
      one: '$count tâche à échéance',
      zero: 'aucune tâche à échéance',
    );
    return '$_temp0';
  }

  @override
  String calendarDaySemantics(String date, String events, String tasks) {
    return '$date. $events, $tasks';
  }

  @override
  String get calendarNoEventsHint =>
      'Ajoutez un événement ou un bloc horaire pour planifier cette journée.';

  @override
  String get calendarNow => 'Heure actuelle';

  @override
  String get calendarRecurring => 'Récurrent';

  @override
  String get calendarEventNotFound => 'Cet événement n’existe plus';

  @override
  String get calendarEventLocalTime =>
      'Les heures sont affichées dans le fuseau horaire de votre appareil';

  @override
  String get calendarEventDeleted => 'Événement placé dans la corbeille';

  @override
  String get calendarConflictMarker => 'Chevauche un autre événement';

  @override
  String calendarEventSemantics(String title, String time) {
    return '$title, $time';
  }

  @override
  String get calendarSeriesEditNote =>
      'Les modifications s’appliquent à tous les événements de cette série';

  @override
  String get calendarDragHintSeries => 'Déplacer un événement récurrent déplace toute la série';

  @override
  String calendarTaskDueSemantics(String title) {
    return '$title, tâche à échéance';
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
      other: '$count fiches à réviser',
      one: '$count fiche à réviser',
    );
    return '$_temp0';
  }

  @override
  String flashcardsDueCount(int count) {
    return '$count à réviser';
  }

  @override
  String flashcardsNewCount(int count) {
    return '$count nouvelles';
  }

  @override
  String flashcardsMatureRing(String percent) {
    return 'Fiches maîtrisées : $percent';
  }

  @override
  String get flashcardsValidationNonNegative => 'Saisissez 0 ou plus';

  @override
  String get flashcardsSearchCards => 'Rechercher des fiches';

  @override
  String get flashcardsSearchEmpty => 'Aucune fiche ne correspond à votre recherche';

  @override
  String get flashcardsCardAdded => 'Fiche ajoutée';

  @override
  String flashcardsCardDueOn(String date) {
    return 'À réviser $date';
  }

  @override
  String get flashcardsCopyToClipboard => 'Copier dans le presse-papiers';

  @override
  String get flashcardsExportTitle => 'Exporter le paquet';

  @override
  String get flashcardsDeleteDeck => 'Supprimer le paquet';

  @override
  String flashcardsRatingA11y(String rating, String interval) {
    return '$rating, prochaine révision dans $interval';
  }

  @override
  String flashcardsQuestionA11y(String text) {
    return 'Question : $text';
  }

  @override
  String flashcardsAnswerA11y(String text) {
    return 'Réponse : $text';
  }

  @override
  String get flashcardsShowQuestion => 'Afficher la question';

  @override
  String get flashcardsImportField => 'Fiches à importer';

  @override
  String get flashcardsNothingToStudy => 'Rien à réviser';

  @override
  String flashcardsReadyCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fiches prêtes à réviser',
      one: '$count fiche prête à réviser',
      zero: 'Aucune fiche prête',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsByRating => 'Par évaluation';

  @override
  String get flashcardsDeckNotFound => 'Ce paquet n’est plus disponible.';

  @override
  String get focusSessionDeleted => 'Séance supprimée';

  @override
  String get focusDeleteConfirm =>
      'Supprimer cette séance de votre historique ? Sa durée ne comptera plus dans vos objectifs.';

  @override
  String get focusUnlinkTask => 'Retirer la tâche liée';

  @override
  String get focusNoteHint => 'Sur quoi avez-vous travaillé ?';

  @override
  String get focusTargetCaption => 'Calculé d’après les séances enregistrées';

  @override
  String get focusModeLabel => 'Mode du minuteur';

  @override
  String focusUpNext(String phase) {
    return 'Ensuite : $phase';
  }

  @override
  String get focusStopwatchHint => 'Compte jusqu’à ce que vous arrêtiez.';

  @override
  String get focusOpenHint => 'Sans limite de temps. Arrêtez quand vous avez terminé.';

  @override
  String get focusNotificationsDisabledInApp =>
      'Les rappels sont désactivés dans les réglages. Vous ne serez pas averti à la fin d’une séance.';

  @override
  String focusHistoryItem(String mode, String duration, String when) {
    return '$mode, $duration, $when';
  }

  @override
  String get goalsFilterAll => 'Tous';

  @override
  String get goalsFilterPeriod => 'Filtre par période';

  @override
  String get goalsFilterStatus => 'Filtre par statut';

  @override
  String get goalsEmptyFiltered => 'Aucun objectif ne correspond à ce filtre';

  @override
  String goalsDueOn(String date) {
    return 'Échéance : $date';
  }

  @override
  String get goalsDeadline => 'Échéance (facultatif)';

  @override
  String get goalsNoDeadline => 'Sans échéance';

  @override
  String get goalsSetDeadline => 'Définir une échéance';

  @override
  String get goalsRemoveDeadline => 'Supprimer l’échéance';

  @override
  String get goalsDescription => 'Description (facultatif)';

  @override
  String get goalsTitleLabel => 'Titre';

  @override
  String goalsAmountWithUnit(String amount, String unit) {
    return '$amount $unit';
  }

  @override
  String goalsCardSemantics(String title, String progress, String status) {
    return '$title, $progress, $status';
  }

  @override
  String get goalsReached => 'Objectif atteint';

  @override
  String get goalsLogged => 'Progression enregistrée';

  @override
  String get goalsEntryDeleted => 'Entrée supprimée';

  @override
  String get goalsDeleteEntry => 'Supprimer l’entrée';

  @override
  String get goalsDeleted => 'Objectif supprimé';

  @override
  String get goalsMarkActive => 'Marquer comme actif';

  @override
  String get goalsNotFound => 'Cet objectif n’est plus disponible';

  @override
  String get goalsLinkTask => 'Lier une tâche';

  @override
  String get goalsNoLinkedTasks => 'Aucune tâche liée pour l’instant';

  @override
  String get goalsUnlinkTask => 'Dissocier la tâche';

  @override
  String get goalsTaskOpen => 'Pas encore terminée';

  @override
  String get goalsTaskLinked => 'Tâche liée';

  @override
  String get goalsTaskUnlinked => 'Tâche dissociée';

  @override
  String goalsFromTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches liées terminées',
      one: '$count tâche liée terminée',
    );
    return 'Inclut $_temp0 sur cette période';
  }

  @override
  String get goalsHistoryAllTime =>
      'Les entrées des périodes précédentes sont conservées ici, mais ne comptent que pour leur propre période.';

  @override
  String habitsTodaySummary(int done, int total) {
    return '$done sur $total faites aujourd’hui';
  }

  @override
  String get habitsNothingToday => 'Aucune habitude n’est prévue aujourd’hui';

  @override
  String get habitsDecrease => 'Retirer un pointage';

  @override
  String get habitsResetToday => 'Réinitialiser aujourd’hui';

  @override
  String get habitsCheckInHint => 'Appui long pour ajuster';

  @override
  String get habitsName => 'Nom';

  @override
  String get habitsColor => 'Couleur';

  @override
  String get habitsValidationDays => 'Choisissez au moins un jour';

  @override
  String habitsReminderAt(String time) {
    return 'Tous les jours à $time';
  }

  @override
  String get habitsSetReminder => 'Définir une heure de rappel';

  @override
  String get habitsRemoveReminder => 'Supprimer le rappel';

  @override
  String get habitsReminderNote =>
      'Les rappels apparaissent les jours prévus lorsque les notifications sont autorisées.';

  @override
  String get habitsArchived => 'Habitude archivée';

  @override
  String get habitsNotFound => 'Cette habitude n’est plus disponible';

  @override
  String get habitsLast30 => '30 derniers jours';

  @override
  String get habitsConsistencyNone => 'Pas encore assez de données';

  @override
  String get habitsCalendar => 'Historique des pointages';

  @override
  String get habitsCalendarHint => 'Touchez un jour pour le corriger.';

  @override
  String habitsDaySemantics(String date, int count, int target) {
    return '$date : $count sur $target';
  }

  @override
  String habitsHeatmapSemantics(String percent) {
    return 'Pointages des 90 derniers jours. Régularité : $percent.';
  }

  @override
  String get habitsHeatmapSemanticsEmpty =>
      'Pointages des 90 derniers jours. Pas encore assez de données.';

  @override
  String habitsDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
    );
    return '$_temp0';
  }

  @override
  String get habitsPausedNote => 'Les jours en pause n’affectent pas votre série.';

  @override
  String get habitsListSeparator => ', ';

  @override
  String get habitsArchive => 'Archiver l’habitude';

  @override
  String habitsTimesPerDayValue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count fois par jour',
      one: 'Une fois par jour',
      zero: '$count fois par jour',
    );
    return '$_temp0';
  }

  @override
  String get notesSectionOthers => 'Autres notes';

  @override
  String get notesAllNotebooks => 'Tous les carnets';

  @override
  String get notesNotebookName => 'Nom du carnet';

  @override
  String get notesNotebookColor => 'Couleur';

  @override
  String get notesDeleteNotebook => 'Supprimer le carnet';

  @override
  String get notesDeleteNotebookMessage =>
      'Le carnet est supprimé. Ses notes sont conservées et apparaissent dans Tous les carnets.';

  @override
  String notesTagFilter(String tag) {
    return '#$tag';
  }

  @override
  String get notesEmptyPinned => 'Épinglez les notes importantes pour les garder en haut.';

  @override
  String get notesEmptyFavorites => 'Les notes que vous ajoutez aux favoris apparaissent ici.';

  @override
  String get notesEmptyArchived => 'Les notes archivées apparaissent ici.';

  @override
  String get notesEmptyFiltered => 'Aucune note ne correspond à ces filtres.';

  @override
  String get notesArchivedSnack => 'Note archivée';

  @override
  String get notesUnarchivedSnack => 'Note replacée dans vos notes';

  @override
  String notesChecklistProgress(int done, int total) {
    return '$done sur $total faits';
  }

  @override
  String notesUpdatedAt(String day, String time) {
    return '$day · $time';
  }

  @override
  String get notesFormatting => 'Mise en forme';

  @override
  String get notesWrite => 'Écrire';

  @override
  String get notesPreviewEmpty => 'Rien à prévisualiser pour l’instant.';

  @override
  String notesBacklinksEmpty(String title) {
    return 'Aucune autre note ne renvoie ici pour l’instant. Liez cette note avec [[$title]].';
  }

  @override
  String get notesBacklinksNeedTitle =>
      'Donnez un titre à cette note pour que d’autres notes puissent y renvoyer.';

  @override
  String get notesLinkedTasksEmpty => 'Aucune tâche liée à cette note.';

  @override
  String notesLinkMissing(String title) {
    return 'Il n’existe pas encore de note intitulée « $title ».';
  }

  @override
  String get notesNotFound => 'Cette note n’existe plus.';

  @override
  String notesCheckboxSemantics(String label) {
    return 'Élément de liste : $label';
  }

  @override
  String notesOpenLinkedNote(String title) {
    return 'Ouvrir la note $title';
  }

  @override
  String get notesTagsHint => 'Ajoutez des étiquettes en écrivant #étiquette dans la note.';

  @override
  String get notesTaskDone => 'Terminée';

  @override
  String get notifTimerDoneBody => 'Le temps que vous avez défini est écoulé.';

  @override
  String get onboardingPrivatePointDevice => 'Stocké uniquement sur cet appareil, chiffré';

  @override
  String get onboardingPrivatePointAccount => 'Aucun compte nécessaire';

  @override
  String get onboardingPrivatePointTracking => 'Aucune analyse d’usage, aucun suivi';

  @override
  String get onboardingLanguageBody => 'Vous pouvez la modifier à tout moment dans les réglages.';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get projectsActive => 'Actifs';

  @override
  String get projectNameHint => 'p. ex. Lancement du produit';

  @override
  String get projectGoalHint => 'À quoi ressemble la réussite ?';

  @override
  String get projectNoDeadline => 'Sans échéance';

  @override
  String get projectTasksOpen => 'Tâches ouvertes';

  @override
  String get projectTasksCompleted => 'Tâches terminées';

  @override
  String get projectAddTask => 'Ajouter une tâche au projet';

  @override
  String get projectAddNote => 'Nouvelle note de projet';

  @override
  String get projectLinkedNotes => 'Notes';

  @override
  String get projectNoTasks => 'Aucune tâche dans ce projet pour l’instant';

  @override
  String get projectArchivedBadge => 'Archivé';

  @override
  String get projectDeleted => 'Projet placé dans la corbeille';

  @override
  String get projectDeleteMessage => 'Les tâches restent dans votre liste, sans projet.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent pour cent terminé';
  }

  @override
  String searchResultCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count résultats',
      one: '$count résultat',
    );
    return '$_temp0';
  }

  @override
  String get searchCategoryFilter => 'Filtrer par type';

  @override
  String searchRecentTap(String query) {
    return 'Rechercher à nouveau $query';
  }

  @override
  String get settingsLanguageHint =>
      'Choisissez la langue de toute l’app. Les noms s’affichent dans leur propre langue.';

  @override
  String get settingsThemeHint => 'Clair, sombre ou selon le système';

  @override
  String settingsDecrease(String setting) {
    return 'Diminuer : $setting';
  }

  @override
  String settingsIncrease(String setting) {
    return 'Augmenter : $setting';
  }

  @override
  String get settingsQuietStart => 'Début';

  @override
  String get settingsQuietEnd => 'Fin';

  @override
  String get settingsNotificationsHint =>
      'Cela enregistre votre préférence dans l’app. Le système peut aussi demander une autorisation.';

  @override
  String get settingsDashboardHint =>
      'Faites glisser pour réorganiser. Désactivez les sections inutiles.';

  @override
  String settingsDashboardReorder(String section) {
    return 'Réorganiser $section';
  }

  @override
  String get settingsDashboardReset => 'Rétablir l’ordre par défaut';

  @override
  String get settingsAssistantDesc =>
      'Aide à la planification facultative. Rien ne quitte cet appareil tant que vous ne connectez pas de fournisseur.';

  @override
  String get settingsAssistantSetup => 'Configuration de l’assistant et du fournisseur';

  @override
  String get settingsTrashDesc => 'Restaurer ou supprimer définitivement les éléments retirés';

  @override
  String get settingsEraseFirstBody =>
      'Cette action est irréversible. Pensez à créer d’abord une sauvegarde chiffrée.';

  @override
  String settingsEraseTypeLabel(String word) {
    return 'Saisissez $word';
  }

  @override
  String get settingsEraseFailed => 'Impossible d’effacer les données. Rien n’a été modifié.';

  @override
  String get settingsAboutTagline => 'Un espace de productivité privé, local d’abord.';

  @override
  String get backupShowPassword => 'Afficher le mot de passe';

  @override
  String get backupHidePassword => 'Masquer le mot de passe';

  @override
  String get backupSaved => 'Sauvegarde enregistrée';

  @override
  String get backupFailed => 'La sauvegarde n’a pas pu être créée. Vos données sont inchangées.';

  @override
  String get backupReadFailed => 'Le fichier sélectionné n’a pas pu être lu.';

  @override
  String get backupRestoreFailed => 'Échec de la restauration. Rien n’a été modifié.';

  @override
  String get backupShareSubject => 'Sauvegarde chiffrée Deep Focus';

  @override
  String repeatSummaryEveryN(String unit, int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tous les $count jours',
      one: 'Tous les jours',
      zero: 'Tous les $count jours',
    );
    String _temp1 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Toutes les $count semaines',
      one: 'Toutes les semaines',
      zero: 'Toutes les $count semaines',
    );
    String _temp2 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tous les $count mois',
      one: 'Tous les mois',
      zero: 'Tous les $count mois',
    );
    String _temp3 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tous les $count ans',
      one: 'Tous les ans',
      zero: 'Tous les $count ans',
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
    return 'le $days';
  }

  @override
  String get repeatEndsLabel => 'Fin';

  @override
  String get repeatEndsAfter => 'Après un nombre de fois';

  @override
  String get repeatCountLabel => 'Occurrences';

  @override
  String get reminderNone => 'Aucun rappel';

  @override
  String get reminderCustomTime => 'À une heure précise';

  @override
  String get a11yDecrease => 'Diminuer';

  @override
  String get a11yIncrease => 'Augmenter';

  @override
  String get pickTaskTitle => 'Choisir une tâche';

  @override
  String get pickTaskEmpty => 'Aucune tâche ouverte';

  @override
  String get tasksSearchTooltip => 'Rechercher des tâches';

  @override
  String get tasksSectionOverdue => 'En retard';

  @override
  String get tasksSectionToday => 'Aujourd’hui';

  @override
  String get tasksRecurringSemantics => 'Récurrente';

  @override
  String get tasksFilterPriorityAtLeast => 'Priorité minimale';

  @override
  String get tasksFilterCategory => 'Catégorie';

  @override
  String get tasksFilterAnyCategory => 'Toute catégorie';

  @override
  String get tasksFilterLabel => 'Étiquette';

  @override
  String get tasksFilterAnyLabel => 'Toute étiquette';

  @override
  String get tasksFilterReset => 'Réinitialiser les filtres';

  @override
  String get tasksViewByProject => 'Par projet';

  @override
  String get tasksViewByPriority => 'Par priorité';

  @override
  String get tasksViewByCategory => 'Par catégorie';

  @override
  String get tasksGroupNoCategory => 'Sans catégorie';

  @override
  String taskBlockedBy(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches',
      one: '$count tâche',
    );
    return 'Bloquée par $_temp0';
  }

  @override
  String get taskBlockedWarning =>
      'Cette tâche est bloquée par des tâches non terminées. La terminer quand même ?';

  @override
  String get taskStartFocus => 'Se concentrer sur cette tâche';

  @override
  String get taskRemoveDate => 'Supprimer la date';

  @override
  String get taskAllDay => 'Pas d’heure précise';

  @override
  String get taskSaved => 'Tâche enregistrée';

  @override
  String get taskCreated => 'Tâche créée';

  @override
  String get taskReminderNeedsDue => 'Définissez une échéance pour utiliser les rappels relatifs';

  @override
  String get taskSubtaskDetailsHint =>
      'Enregistrez d’abord la tâche pour ajouter des sous-tâches, éléments de liste, étiquettes et dépendances.';

  @override
  String get taskLabelName => 'Nom de l’étiquette';

  @override
  String get taskMoreDetails => 'Détails';

  @override
  String get taskPlanning => 'Planification';

  @override
  String get taskOrganize => 'Organisation';

  @override
  String get taskBreakdown => 'Décomposition';

  @override
  String get trashDeleteTaskTitle => 'Supprimer définitivement cette tâche ?';

  @override
  String get trashDeleteNoteTitle => 'Supprimer définitivement cette note ?';

  @override
  String get trashDeleteBody => 'Cette action est irréversible.';

  @override
  String get trashEmptyTitle => 'Vider la corbeille ?';

  @override
  String trashEmptyBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments seront supprimés définitivement.',
      one: '$count élément sera supprimé définitivement.',
    );
    return '$_temp0';
  }

  @override
  String get trashRestored => 'Restauré';

  @override
  String get trashPurged => 'Supprimé définitivement';

  @override
  String trashDeletedOn(String date) {
    return 'Supprimé $date';
  }

  @override
  String trashCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments',
      one: '$count élément',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsReadAloud => 'Lire à voix haute';

  @override
  String get flashcardsTtsUnavailable =>
      'La synthèse vocale n’est pas disponible sur cet appareil.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'Aucune voix n’est installée pour cette langue. Ajoutez-en une dans les paramètres de synthèse vocale d’Android.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Étincelle',
      'rocket': 'Fusée',
      'book': 'Livre',
      'work': 'Travail',
      'home': 'Maison',
      'heart': 'Cœur',
      'code': 'Code',
      'palette': 'Palette',
      'fitness': 'Sport',
      'school': 'École',
      'travel': 'Voyage',
      'money': 'Épargne',
      'other': 'Icône',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'Plus de champs';

  @override
  String get cardFieldExample => 'Exemple';

  @override
  String get cardFieldExplanation => 'Explication';

  @override
  String get cardFieldPronunciation => 'Prononciation';

  @override
  String get cardFieldNotes => 'Notes supplémentaires';

  @override
  String get projectMilestones => 'Jalons';

  @override
  String get milestoneAdd => 'Ajouter un jalon';

  @override
  String get milestoneEdit => 'Modifier le jalon';

  @override
  String get milestoneTitleLabel => 'Jalon';

  @override
  String get milestoneNoDate => 'Sans date';

  @override
  String get milestonesEmpty =>
      'Aucun jalon pour l’instant. Ajoutez des étapes datées pour suivre le projet dans le calendrier.';

  @override
  String get milestoneDeleted => 'Jalon supprimé';

  @override
  String milestoneDoneA11y(String title) {
    return 'Marquer le jalon « $title » comme terminé';
  }

  @override
  String calendarMilestone(String project) {
    return 'Jalon · $project';
  }

  @override
  String get tasksViewInbox => 'Boîte de réception';

  @override
  String get tasksViewArchived => 'Archivées';

  @override
  String get tasksEmptyInbox =>
      'Les tâches sans projet ni date arrivent ici. Triez-les quand vous avez une minute.';

  @override
  String get tasksEmptyArchived =>
      'Les tâches archivées sont conservées ici, hors de vos listes et rappels.';

  @override
  String get taskArchivedBadge => 'Archivée';

  @override
  String get taskStatusInProgress => 'En cours';

  @override
  String get taskArchived => 'Tâche archivée';

  @override
  String get taskUnarchived => 'Tâche restaurée depuis les archives';

  @override
  String get focusPlanTitle => 'Plan de séances';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Séances de concentration';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Longue pause après';

  @override
  String get focusPlanSkipLastBreak => 'Sauter la dernière pause';

  @override
  String get focusPlanAutoBreaks => 'Lancer les pauses automatiquement';

  @override
  String get focusPlanAutoFocus => 'Reprendre la concentration après la pause';

  @override
  String get focusPlanSave => 'Enregistrer le plan';

  @override
  String get focusPlanNameHint => 'ex. Révisions';

  @override
  String get focusPlanSaved => 'Plan enregistré';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name : $work min de concentration, $rest min de pause';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Diminuer $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Augmenter $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Séance $current sur $total';
  }

  @override
  String get focusSeriesComplete => 'Série terminée. Bravo !';

  @override
  String get filterAll => 'Toutes';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added importées · $duplicates doublons ignorés · $invalid lignes incomplètes';
  }

  @override
  String get flashcardsSuspend => 'Suspendre la carte';

  @override
  String get flashcardsResume => 'Reprendre la carte';

  @override
  String get flashcardsSuspended => 'Carte suspendue : elle ne sera plus planifiée';

  @override
  String get flashcardsResumed => 'Carte reprise';

  @override
  String get flashcardsSuspendedFilter => 'Suspendues';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown cartes sur $total';
  }

  @override
  String get flashcardsImportFile => 'Depuis un fichier';

  @override
  String get speechTitle => 'Voix';

  @override
  String get speechAppLanguage => 'Langue de l’app';

  @override
  String get speechFrontLanguage => 'Langue du recto';

  @override
  String get speechBackLanguage => 'Langue du verso';

  @override
  String get speechRepeat => 'Répéter chaque lecture';

  @override
  String get speechRate => 'Vitesse';

  @override
  String get speechAutoRead => 'Lire la question automatiquement';

  @override
  String get speechHint =>
      'Utilise les voix installées sur l’appareil, hors ligne. Si une langue n’a pas de voix, vous serez prévenu et aucune autre ne sera utilisée.';

  @override
  String get studyHowTitle => 'Comment voulez-vous réviser ?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Réviser $count cartes',
      one: 'Réviser $count carte',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'S’entraîner sur toutes (planning inchangé)';

  @override
  String get studyPracticeMistakes => 'S’entraîner sur les erreurs récentes';

  @override
  String get studyPracticeHint =>
      'L’entraînement ne modifie pas les échéances. La révision met à jour le planning.';

  @override
  String get studyModeClassic => 'Classique';

  @override
  String get studyModeReverse => 'Inversé';

  @override
  String get studyModeMixed => 'Dans les deux sens';

  @override
  String get studyModeTyped => 'Écrire la réponse';

  @override
  String get studyModeChoice => 'QCM';

  @override
  String get studyModeListening => 'Écoute';

  @override
  String get studyPractice => 'entraînement';

  @override
  String get studyNoMistakes => 'Aucune erreur récente dans ce paquet. Bravo !';

  @override
  String get studyTypeAnswer => 'Écrivez votre réponse';

  @override
  String get studyCheck => 'Vérifier';

  @override
  String get studyKnewIt => 'Je savais';

  @override
  String get studyDidntKnow => 'Je ne savais pas';

  @override
  String studyMistakes(int count) {
    return 'Manquées ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Revoir les cartes manquées';

  @override
  String get studyCorrect => 'Bonne réponse';

  @override
  String get studyAlmost => 'Presque : vérifiez l’orthographe';

  @override
  String get studyWrong => 'Pas tout à fait';

  @override
  String get studyShowText => 'Afficher le texte';

  @override
  String get flashcardsImportFileFailed =>
      'Impossible d’ouvrir le fichier. Vous pouvez coller son contenu.';

  @override
  String get studyNoMatchingCards => 'Aucune carte ne correspond pour l’instant.';

  @override
  String get studyPracticeNew => 'Nouvelles seulement';

  @override
  String get studyPracticeHard => 'Cartes difficiles';

  @override
  String get studyPracticeFavorites => 'Favoris';

  @override
  String get studySessionSize => 'Cartes par séance';

  @override
  String get studySessionAll => 'Toutes';

  @override
  String get studyOrder => 'Ordre';

  @override
  String get studyOrderDue => 'Plus en retard d’abord';

  @override
  String get studyOrderRandom => 'Aléatoire';

  @override
  String get studyOrderHardest => 'Plus difficiles d’abord';

  @override
  String get flashcardsHard => 'Difficile';

  @override
  String get flashcardsFavorites => 'Favoris';

  @override
  String get flashcardsFavorite => 'Ajouter aux favoris';

  @override
  String get flashcardsUnfavorite => 'Retirer des favoris';

  @override
  String get flashcardsDuplicate => 'Dupliquer';

  @override
  String get flashcardsMoveTo => 'Déplacer vers un paquet';

  @override
  String get flashcardsNoOtherDeck => 'Créez d’abord un autre paquet.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartes déplacées',
      one: 'Carte déplacée',
      zero: '$count cartes déplacées',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Ajouter une étiquette';

  @override
  String get flashcardsTagHint => 'ex. verbes';

  @override
  String flashcardsSelected(int count) {
    return '$count sélectionnées';
  }

  @override
  String get flashcardsSelectAll => 'Tout sélectionner';

  @override
  String flashcardsSelectCard(String front) {
    return 'Sélectionner $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Rappel $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Doublon possible';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'Ce paquet contient déjà « $front » → « $back ». Enregistrer quand même ?';
  }

  @override
  String get flashcardsSaveAnyway => 'Enregistrer quand même';

  @override
  String get flashcardsStats => 'Statistiques';

  @override
  String get flashcardsStatTotal => 'Cartes';

  @override
  String get flashcardsStatLearning => 'En apprentissage';

  @override
  String get flashcardsStatMatureCaption => 'Retenues 21 jours et plus';

  @override
  String get flashcardsStatReviewsToday => 'Révisions aujourd’hui';

  @override
  String get flashcardsStatCorrect => 'Bonnes réponses';

  @override
  String flashcardsStatLastDays(int days) {
    return '$days derniers jours';
  }

  @override
  String get flashcardsStatForget => 'Taux d’oubli';

  @override
  String get flashcardsStatForgetCaption => '« À revoir » sur cartes acquises';

  @override
  String get flashcardsStatRecall => 'Rappel actuel';

  @override
  String get flashcardsStatRecallCaption => 'Estimation FSRS, cartes révisées';

  @override
  String flashcardsStatActivity(int count) {
    return 'Révisions par jour · $count au total';
  }

  @override
  String get flashcardsStatHistory => 'Dernières réponses';

  @override
  String get flashcardsStatNoHistory =>
      'Pas encore de révisions. Étudiez le paquet pour voir vos progrès.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Lire $field à voix haute';
  }

  @override
  String get speechVoice => 'Voix';

  @override
  String get speechVoiceDefault => 'Automatique';

  @override
  String get speechVoiceOnline => 'nécessite Internet';

  @override
  String get speechTest => 'Tester la voix';

  @override
  String get importNext => 'Aperçu';

  @override
  String get importPreviewTitle => 'Associer les colonnes aux champs';

  @override
  String get importIgnoreColumn => 'Ignorer';

  @override
  String importColumn(int n) {
    return 'Colonne $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready cartes prêtes · $invalid lignes incomplètes ignorées';
  }

  @override
  String get importNeedFrontBack => 'Choisissez les colonnes du recto et du verso.';

  @override
  String get actionMoveUp => 'Monter';

  @override
  String get actionMoveDown => 'Descendre';

  @override
  String get flashcardsLayoutTitle => 'Mise en page de la carte';

  @override
  String get flashcardsLayoutHint =>
      'Renommez, masquez ou réordonnez les champs de ce paquet. Le contenu n’est jamais modifié.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Afficher $field pendant l’étude';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Révéler la réponse étape par étape';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'Le verso d’abord ; chaque champ s’ouvre d’un toucher.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Afficher $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'Ce fichier dépasse $mb Mo.';
  }

  @override
  String get flashcardsImage => 'Image';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Ajouter une image';

  @override
  String get flashcardsAddAudio => 'Ajouter un audio';

  @override
  String get flashcardsPlayAudio => 'Lire l’enregistrement';

  @override
  String get flashcardsAudioUnavailable => 'Impossible de lire cet enregistrement ici.';

  @override
  String get flashcardsCustomFields => 'Vos champs';

  @override
  String get flashcardsTemplates => 'Modèles';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Champ $n';
  }

  @override
  String get flashcardsAddField => 'Ajouter un champ';

  @override
  String get flashcardsFieldName => 'Nom du champ';

  @override
  String get flashcardsFieldLangDefault => 'Langue du côté';

  @override
  String get flashcardsTemplateConfirm =>
      'Le modèle définit l’affichage et ajoute ses champs. Vos cartes et champs restent intacts.';

  @override
  String get flashcardsApplyTemplate => 'Appliquer';

  @override
  String get templateVocabulary => 'Vocabulaire';

  @override
  String get templateTwoTranslations => 'Mot avec deux traductions';

  @override
  String get templateQuestionAnswer => 'Question-réponse';

  @override
  String get templateDefinition => 'Terme et définition';

  @override
  String get templateGrammar => 'Règle de grammaire';

  @override
  String get templateFieldPlural => 'Pluriel';

  @override
  String get templateFieldTranslation2 => 'Deuxième traduction';

  @override
  String get templateFieldSynonyms => 'Synonymes';

  @override
  String get templateFieldRule => 'Règle';

  @override
  String get deckCategory => 'Niveau ou thème';

  @override
  String get deckCategoryHint => 'ex. A1, Médecine';

  @override
  String get flashcardsSearchAll => 'Rechercher toutes les cartes';

  @override
  String get flashcardsSearchAllHint => 'Mot, traduction, exemple, note, étiquette…';

  @override
  String get flashcardsAllDecks => 'Tous les paquets';

  @override
  String get flashcardsAllLanguages => 'Toutes les langues';

  @override
  String get flashcardsLangUnset => 'Langue non définie';

  @override
  String get flashcardsLevelUnset => 'Sans niveau ni thème';

  @override
  String get flashcardsByLanguage => 'Progrès par langue';

  @override
  String get flashcardsByLevel => 'Progrès par niveau ou thème';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks paquets · $cards cartes · $mature acquises · $due à revoir · $correct justes (30 j)';
  }

  @override
  String get flashcardsRecord => 'Enregistrer';

  @override
  String get flashcardsRecording => 'Enregistrement…';

  @override
  String get flashcardsRecordStop => 'Arrêter et garder';

  @override
  String get flashcardsMicDenied =>
      'L’accès au micro est désactivé. Autorisez-le dans les réglages du système pour enregistrer.';

  @override
  String get flashcardsRecordFailed => 'L’enregistrement n’est pas disponible sur cet appareil.';

  @override
  String get soundsTitle => 'Sons';

  @override
  String get soundsNature => 'Nature';

  @override
  String get soundsNoise => 'Bruit de concentration';

  @override
  String get soundRain => 'Pluie';

  @override
  String get soundStorm => 'Orage';

  @override
  String get soundRiver => 'Rivière';

  @override
  String get soundOcean => 'Vagues';

  @override
  String get soundFire => 'Feu de camp';

  @override
  String get soundForest => 'Oiseaux de la forêt';

  @override
  String get soundNight => 'Nuit d’été';

  @override
  String get soundWhite => 'Bruit blanc';

  @override
  String get soundPink => 'Bruit rose';

  @override
  String get soundBrown => 'Bruit brun';

  @override
  String get soundsPlay => 'Lire';

  @override
  String get soundsSleep => 'Minuterie de sommeil';

  @override
  String get soundsSleepOff => 'Désactivé';

  @override
  String soundsSleepAt(String time) {
    return 'S’arrête à $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Jusqu’à $count sons à la fois.';
  }

  @override
  String get soundsHint =>
      'Touchez un son pour commencer. Mélangez-en plusieurs et réglez chaque volume.';

  @override
  String get soundsMixer => 'Mélange';

  @override
  String soundsVolumeOf(String name) {
    return 'Volume : $name';
  }

  @override
  String get soundsChannel => 'Sons de la nature';

  @override
  String get settingsEndTone => 'Son de fin du minuteur';

  @override
  String get toneGentle => 'Bips doux';

  @override
  String get toneBeeps => 'Bips';

  @override
  String get toneWood => 'Coups sur bois';

  @override
  String get toneBird => 'Chant d’oiseau';

  @override
  String get toneStream => 'Ruisseau';

  @override
  String get toneSystem => 'Son du téléphone';

  @override
  String get speechOnPhone => 'Sur ce téléphone';

  @override
  String get speechAllLanguages => 'Toutes les langues';

  @override
  String get speechSearchLanguage => 'Rechercher une langue';

  @override
  String get speechGetVoices => 'Télécharger d’autres voix';

  @override
  String get speechGetVoicesHint =>
      'Les langues sans voix peuvent être téléchargées dans les réglages de synthèse vocale du téléphone.';

  @override
  String get speechSettingsFailed => 'Impossible d’ouvrir les réglages vocaux de ce téléphone.';

  @override
  String get speechVoiceMissing => 'Aucune voix installée';

  @override
  String get speechPause => 'Pause entre les répétitions';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Lire l’exemple avec la réponse';

  @override
  String get flashListen => 'Écouter';

  @override
  String get flashListenNext => 'Carte suivante';

  @override
  String get flashListenEmpty => 'Aucune carte à écouter.';

  @override
  String get flashViewTable => 'Tableau';

  @override
  String get flashViewCards => 'Cartes';

  @override
  String get flashSwapSides => 'Inverser les colonnes';

  @override
  String get flashSort => 'Trier';

  @override
  String get flashSortNewest => 'Plus récentes d’abord';

  @override
  String get flashSortAlpha => 'De A à Z';

  @override
  String get flashSortDue => 'À réviser d’abord';

  @override
  String get flashSortHard => 'Plus difficiles d’abord';

  @override
  String get flashPasteCards => 'Coller des cartes';

  @override
  String get flashClipboardEmpty => 'Le presse-papiers ne contient pas de texte.';

  @override
  String get flashMenuAdd => 'Ajouter des cartes';

  @override
  String get flashMenuDeck => 'Paquet';

  @override
  String get flashToday => 'Aujourd’hui';

  @override
  String get flashStudyNow => 'Étudier';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartes répondues',
      one: '$count carte répondue',
      zero: 'Aucune carte répondue',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Pluie en forêt';

  @override
  String get autoBackupTitle => 'Sauvegardes automatiques';

  @override
  String get autoBackupDesc => 'Chaque jour sur ce téléphone ; les 7 dernières sont gardées';

  @override
  String get autoBackupHint =>
      'Ces copies restent sur ce téléphone et sont supprimées si l’app est désinstallée. Pour changer de téléphone, utilisez « Sauvegarder » pour enregistrer un fichier.';

  @override
  String get autoBackupNone =>
      'Pas encore de sauvegarde automatique. La première est faite aujourd’hui.';

  @override
  String get autoBackupRestore => 'Restaurer';

  @override
  String autoBackupConfirm(String date) {
    return 'Remplacer toutes les données actuelles par la sauvegarde du $date ?';
  }

  @override
  String get autoBackupRestored => 'Restauré.';

  @override
  String get errorLogTitle => 'Journal des erreurs';

  @override
  String get errorLogHint =>
      'En cas de problème, il est noté ici : seulement le type d’erreur et l’endroit dans le code, jamais votre contenu. Partagez-le pour aider à le corriger.';

  @override
  String get errorLogEmpty => 'Aucune erreur enregistrée.';

  @override
  String get errorLogClear => 'Effacer';

  @override
  String get soundsWithFocus => 'Jouer pendant les sessions de concentration';

  @override
  String get soundsWithFocusHint =>
      'Votre mélange démarre avec la session et se met en pause aux pauses.';

  @override
  String get soundsSavedMixes => 'Mélanges enregistrés';

  @override
  String get soundsSaveMix => 'Enregistrer ce mélange';

  @override
  String get soundsMixNameHint => 'Nom, p. ex. Bibliothèque pluvieuse';

  @override
  String soundsDeleteMix(String name) {
    return 'Supprimer le mélange « $name » ?';
  }

  @override
  String get settingsReviewReminderHint =>
      'Une fois par jour, seulement s’il y a des cartes à revoir';

  @override
  String get settingsReviewTime => 'Heure du rappel';

  @override
  String get shortcutFocus => 'Concentration';

  @override
  String get shortcutNewTask => 'Nouvelle tâche';

  @override
  String get shortcutReview => 'Réviser les cartes';

  @override
  String get shortcutSounds => 'Sons de la nature';

  @override
  String get myDayTitle => 'Commencer ma journée';

  @override
  String get myDayHint => 'Votre journée en un coup d’œil, puis un geste pour vous concentrer';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tâches aujourd’hui',
      one: '$count tâche aujourd’hui',
      zero: 'Aucune tâche aujourd’hui',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'Plus d’événements aujourd’hui';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Ensuite : $title à $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count habitudes restantes',
      one: '$count habitude restante',
      zero: 'Toutes les habitudes faites',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Commencer par une séance de concentration';

  @override
  String get hijriMonth1 => 'Mouharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabia al-Awal';

  @override
  String get hijriMonth4 => 'Rabia ath-Thani';

  @override
  String get hijriMonth5 => 'Joumada al-Oula';

  @override
  String get hijriMonth6 => 'Joumada ath-Thania';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Chaabane';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Chawwal';

  @override
  String get hijriMonth11 => 'Dhou al-Qi’da';

  @override
  String get hijriMonth12 => 'Dhou al-Hijja';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year H';
  }

  @override
  String get settingsHijri => 'Dates de l’Hégire';

  @override
  String get settingsHijriHint => 'Affichées dans le calendrier et l’accueil (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count jours',
      one: '$count jour',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done sur $goal cartes aujourd’hui';
  }

  @override
  String get studyGoalReached => 'Objectif du jour atteint. Bravo !';

  @override
  String get studyWeekTitle => 'Votre semaine';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartes en 7 jours',
      one: '$count carte en 7 jours',
      zero: 'Aucune carte en 7 jours',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration de concentration en 7 jours';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Série : $current · Record : $best';
  }

  @override
  String get studyGoalTitle => 'Objectif quotidien (cartes)';

  @override
  String get studyGoalOff => 'Aucun';

  @override
  String get focusDndTitle => 'Ne pas déranger pendant la concentration';

  @override
  String get focusDndHint => 'S’active à chaque séance et se désactive à la pause';

  @override
  String get focusDndNeedsAccess => 'Autorisez l’accès dans les réglages du téléphone';

  @override
  String get voiceInput => 'Dicter';

  @override
  String get voiceInputPrompt => 'Parlez maintenant';

  @override
  String get voiceInputUnavailable =>
      'La dictée n’est pas disponible sur ce téléphone. Installez ou activez un service vocal (par exemple celui de Google).';

  @override
  String get prayerFajr => 'Fajr (aube)';

  @override
  String get prayerSunrise => 'Lever du soleil';

  @override
  String get prayerDhuhr => 'Dhuhr (midi)';

  @override
  String get prayerAsr => 'Asr (après-midi)';

  @override
  String get prayerMaghrib => 'Maghrib (coucher)';

  @override
  String get prayerIsha => 'Icha (nuit)';

  @override
  String get prayerMethodMwl => 'Ligue islamique mondiale';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura (La Mecque)';

  @override
  String get prayerMethodEgypt => 'Autorité générale égyptienne';

  @override
  String get prayerMethodJordan => 'Jordanie (Awqaf)';

  @override
  String get prayerMethodKarachi => 'Université des sciences islamiques, Karachi';

  @override
  String get prayerMethodIsna => 'Société islamique d’Amérique du Nord';

  @override
  String get prayerMethodGulf => 'Région du Golfe';

  @override
  String get prayerMethodKuwait => 'Koweït';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Turquie (Diyanet)';

  @override
  String get prayerMethodSingapore => 'Singapour, Malaisie, Indonésie';

  @override
  String get prayerMethodFrance => 'France (12°)';

  @override
  String get prayerMethodRussia => 'Russie (Administration spirituelle)';

  @override
  String prayerNotifTitle(String name) {
    return 'C’est l’heure de $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Heure de la prière · $time';
  }

  @override
  String get prayerTitle => 'Horaires de prière';

  @override
  String get prayerOffHint =>
      'Choisissez votre ville pour voir les horaires. Ils sont calculés sur le téléphone, sans accès à la position.';

  @override
  String get prayerChooseCity => 'Choisir la ville';

  @override
  String get prayerCity => 'Ville';

  @override
  String get prayerCitySearch => 'Rechercher une ville';

  @override
  String get prayerMethod => 'Méthode de calcul';

  @override
  String get prayerHanafiAsr => 'Asr hanafite (plus tard)';

  @override
  String get prayerReminders => 'Notifier à chaque prière';

  @override
  String get prayerPauseFocus => 'Mettre la concentration en pause à la prière';

  @override
  String get prayerPauseFocusHint => 'La séance se met en pause ; reprenez ensuite';

  @override
  String get prayerTurnOff => 'Désactiver les horaires';

  @override
  String get prayerAccuracyNote =>
      'Les horaires calculés peuvent différer de quelques minutes de votre mosquée.';

  @override
  String prayerNext(String name, String time) {
    return '$name à $time';
  }

  @override
  String get importAnkiNewFormat =>
      'Ce fichier Anki utilise le format le plus récent. Dans Anki, exportez à nouveau avec « Compatible avec les anciennes versions d’Anki » activé.';

  @override
  String get importTemplate => 'Modèle de tableur';

  @override
  String get importTemplateFront => 'pomme';

  @override
  String get importTemplateBack => 'un fruit rond';

  @override
  String get importTemplateExample => 'Je mange une pomme chaque jour.';

  @override
  String get importTemplateTag => 'nourriture';

  @override
  String get starterTitle => 'Paquets de départ';

  @override
  String get starterHint =>
      'Ajoutez-en un pour réviser tout de suite. Vous pourrez le modifier ou le supprimer.';

  @override
  String get starterAdd => 'Ajouter';

  @override
  String get starterWords => 'Mots anglais courants (arabe)';

  @override
  String get starterCapitals => 'Capitales du monde';

  @override
  String get starterElements => 'Éléments chimiques';

  @override
  String get settingsAccent => 'Couleur d’accent';

  @override
  String get accentViolet => 'Violet foncé';

  @override
  String get accentBlue => 'Bleu';

  @override
  String get accentTeal => 'Bleu canard';

  @override
  String get accentGreen => 'Vert';

  @override
  String get accentRose => 'Rose vif';

  @override
  String get accentAmber => 'Ambre';

  @override
  String get settingsFlashTextSize => 'Taille du texte des cartes';

  @override
  String get settingsFlashTextSample => 'Exemple';

  @override
  String get widgetStartFocus => 'Touchez pour vous concentrer';

  @override
  String widgetFocusUntil(String time) {
    return 'Concentration jusqu’à $time';
  }

  @override
  String get widgetNoCardsDue => 'Cartes : à jour';

  @override
  String get faqMyDayQ => 'À quoi sert « Commencer ma journée » ?';

  @override
  String get faqMyDayA =>
      'Une fois par jour, l’accueil la propose : tâches du jour, prochain événement, habitudes restantes et cartes à revoir, puis une séance de concentration en un geste. Appuyez longuement sur l’icône de l’app pour des raccourcis, ou ajoutez le widget à l’écran d’accueil.';

  @override
  String get faqTasksQ => 'Comment ajouter une tâche avec un rappel ?';

  @override
  String get faqTasksA =>
      'Touchez Nouvelle tâche sur l’accueil ou + dans Tâches. Saisissez le titre ou dictez-le au micro, puis choisissez la date, l’heure et le rappel. Les tâches en retard s’affichent en premier.';

  @override
  String get faqFocusQ => 'Comment fonctionne le minuteur de concentration ?';

  @override
  String get faqFocusA =>
      'Choisissez Pomodoro, un compte à rebours ou un temps libre et touchez Démarrer ; les pauses peuvent s’enchaîner. Dans Réglages, choisissez le son de fin, activez Ne pas déranger pendant la concentration et lancez vos sons de la nature à chaque séance.';

  @override
  String get faqSoundsQ => 'Puis-je mélanger des sons de la nature ?';

  @override
  String get faqSoundsA =>
      'Activez jusqu’à six enregistrements réels, réglez chaque volume et enregistrez le mélange sous un nom. Ils continuent en arrière-plan et une minuterie peut les arrêter. Aucune musique n’est utilisée.';

  @override
  String get faqCalendarQ => 'Le calendrier affiche-t-il les dates de l’Hégire ?';

  @override
  String get faqCalendarA =>
      'Oui. Les dates de l’Hégire (Umm al-Qura) s’affichent d’office en arabe et peuvent être activées dans Réglages pour toute langue. Événements, tâches datées et jalons de projets apparaissent ensemble.';

  @override
  String get faqFlashcardsQ => 'Comment la révision choisit-elle les cartes ?';

  @override
  String get faqFlashcardsA =>
      'Les cartes bien sues reviennent après des intervalles plus longs, celles manquées reviennent vite (répétition espacée). Notez chaque réponse : À revoir, Difficile, Bien ou Facile. Fixez un objectif quotidien et gardez votre série sur la carte Aujourd’hui. Fixez une date d’examen dans un paquet pour voir les jours restants et le nombre de nouvelles cartes par jour. Triez par « Mon ordre » pour faire glisser les cartes, touchez le haut-parleur de chaque face pour l’écouter, et réglez vitesse et répétitions dans le menu Voix.';

  @override
  String get faqImportQ => 'Puis-je importer des cartes d’Anki ou d’Excel ?';

  @override
  String get faqImportA =>
      'Oui. Dans un paquet, choisissez Importer puis un fichier : Anki (.apkg), Excel (.xlsx) ou CSV, et associez les colonnes. Utilisez « Modèle de tableur » pour écrire des cartes sur ordinateur. Les images et sons des fichiers Anki ne sont pas importés.';

  @override
  String get faqNotesQ => 'Que permettent les notes ?';

  @override
  String get faqNotesA =>
      'Écrivez librement avec listes et mise en forme, épinglez ou mettez en favori les notes importantes, ajoutez des étiquettes et liez des notes à des tâches. Le bouton micro permet de dicter. Une nouvelle note peut partir d’un modèle (cours, résumé de livre, journal, plan de la semaine), et le bouton image ajoute des photos.';

  @override
  String get faqHabitsQ => 'Comment les séries d’habitudes sont-elles comptées ?';

  @override
  String get faqHabitsA =>
      'Un jour compte quand vous atteignez l’objectif de l’habitude un jour prévu. Mettre une habitude en pause protège la série. Chaque habitude peut avoir son rappel.';

  @override
  String get faqGoalsQ => 'Comment les objectifs suivent-ils la progression ?';

  @override
  String get faqGoalsA =>
      'Donnez à l’objectif une quantité et une unité, puis notez vos progrès. Sa carte montre où vous en êtes et ce qu’il reste avant l’échéance.';

  @override
  String get faqProjectsQ => 'À quoi servent les projets ?';

  @override
  String get faqProjectsA =>
      'Regroupez des tâches dans un projet, ajoutez des jalons datés et suivez la progression. Les jalons apparaissent aussi dans le calendrier.';

  @override
  String get faqInsightsQ => 'Que montrent les statistiques ?';

  @override
  String get faqInsightsA =>
      'Votre temps de concentration, vos tâches terminées et votre étude par jour et par semaine, avec des suggestions. Tout est calculé sur votre téléphone.';

  @override
  String get faqSpacesQ => 'Où sont toutes les sections ?';

  @override
  String get faqSpacesA =>
      'Espaces rassemble toutes les parties de l’app (notes, paquets, habitudes, objectifs, projets, sons…) pour garder la barre principale simple.';

  @override
  String get faqBackupQ => 'Comment mes données sont-elles sauvegardées ?';

  @override
  String get faqBackupA =>
      'Chaque jour, l’app garde discrètement une copie chiffrée sur ce téléphone et conserve les 7 dernières. Dans Réglages, vous pouvez aussi exporter une sauvegarde protégée par mot de passe et la restaurer sur un autre téléphone.';

  @override
  String get faqPrayerQ => 'Comment fonctionnent les horaires de prière ?';

  @override
  String get faqPrayerA =>
      'Choisissez votre ville dans Réglages → Horaires de prière. Ils sont calculés sur le téléphone selon la méthode locale ; vous pouvez changer la méthode et l’école pour Asr. Une notification peut arriver à chaque prière et la séance en cours se met en pause.';

  @override
  String get faqPrivacyQ => 'Où sont stockées mes données ?';

  @override
  String get faqPrivacyA =>
      'Uniquement sur votre téléphone, dans une base chiffrée. Pas de compte, pas de pistage. Internet n’est utilisé que par les fonctions que vous activez, comme l’assistant facultatif.';

  @override
  String get faqAssistantQ => 'Qu’est-ce que l’assistant ?';

  @override
  String get faqAssistantA =>
      'Un assistant facultatif que vous reliez à votre propre service d’IA dans Réglages. Il est désactivé par défaut et demande avant d’envoyer le texte d’une note.';

  @override
  String get tourPlanTitle => 'Planifiez votre journée';

  @override
  String get tourPlanBody =>
      'Tâches, calendrier et habitudes au même endroit, au calme. Commencez chaque matin par « Commencer ma journée ».';

  @override
  String get tourFocusTitle => 'Concentrez-vous vraiment';

  @override
  String get tourFocusBody =>
      'Des séances minutées avec de vrais sons de la nature, Ne pas déranger et des sons de fin doux.';

  @override
  String get tourLearnTitle => 'Apprenez durablement';

  @override
  String get tourLearnBody =>
      'Des cartes à répétition espacée, la voix dans de nombreuses langues et l’import depuis Anki ou Excel.';

  @override
  String get helpTitle => 'Aide et questions';

  @override
  String get helpOpen => 'Ouvrir';

  @override
  String get helpTour => 'Voir la visite';

  @override
  String get tourNext => 'Suivant';

  @override
  String get tourDone => 'C’est parti';

  @override
  String get transferColTitle => 'Titre';

  @override
  String get transferColNotes => 'Remarques';

  @override
  String get transferColBody => 'Contenu';

  @override
  String get transferColDue => 'Échéance';

  @override
  String get transferColPriority => 'Priorité (0-3)';

  @override
  String get transferColDone => 'Terminée';

  @override
  String get transferColProject => 'Projet';

  @override
  String get transferColCategory => 'Catégorie';

  @override
  String get transferTitle => 'Importer et exporter';

  @override
  String get transferSaveAs => 'Enregistrer en';

  @override
  String get transferImport => 'Importer un fichier';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV ou un tableau Word. Colonnes : titre, échéance (2026-12-31), priorité 0-3, terminée, projet, remarques. Les tâches déjà présentes sont ignorées.';

  @override
  String get transferImportNotesHint =>
      'Les fichiers Word, Markdown ou texte deviennent une note. Excel ou CSV : une note par ligne (titre, contenu).';

  @override
  String get transferSaved => 'Fichier enregistré';

  @override
  String get transferFailed => 'Le fichier n’a pas pu être créé. Rien n’a changé.';

  @override
  String get transferUnsupported =>
      'Ce fichier ne peut pas être lu ici. Utilisez Excel, CSV, Word, Markdown ou du texte.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added ajoutés',
      one: '$added ajouté',
      zero: 'Rien de nouveau',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Texte';

  @override
  String get transferAllNotes => 'Toutes les notes';

  @override
  String get transferThisNote => 'Cette note';

  @override
  String get transferDeckFormats => 'Enregistrer en Excel, Word ou PDF';

  @override
  String get faqFilesQ => 'Puis-je utiliser des fichiers Excel, Word ou PDF ?';

  @override
  String get faqFilesA =>
      'Oui. Tâches et Notes ont en haut un bouton importer/exporter (deux flèches), et chaque paquet l’a dans son menu. Enregistrez en Excel, CSV, Word ou PDF, ou importez des fichiers Excel, CSV, Word, Markdown ou texte. Les colonnes peuvent être dans n’importe quelle langue de l’app, et vos fichiers se réimportent toujours.';

  @override
  String get tplLecture => 'Cours';

  @override
  String get tplBook => 'Résumé de livre';

  @override
  String get tplJournal => 'Journal intime';

  @override
  String get tplWeek => 'Plan de la semaine';

  @override
  String get tplLectureBody => '## Points clés\n- \n\n## Questions\n- [ ] \n\n## Résumé\n';

  @override
  String get tplBookBody =>
      '## Idée principale\n\n## Ce que j’ai appris\n- \n\n## Citations\n> \n\n## À appliquer\n- [ ] \n';

  @override
  String get tplJournalBody =>
      '## Reconnaissant pour\n- \n\n## Objectif du jour\n- [ ] \n\n## Notes\n';

  @override
  String get tplWeekBody =>
      '## Objectifs de la semaine\n- [ ] \n\n### Samedi\n- [ ] \n\n### Dimanche\n- [ ] \n\n### Lundi\n- [ ] \n\n### Mardi\n- [ ] \n\n### Mercredi\n- [ ] \n\n### Jeudi\n- [ ] \n\n### Vendredi\n- [ ] \n';

  @override
  String get tplHint => 'Partir d’un modèle';

  @override
  String get noteImage => 'Image';

  @override
  String get noteAddImage => 'Ajouter une image';

  @override
  String get noteImageUnreadable => 'Ce fichier n’est pas une image lisible par l’app.';

  @override
  String get noteImageTooLarge => 'Cette image est trop grande.';

  @override
  String get examSet => 'Définir la date d’examen';

  @override
  String get examDate => 'Date de l’examen';

  @override
  String get examToday => 'Examen aujourd’hui. Bonne chance !';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Examen dans $count jours',
      one: 'Examen demain',
      zero: 'Examen dans $count jours',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'apprenez $count nouvelles cartes par jour',
      one: 'apprenez $count nouvelle carte par jour',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'toutes apprises, continuez à réviser';

  @override
  String examRaiseLimit(int count) {
    return 'Afficher $count nouvelles cartes par jour';
  }

  @override
  String get backupDriveHint =>
      'Pour garder une copie en ligne, choisissez Google Drive (ou une autre app cloud) dans l’écran d’enregistrement qui s’ouvre ensuite.';

  @override
  String get flashShareDeck => 'Partager le paquet avec un ami';

  @override
  String get flashSortManual => 'Mon ordre (glisser)';

  @override
  String get flashReorderHint =>
      'Maintenez la poignée et faites glisser une carte pour la déplacer.';

  @override
  String get flashReorderNeedsAll =>
      'Effacez la recherche et les filtres pour déplacer les cartes.';

  @override
  String get flashDragHandle => 'Glisser pour déplacer';

  @override
  String get reportTitle => 'Rapport mensuel';

  @override
  String get reportFocus => 'Temps de concentration';

  @override
  String reportSessions(int count) {
    return '$count séances';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Meilleur jour : $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count jours actifs';
  }

  @override
  String get reportCards => 'Cartes révisées';

  @override
  String reportCardsKnown(String percent) {
    return '$percent retenues';
  }

  @override
  String get reportTasks => 'Tâches terminées';

  @override
  String get reportHabits => 'Validations d\'habitudes';

  @override
  String get reportEmpty => 'Rien d\'enregistré ce mois-ci pour l\'instant.';

  @override
  String get reportSave => 'Enregistrer en PDF ou Word';

  @override
  String get reportPrevMonth => 'Mois précédent';

  @override
  String get reportNextMonth => 'Mois suivant';

  @override
  String get careTitle => 'Entretien du téléphone et des données';

  @override
  String get storageTitle => 'Stockage';

  @override
  String get storageSubtitle => 'Ce qui prend de la place et nettoyage des images inutilisées';

  @override
  String get storagePictures => 'Images dans les notes';

  @override
  String get storageCardMedia => 'Images et audio dans les cartes';

  @override
  String get storageText => 'Texte des notes';

  @override
  String get storageFree => 'Libre sur votre téléphone';

  @override
  String get storageLow =>
      'Votre téléphone est presque plein. Libérez de l\'espace pour que les sauvegardes et rappels continuent de fonctionner.';

  @override
  String storageUnused(int count, String size) {
    return '$count images inutilisées ($size)';
  }

  @override
  String get storageNoUnused => 'Aucune image inutilisée. Tout est en ordre.';

  @override
  String get storageClean => 'Supprimer les images inutilisées';

  @override
  String storageCleaned(int count) {
    return '$count images supprimées';
  }

  @override
  String get storageHint =>
      'Une image n\'est « inutilisée » que si aucune note ne l\'affiche, corbeille comprise.';

  @override
  String get batteryTitle => 'Garder les rappels actifs';

  @override
  String get batterySubtitle =>
      'Certains téléphones arrêtent les applis en arrière-plan. Vérifiez le vôtre.';

  @override
  String get batteryStatusOk =>
      'L\'économie de batterie ne limite pas l\'appli. Rappels et sons devraient arriver à l\'heure.';

  @override
  String get batteryStatusLimited =>
      'L\'économie de batterie peut arrêter l\'appli en arrière-plan : rappels et sons peuvent être en retard ou absents.';

  @override
  String get batteryOpen => 'Ouvrir les réglages de batterie';

  @override
  String get batteryOpenApp => 'Ouvrir les réglages de l\'appli';

  @override
  String get batteryGeneric =>
      'Dans les réglages de batterie, choisissez cette appli et réglez-la sur « Sans restriction » (ou « Ne pas optimiser »).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO : ouvrez aussi Sécurité › Autorisations › Démarrage automatique et activez l\'appli ; économiseur de batterie sur « Sans restrictions ».';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus : ouvrez Batterie › cette appli et autorisez l\'activité en arrière-plan et le lancement auto ; verrouillez l\'appli dans les récents.';

  @override
  String get batterySamsung =>
      'Samsung : Batterie › Limites d\'utilisation en arrière-plan : retirez l\'appli des applis en veille et en veille prolongée.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor : Lancement des applis › cette appli › gérer manuellement, et autorisez lancement auto, secondaire et arrière-plan.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO : Batterie › Consommation en arrière-plan › autorisez l\'appli et activez le démarrage auto dans les autorisations.';

  @override
  String get whatsNewTitle => 'Nouveautés';

  @override
  String get whatsNewSubtitle => 'Les dernières nouveautés en quelques lignes';

  @override
  String get whatsNewDone => 'Compris';

  @override
  String get whatsNewOrderTitle => 'Glissez les cartes dans votre ordre';

  @override
  String get whatsNewOrderBody =>
      'Dans un paquet choisissez Tri › Mon ordre, puis faites glisser la poignée.';

  @override
  String get whatsNewSpeechTitle => 'Un haut-parleur sur chaque face';

  @override
  String get whatsNewSpeechBody =>
      'Touchez pour entendre le mot ou la traduction. Vitesse, répétitions et voix sont dans le menu de révision. La langue est détectée d\'après le texte.';

  @override
  String get whatsNewReportTitle => 'Rapport mensuel';

  @override
  String get whatsNewReportBody =>
      'Dans Statistiques touchez l\'icône du rapport pour voir le mois et l\'enregistrer en PDF ou Word.';

  @override
  String get whatsNewCareTitle => 'Entretien du téléphone et des données';

  @override
  String get whatsNewCareBody =>
      'Les réglages ont une page de stockage avec nettoyage d\'images et un guide batterie selon votre marque.';

  @override
  String get whatsNewSoundTitle => 'Sons plus doux';

  @override
  String get whatsNewSoundBody =>
      'Les sons de la nature sont plus doux et plus bas, et les cartes sont plus belles.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Vérifié $date : la dernière sauvegarde s\'ouvre correctement.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Vérifié $date : une sauvegarde endommagée a été remplacée par une nouvelle.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Vérifié $date : la dernière sauvegarde est illisible. Enregistrez une sauvegarde vous-même depuis les réglages.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'Vous étudiez en général vers $time';
  }

  @override
  String get smartReviewTimeUse => 'Utiliser';

  @override
  String get widgetNewNote => 'Nouvelle note';

  @override
  String get noteConnections => 'Étiquettes, liens et tâches';

  @override
  String get navCards => 'Cartes';

  @override
  String get studyAnswerWay => 'Façon de répondre';

  @override
  String get studyMorePractice => 'Entraînement en plus';

  @override
  String get studySessionSettings => 'Réglages de la séance';

  @override
  String get focusAdjustTitle => 'Votre séance';

  @override
  String get focusPresetsTitle => 'Prêtes';

  @override
  String get focusPresetStudy => 'Étude';

  @override
  String get focusPresetDeep => 'Travail profond';

  @override
  String get focusPresetQuick => 'Sprint court';

  @override
  String get focusPresetReading => 'Lecture';

  @override
  String get focusPresetWorkout => 'Séries de sport';

  @override
  String get focusAdjustMinutes => 'Durée de concentration';

  @override
  String get focusAdjustBreak => 'Durée de la pause';

  @override
  String get focusAdjustRounds => 'Séries';

  @override
  String get focusRoundsOpen => 'Sans limite';

  @override
  String focusMinutesShort(String n) {
    return '$n minutes';
  }

  @override
  String get focusTapToAdjust => 'Touchez pour changer la durée';

  @override
  String get flashArrangeDecks => 'Ranger les paquets';

  @override
  String get flashDeckActions => 'Options du paquet';

  @override
  String get starterBrowse => 'Paquets prêts';

  @override
  String get starterBrowseHint => 'Ajoutez-en un d\'un geste et commencez';

  @override
  String get dashOpenDecks => 'Ouvrez vos cartes';

  @override
  String speechVoiceNumber(String n) {
    return 'Voix $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Belle concentration. Pause de $m min ?';
  }

  @override
  String get focusFlowBreakStart => 'Commencer la pause';

  @override
  String tasksFinishAt(String time) {
    return 'En commençant maintenant, vous finissez tout à $time';
  }

  @override
  String get focusCalmPacing => 'Rythme apaisé';

  @override
  String get focusCalmPacingHint => 'Minutes entières et l\'anneau, sans secondes qui défilent';

  @override
  String get focusFlipHint => 'Retournez le téléphone pour commencer';

  @override
  String get focusImmersive => 'Mode immersif';

  @override
  String get focusImmersiveBlack => 'Noir pur (économise la batterie)';

  @override
  String get focusFlipToFocus => 'Retourner pour se concentrer';

  @override
  String get focusFlipToFocusHint =>
      'En mode immersif : face cachée démarre, le relever met en pause';

  @override
  String get guardTitle => 'Garde anti-distraction';

  @override
  String get guardSubtitle => 'Mettez en pause les apps distrayantes pendant la concentration';

  @override
  String get guardSwitch => 'Mettre en pause les apps distrayantes';

  @override
  String get guardSwitchHint => 'Pendant les sessions et vos heures de garde';

  @override
  String get guardNeedsAccess => 'Nécessite l\'accessibilité : touchez pour l\'activer';

  @override
  String get guardDisclosureTitle => 'Comment fonctionne la garde';

  @override
  String get guardDisclosureBody =>
      'Pour mettre en pause les apps choisies, Deep Focus utilise le service d\'accessibilité d\'Android afin de savoir quelle app est ouverte. Avec « Fermer Shorts et Reels », il vérifie aussi si un lecteur de vidéos courtes est à l\'écran.\n\nIl ne lit aucun texte, n\'enregistre rien et n\'envoie rien : tout reste sur votre téléphone. Vous pouvez le désactiver à tout moment dans Accessibilité.';

  @override
  String get guardAgree => 'Accepter et ouvrir les réglages';

  @override
  String get guardModeGentle => 'Doux';

  @override
  String get guardModeStrict => 'Rigoureux';

  @override
  String get guardGentleHint => 'Une pause respiration de 5 secondes, puis vous choisissez';

  @override
  String get guardStrictHint =>
      'Les apps choisies restent fermées jusqu\'à la fin de la concentration';

  @override
  String get guardApps => 'Apps à mettre en pause';

  @override
  String get guardAppsAllowed => 'Apps autorisées';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '$count app',
      zero: 'Aucune choisie',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'N\'autoriser que les apps choisies';

  @override
  String get guardAllowlistHint =>
      'Toutes les autres sont en pause ; appels, réglages et clavier fonctionnent toujours';

  @override
  String get guardShorts => 'Fermer Shorts et Reels';

  @override
  String get guardShortsHint => 'Dès que la garde est active. Au mieux : ces apps changent souvent';

  @override
  String get guardSchedule => 'Plages horaires';

  @override
  String get guardScheduleHint => 'Aussi certains jours et heures, comme les cours ou le travail';

  @override
  String get guardFrom => 'De';

  @override
  String get guardTo => 'À';

  @override
  String get guardSearchApps => 'Rechercher des apps';

  @override
  String get guardNoApps => 'Aucune app trouvée';

  @override
  String get guardPrivacy =>
      'Fonctionne uniquement sur votre téléphone : la garde voit quelle app est ouverte, jamais son contenu, et n\'envoie rien.';

  @override
  String get guardBreathe => 'Inspirez… et expirez';

  @override
  String get guardQuestion => 'Avez-vous besoin de cette app maintenant ?';

  @override
  String get guardBackToFocus => 'Retour à la concentration';

  @override
  String get guardOpenFive => 'Ouvrir 5 minutes';

  @override
  String get guardStrictBody => 'Cette app est en pause jusqu\'à la fin de votre concentration.';

  @override
  String get guardShortsClosed => 'Les vidéos courtes sont fermées tant que la garde est active';

  @override
  String get faqGuardQ => 'Comment bloquer les apps distrayantes pendant la concentration ?';

  @override
  String get faqGuardA =>
      'Ouvrez Concentration → réglages du minuteur → Garde anti-distraction. Choisissez les apps, puis Doux (5 secondes de respiration et la question « Avez-vous besoin de cette app maintenant ? ») ou Strict (elles restent fermées). Elle agit pendant les sessions et, avec les Plages horaires, aux jours et heures choisis. « N\'autoriser que les apps choisies » met tout le reste en pause ; appels, réglages et clavier fonctionnent toujours. Android vous demande une fois de l\'activer dans Accessibilité. Elle voit seulement quelle app est ouverte et n\'envoie rien.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Déplacée vers $name';
  }

  @override
  String get notesDragHint => 'Maintenez une note et glissez-la sur un carnet';

  @override
  String get guardReviewCards => 'Réviser des cartes';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cartes vous attendent',
      one: '$count carte vous attend',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Urgence : maintenez 10 secondes';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Continuez… $n';
  }

  @override
  String get guardWeekTitle => 'Cette semaine';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauses',
      one: '$count pause',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'retour à la concentration $count fois',
      one: 'retour à la concentration $count fois',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Renommer les mots';

  @override
  String get wordsSubtitle => 'Utilisez vos propres mots pour n\'importe quel texte';

  @override
  String get wordsHint =>
      'Touchez un texte pour le modifier. Vos mots ne valent que pour cette langue et sont inclus dans les sauvegardes.';

  @override
  String get wordsSearch => 'Rechercher un texte';

  @override
  String get wordsChangedOnly => 'Modifiés seulement';

  @override
  String wordsOriginal(String text) {
    return 'Original : $text';
  }

  @override
  String get wordsReset => 'Texte d\'origine';

  @override
  String get wordsResetAll => 'Tout réinitialiser';

  @override
  String get wordsResetAllConfirm => 'Tous les textes de cette langue reviennent à l\'original.';

  @override
  String get wordsNone => 'Aucun texte trouvé';

  @override
  String get settingsLanguageSearch => 'Rechercher une langue';

  @override
  String get settingsLanguageNoMatch => 'Aucune langue ne correspond';
}
