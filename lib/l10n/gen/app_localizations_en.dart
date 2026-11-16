// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Future OS';

  @override
  String get navHome => 'Home';

  @override
  String get navTasks => 'Tasks';

  @override
  String get navFocus => 'Focus';

  @override
  String get navCalendar => 'Calendar';

  @override
  String get navSpaces => 'Spaces';

  @override
  String get moduleProjects => 'Projects';

  @override
  String get moduleNotes => 'Notes';

  @override
  String get moduleFlashcards => 'Flashcards';

  @override
  String get moduleGoals => 'Goals';

  @override
  String get moduleHabits => 'Habits';

  @override
  String get moduleAnalytics => 'Insights';

  @override
  String get moduleSearch => 'Search';

  @override
  String get moduleAssistant => 'Assistant';

  @override
  String get moduleSettings => 'Settings';

  @override
  String get moduleTrash => 'Trash';

  @override
  String get spacesSubtitle => 'Everything you organize, in one place';

  @override
  String get actionSave => 'Save';

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionDelete => 'Delete';

  @override
  String get actionEdit => 'Edit';

  @override
  String get actionDone => 'Done';

  @override
  String get actionAdd => 'Add';

  @override
  String get actionCreate => 'Create';

  @override
  String get actionClose => 'Close';

  @override
  String get actionBack => 'Back';

  @override
  String get actionUndo => 'Undo';

  @override
  String get actionRestore => 'Restore';

  @override
  String get actionRetry => 'Try again';

  @override
  String get actionContinue => 'Continue';

  @override
  String get actionSkip => 'Skip';

  @override
  String get actionArchive => 'Archive';

  @override
  String get actionUnarchive => 'Unarchive';

  @override
  String get actionPin => 'Pin';

  @override
  String get actionUnpin => 'Unpin';

  @override
  String get actionMore => 'More options';

  @override
  String get actionClear => 'Clear';

  @override
  String get actionSearch => 'Search';

  @override
  String get actionFilter => 'Filter';

  @override
  String get actionSort => 'Sort';

  @override
  String get actionShare => 'Share';

  @override
  String get actionImport => 'Import';

  @override
  String get actionExport => 'Export';

  @override
  String get actionPause => 'Pause';

  @override
  String get actionResume => 'Resume';

  @override
  String get actionStart => 'Start';

  @override
  String get actionStop => 'Stop';

  @override
  String get actionComplete => 'Complete';

  @override
  String get actionReopen => 'Reopen';

  @override
  String get actionDeleteForever => 'Delete forever';

  @override
  String get actionEmptyTrash => 'Empty trash';

  @override
  String get actionSelect => 'Select';

  @override
  String get actionNone => 'None';

  @override
  String get actionLink => 'Link';

  @override
  String get actionUnlink => 'Unlink';

  @override
  String get actionCustomize => 'Customize';

  @override
  String get actionReset => 'Reset';

  @override
  String get actionOpen => 'Open';

  @override
  String get actionEnable => 'Enable';

  @override
  String get actionDisable => 'Disable';

  @override
  String get actionAllow => 'Allow';

  @override
  String get actionNotNow => 'Not now';

  @override
  String get actionPreview => 'Preview';

  @override
  String get actionLog => 'Log progress';

  @override
  String get stateLoading => 'Loading…';

  @override
  String get stateSaving => 'Saving…';

  @override
  String get stateSaved => 'Saved';

  @override
  String get stateUnsaved => 'Unsaved changes';

  @override
  String get errorGenericTitle => 'Something went wrong';

  @override
  String get errorGenericMessage => 'Your data is safe. Please try again.';

  @override
  String get errorLoadFailed => 'This content could not be loaded.';

  @override
  String get errorSaveFailed => 'Could not save. Your changes are still here.';

  @override
  String get validationRequired => 'This field is required';

  @override
  String get validationTitleRequired => 'Please enter a title';

  @override
  String get validationNameRequired => 'Please enter a name';

  @override
  String get validationTooLong => 'This is too long';

  @override
  String get validationEndBeforeStart => 'The end must be after the start';

  @override
  String get validationStartAfterDue => 'The start date must be before the due date';

  @override
  String get validationPositiveNumber => 'Enter a number greater than zero';

  @override
  String get validationDependencyCycle => 'This would create a circular dependency';

  @override
  String get validationInvalidRepeat => 'This repeat rule is not valid';

  @override
  String get deletedItem => 'Moved to trash';

  @override
  String get restoredItem => 'Restored';

  @override
  String get untitled => 'Untitled';

  @override
  String get noProject => 'No project';

  @override
  String get confirmDeleteTitle => 'Delete permanently?';

  @override
  String get confirmDeleteMessage => 'This cannot be undone.';

  @override
  String get greetingMorning => 'Good morning';

  @override
  String get greetingAfternoon => 'Good afternoon';

  @override
  String get greetingEvening => 'Good evening';

  @override
  String get dashboardTitle => 'Today';

  @override
  String get dashFocusToday => 'Today\'s focus';

  @override
  String dashFocusOfTarget(String done, String target) {
    return '$done of $target';
  }

  @override
  String get dashStartFocus => 'Start focus';

  @override
  String get dashFocusRunning => 'Session in progress';

  @override
  String get dashTodayTasks => 'Due today';

  @override
  String get dashAgenda => 'Agenda';

  @override
  String get dashHabits => 'Habits today';

  @override
  String get dashGoals => 'Goals';

  @override
  String get dashReview => 'Review';

  @override
  String get dashRecentNotes => 'Recent notes';

  @override
  String get dashInsight => 'Suggestion';

  @override
  String get dashSeeAll => 'See all';

  @override
  String get dashNoTasksToday => 'Nothing due today. A clear runway.';

  @override
  String get dashNoEvents => 'No more events today';

  @override
  String get dashNoHabits => 'Create a habit to track it here';

  @override
  String get dashNoGoals => 'Set a goal to see your progress';

  @override
  String get dashNoNotes => 'Your latest notes will appear here';

  @override
  String dashCardsDue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards due',
      one: '1 card due',
      zero: 'No cards due',
    );
    return '$_temp0';
  }

  @override
  String get dashReviewNow => 'Review now';

  @override
  String get dashCustomizeTitle => 'Dashboard sections';

  @override
  String get dashCustomizeHint => 'Choose what appears on your home screen.';

  @override
  String get dashSectionFocus => 'Focus';

  @override
  String get dashSectionToday => 'Tasks due today';

  @override
  String get dashSectionAgenda => 'Agenda';

  @override
  String get dashSectionHabits => 'Habits';

  @override
  String get dashSectionGoals => 'Goals';

  @override
  String get dashSectionReview => 'Flashcard review';

  @override
  String get dashSectionNotes => 'Recent notes';

  @override
  String get dashSectionInsight => 'Suggestions';

  @override
  String get quickAddTask => 'New task';

  @override
  String get quickAddNote => 'New note';

  @override
  String get quickAddEvent => 'New event';

  @override
  String get quickStartFocus => 'Focus';

  @override
  String insightOverdue(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You have $count overdue tasks. Start with the most important one.',
      one: 'You have 1 overdue task. Reschedule or finish it first.',
    );
    return '$_temp0';
  }

  @override
  String insightFocusGap(int minutes) {
    return 'You are $minutes minutes away from your daily focus target.';
  }

  @override
  String get insightCardsDue => 'Review your due flashcards now while they are fresh.';

  @override
  String get insightAllClear => 'Everything is on track. Plan tomorrow or take a mindful break.';

  @override
  String insightHabitStreak(String habit) {
    return 'Keep your streak: $habit is still open today.';
  }

  @override
  String get focusTitle => 'Focus';

  @override
  String get focusModePomodoro => 'Pomodoro';

  @override
  String get focusModeCountdown => 'Timer';

  @override
  String get focusModeCountUp => 'Stopwatch';

  @override
  String get focusModeOpen => 'Open';

  @override
  String get focusPhaseWork => 'Focus';

  @override
  String get focusPhaseShortBreak => 'Short break';

  @override
  String get focusPhaseLongBreak => 'Long break';

  @override
  String get focusReady => 'Ready when you are';

  @override
  String get focusPaused => 'Paused';

  @override
  String get focusRunning => 'In focus';

  @override
  String get focusElapsed => 'Elapsed';

  @override
  String get focusRemaining => 'Remaining';

  @override
  String get focusDuration => 'Duration';

  @override
  String get focusLinkTask => 'Link a task';

  @override
  String get focusLinkedTask => 'Working on';

  @override
  String get focusNoTask => 'No task linked';

  @override
  String focusCycle(int current, int total) {
    return 'Cycle $current of $total';
  }

  @override
  String get focusSkipBreak => 'Skip break';

  @override
  String get focusStartBreak => 'Start break';

  @override
  String get focusStartNext => 'Start next focus';

  @override
  String get focusSessionComplete => 'Session complete';

  @override
  String get focusSessionStopped => 'Session saved';

  @override
  String focusSessionSummary(String duration) {
    return 'You focused for $duration.';
  }

  @override
  String get focusAddNote => 'Add a note about this session';

  @override
  String get focusHistory => 'History';

  @override
  String get focusNoHistory => 'Completed sessions will appear here';

  @override
  String get focusTargets => 'Targets';

  @override
  String get focusDailyTarget => 'Daily target';

  @override
  String get focusWeeklyTarget => 'Weekly target';

  @override
  String get focusOutcomeCompleted => 'Completed';

  @override
  String get focusOutcomeInterrupted => 'Stopped early';

  @override
  String get focusRecovered => 'Your session continued while the app was closed.';

  @override
  String get focusCompletedWhileAway =>
      'A session finished while the app was closed and has been saved.';

  @override
  String get focusNotificationsOff =>
      'Notifications are off. You will not be alerted when a session ends.';

  @override
  String get focusBatteryHint =>
      'Some devices pause apps in the background. The timer stays accurate, but alerts may be delayed. Allow unrestricted battery use for reliable alerts.';

  @override
  String get focusOpenSettings => 'Open settings';

  @override
  String get focusStopConfirmTitle => 'Stop this session?';

  @override
  String get focusStopConfirmMessage => 'Time focused so far will be saved.';

  @override
  String get focusDiscard => 'Discard';

  @override
  String focusMinutesLabel(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes',
      one: '1 minute',
    );
    return '$_temp0';
  }

  @override
  String focusTimerSemantics(String phase, String time) {
    return '$phase, $time remaining';
  }

  @override
  String focusTimerSemanticsElapsed(String phase, String time) {
    return '$phase, $time elapsed';
  }

  @override
  String get focusDeleteSession => 'Delete session';

  @override
  String get tasksTitle => 'Tasks';

  @override
  String get tasksViewToday => 'Today';

  @override
  String get tasksViewUpcoming => 'Upcoming';

  @override
  String get tasksViewAll => 'All';

  @override
  String get tasksViewOverdue => 'Overdue';

  @override
  String get tasksViewCompleted => 'Completed';

  @override
  String get tasksQuickAddHint => 'Add a task…';

  @override
  String get tasksEmptyTitle => 'All clear';

  @override
  String get tasksEmptyMessage => 'Add a task to start shaping your day.';

  @override
  String get tasksEmptyCompleted => 'Completed tasks will appear here.';

  @override
  String get taskNew => 'New task';

  @override
  String get taskEdit => 'Edit task';

  @override
  String get taskTitleLabel => 'Title';

  @override
  String get taskTitleHint => 'What needs to be done?';

  @override
  String get taskDescriptionLabel => 'Description';

  @override
  String get taskNotesLabel => 'Notes';

  @override
  String get taskPriority => 'Priority';

  @override
  String get priorityNone => 'None';

  @override
  String get priorityLow => 'Low';

  @override
  String get priorityMedium => 'Medium';

  @override
  String get priorityHigh => 'High';

  @override
  String get priorityUrgent => 'Urgent';

  @override
  String get taskDueDate => 'Due date';

  @override
  String get taskStartDate => 'Start date';

  @override
  String get taskReminder => 'Reminder';

  @override
  String get taskRepeat => 'Repeat';

  @override
  String get taskProject => 'Project';

  @override
  String get taskCategory => 'Category';

  @override
  String get taskCategoryHint => 'e.g. Work, Home, Study';

  @override
  String get taskEstimate => 'Estimate';

  @override
  String get taskEstimateMinutes => 'Estimate (minutes)';

  @override
  String get taskTracked => 'Tracked focus';

  @override
  String get taskLabels => 'Labels';

  @override
  String get taskAddLabel => 'New label';

  @override
  String get taskChecklist => 'Checklist';

  @override
  String get taskAddChecklistItem => 'Add an item';

  @override
  String get taskSubtasks => 'Subtasks';

  @override
  String get taskAddSubtask => 'Add a subtask';

  @override
  String get taskDependencies => 'Blocked by';

  @override
  String get taskAddDependency => 'Add a blocking task';

  @override
  String get taskLinkedNotes => 'Linked notes';

  @override
  String get taskSetTime => 'Set time';

  @override
  String get taskNoDate => 'No date';

  @override
  String get taskCompleted => 'Task completed';

  @override
  String get taskNextOccurrence => 'Next occurrence created';

  @override
  String taskSubtaskProgress(int done, int total) {
    return '$done/$total';
  }

  @override
  String taskDueOn(String date) {
    return 'Due $date';
  }

  @override
  String taskOverdueBy(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days overdue',
      one: '1 day overdue',
    );
    return '$_temp0';
  }

  @override
  String taskCheckboxSemantics(String title) {
    return 'Mark \"$title\" as done';
  }

  @override
  String taskCheckboxSemanticsDone(String title) {
    return 'Mark \"$title\" as not done';
  }

  @override
  String get sortSmart => 'Smart';

  @override
  String get sortDueDate => 'Due date';

  @override
  String get sortPriority => 'Priority';

  @override
  String get sortCreated => 'Newest';

  @override
  String get sortTitle => 'Title';

  @override
  String get filterAllProjects => 'All projects';

  @override
  String get filterAnyPriority => 'Any priority';

  @override
  String get filterTitle => 'Filter and sort';

  @override
  String get dateToday => 'Today';

  @override
  String get dateTomorrow => 'Tomorrow';

  @override
  String get dateYesterday => 'Yesterday';

  @override
  String get dateNextWeek => 'Next week';

  @override
  String get repeatNever => 'Does not repeat';

  @override
  String get repeatDaily => 'Every day';

  @override
  String get repeatWeekdays => 'Every weekday';

  @override
  String get repeatWeekly => 'Every week';

  @override
  String get repeatMonthly => 'Every month';

  @override
  String get repeatYearly => 'Every year';

  @override
  String get repeatCustom => 'Custom';

  @override
  String get repeatEvery => 'Repeat every';

  @override
  String get repeatOnDays => 'On days';

  @override
  String repeatUnitDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'days', one: 'day');
    return '$_temp0';
  }

  @override
  String repeatUnitWeeks(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'weeks', one: 'week');
    return '$_temp0';
  }

  @override
  String repeatUnitMonths(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'months', one: 'month');
    return '$_temp0';
  }

  @override
  String repeatUnitYears(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'years', one: 'year');
    return '$_temp0';
  }

  @override
  String repeatEndsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count times',
      one: '1 time',
    );
    return 'Ends after $_temp0';
  }

  @override
  String get repeatEndsNever => 'Never ends';

  @override
  String get reminderAtTime => 'At time of event';

  @override
  String reminderMinutesBefore(int minutes) {
    String _temp0 = intl.Intl.pluralLogic(
      minutes,
      locale: localeName,
      other: '$minutes minutes before',
      one: '1 minute before',
    );
    return '$_temp0';
  }

  @override
  String reminderHoursBefore(int hours) {
    String _temp0 = intl.Intl.pluralLogic(
      hours,
      locale: localeName,
      other: '$hours hours before',
      one: '1 hour before',
    );
    return '$_temp0';
  }

  @override
  String get reminderDayBefore => '1 day before';

  @override
  String get projectsTitle => 'Projects';

  @override
  String get projectsEmptyTitle => 'No projects yet';

  @override
  String get projectsEmptyMessage => 'Group related tasks, notes and focus time.';

  @override
  String get projectNew => 'New project';

  @override
  String get projectEdit => 'Edit project';

  @override
  String get projectName => 'Name';

  @override
  String get projectDescription => 'Description';

  @override
  String get projectGoal => 'Goal';

  @override
  String get projectDeadline => 'Deadline';

  @override
  String get projectColor => 'Color';

  @override
  String get projectIcon => 'Icon';

  @override
  String get projectNotes => 'Project notes';

  @override
  String get projectProgress => 'Progress';

  @override
  String projectTasksDone(int done, int total) {
    return '$done of $total tasks done';
  }

  @override
  String get projectFocusTime => 'Focus time';

  @override
  String get projectArchived => 'Archived projects';

  @override
  String get projectShowArchived => 'Show archived';

  @override
  String projectDaysLeft(int days) {
    String _temp0 = intl.Intl.pluralLogic(
      days,
      locale: localeName,
      other: '$days days left',
      one: '1 day left',
      zero: 'Due today',
    );
    return '$_temp0';
  }

  @override
  String get projectOverdue => 'Past deadline';

  @override
  String get calendarTitle => 'Calendar';

  @override
  String get calendarMonth => 'Month';

  @override
  String get calendarWeek => 'Week';

  @override
  String get calendarDay => 'Day';

  @override
  String get calendarToday => 'Today';

  @override
  String get calendarPrevious => 'Previous';

  @override
  String get calendarNext => 'Next';

  @override
  String get calendarNoEvents => 'Nothing scheduled';

  @override
  String get calendarAllDay => 'All day';

  @override
  String get eventNew => 'New event';

  @override
  String get eventEdit => 'Edit event';

  @override
  String get eventTitleHint => 'Event title';

  @override
  String get eventStarts => 'Starts';

  @override
  String get eventEnds => 'Ends';

  @override
  String get eventKind => 'Type';

  @override
  String get eventKindEvent => 'Event';

  @override
  String get eventKindTimeBlock => 'Time block';

  @override
  String get eventKindFocus => 'Focus session';

  @override
  String get eventKindGoal => 'Personal goal';

  @override
  String get eventDescription => 'Details';

  @override
  String eventConflict(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Overlaps with $count events',
      one: 'Overlaps with 1 event',
    );
    return '$_temp0';
  }

  @override
  String get eventConflictsToday => 'Scheduling conflicts on this day';

  @override
  String get calendarTaskDue => 'Task due';

  @override
  String get calendarDragHint => 'Long-press and drag an event to reschedule it';

  @override
  String get calendarRescheduled => 'Event moved';

  @override
  String get calendarScheduleTask => 'Schedule as time block';

  @override
  String get calendarLegend => 'Legend';

  @override
  String get notesTitle => 'Notes';

  @override
  String get notesViewAll => 'All';

  @override
  String get notesViewPinned => 'Pinned';

  @override
  String get notesViewFavorites => 'Favorites';

  @override
  String get notesViewArchived => 'Archived';

  @override
  String get notesNotebooks => 'Notebooks';

  @override
  String get notesTags => 'Tags';

  @override
  String get notesNewNotebook => 'New notebook';

  @override
  String get notesNoNotebook => 'No notebook';

  @override
  String get notesEmptyTitle => 'A blank canvas';

  @override
  String get notesEmptyMessage => 'Capture ideas, meeting notes and knowledge.';

  @override
  String get noteTitleHint => 'Title';

  @override
  String get noteBodyHint => 'Start writing… Use # for tags and [[Title]] to link notes.';

  @override
  String get noteFavorite => 'Favorite';

  @override
  String get noteUnfavorite => 'Remove from favorites';

  @override
  String get noteMoveTo => 'Move to notebook';

  @override
  String get noteBacklinks => 'Linked from';

  @override
  String get noteLinkedTasks => 'Linked tasks';

  @override
  String get noteLinkTask => 'Link a task';

  @override
  String get noteLinkProject => 'Project';

  @override
  String get noteFormatHeading => 'Heading';

  @override
  String get noteFormatBold => 'Bold';

  @override
  String get noteFormatItalic => 'Italic';

  @override
  String get noteFormatList => 'Bulleted list';

  @override
  String get noteFormatChecklist => 'Checklist';

  @override
  String get noteFormatLink => 'Link';

  @override
  String noteEdited(String time) {
    return 'Edited $time';
  }

  @override
  String noteWordCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count words',
      one: '1 word',
    );
    return '$_temp0';
  }

  @override
  String get flashTitle => 'Flashcards';

  @override
  String get flashEmptyTitle => 'Build your first deck';

  @override
  String get flashEmptyMessage =>
      'Spaced repetition shows each card right before you would forget it.';

  @override
  String get deckNew => 'New deck';

  @override
  String get deckEdit => 'Edit deck';

  @override
  String get deckName => 'Deck name';

  @override
  String get deckDescription => 'Description';

  @override
  String get deckDailyNew => 'New cards per day';

  @override
  String get deckDailyReview => 'Daily review target';

  @override
  String deckCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards',
      one: '1 card',
      zero: 'No cards',
    );
    return '$_temp0';
  }

  @override
  String get deckDue => 'Due';

  @override
  String get deckNewCards => 'New';

  @override
  String get deckMature => 'Mature';

  @override
  String get deckStudy => 'Study';

  @override
  String get deckNothingDue => 'Nothing due right now. Come back later.';

  @override
  String get deckEmptyCards => 'Add cards to start learning.';

  @override
  String get cardNew => 'New card';

  @override
  String get cardEdit => 'Edit card';

  @override
  String get cardFront => 'Front';

  @override
  String get cardBack => 'Back';

  @override
  String get cardFrontHint => 'Question or term';

  @override
  String get cardBackHint => 'Answer or definition';

  @override
  String get cardTags => 'Tags';

  @override
  String get cardAddAnother => 'Save and add another';

  @override
  String get reviewShowAnswer => 'Show answer';

  @override
  String get reviewAgain => 'Again';

  @override
  String get reviewHard => 'Hard';

  @override
  String get reviewGood => 'Good';

  @override
  String get reviewEasy => 'Easy';

  @override
  String reviewProgress(int done, int total) {
    return '$done of $total';
  }

  @override
  String get reviewFinishedTitle => 'Session complete';

  @override
  String reviewFinishedMessage(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You reviewed $count cards.',
      one: 'You reviewed 1 card.',
    );
    return '$_temp0';
  }

  @override
  String get reviewTapToFlip => 'Tap to reveal the answer';

  @override
  String get importCardsTitle => 'Import cards';

  @override
  String get importCardsHint =>
      'Paste one card per line as front and back separated by a tab or semicolon, or paste an exported deck file.';

  @override
  String importCardsResult(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards imported',
      one: '1 card imported',
      zero: 'No cards imported',
    );
    return '$_temp0';
  }

  @override
  String get importFailed => 'This content could not be imported.';

  @override
  String get exportCopied => 'Deck exported';

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
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String get goalsTitle => 'Goals';

  @override
  String get goalsEmptyTitle => 'Aim for something';

  @override
  String get goalsEmptyMessage =>
      'Set daily, weekly, monthly or long-term goals and track real progress.';

  @override
  String get goalNew => 'New goal';

  @override
  String get goalEdit => 'Edit goal';

  @override
  String get goalTitleHint => 'What do you want to achieve?';

  @override
  String get goalPeriod => 'Period';

  @override
  String get goalPeriodDaily => 'Daily';

  @override
  String get goalPeriodWeekly => 'Weekly';

  @override
  String get goalPeriodMonthly => 'Monthly';

  @override
  String get goalPeriodLongTerm => 'Long-term';

  @override
  String get goalTarget => 'Target';

  @override
  String get goalUnit => 'Unit';

  @override
  String get goalUnitHint => 'e.g. pages, km, hours';

  @override
  String get goalStatusActive => 'Active';

  @override
  String get goalStatusPaused => 'Paused';

  @override
  String get goalStatusAchieved => 'Achieved';

  @override
  String get goalPause => 'Pause goal';

  @override
  String get goalResume => 'Resume goal';

  @override
  String get goalMarkAchieved => 'Mark as achieved';

  @override
  String goalProgressOf(String current, String target) {
    return '$current of $target';
  }

  @override
  String get goalLogAmount => 'Amount';

  @override
  String get goalLogNote => 'Note (optional)';

  @override
  String get goalHistory => 'History';

  @override
  String get goalNoHistory => 'Logged progress will appear here';

  @override
  String get goalLinkedTasks => 'Linked tasks';

  @override
  String get goalLinkedTasksHint => 'Each completed linked task counts as 1 toward this goal.';

  @override
  String get goalThisPeriod => 'This period';

  @override
  String get habitsTitle => 'Habits';

  @override
  String get habitsEmptyTitle => 'Small steps, every day';

  @override
  String get habitsEmptyMessage => 'Create a habit and check it off when you do it.';

  @override
  String get habitNew => 'New habit';

  @override
  String get habitEdit => 'Edit habit';

  @override
  String get habitNameHint => 'e.g. Read 20 pages';

  @override
  String get habitDays => 'Schedule';

  @override
  String get habitEveryDay => 'Every day';

  @override
  String get habitTargetPerDay => 'Times per day';

  @override
  String get habitReminder => 'Daily reminder';

  @override
  String habitStreak(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count-day streak',
      one: '1-day streak',
      zero: 'No streak',
    );
    return '$_temp0';
  }

  @override
  String get habitBestStreak => 'Best streak';

  @override
  String get habitCurrentStreak => 'Current streak';

  @override
  String get habitConsistency => 'Consistency';

  @override
  String get habitLast90 => 'Last 90 days';

  @override
  String get habitPaused => 'Paused';

  @override
  String get habitPause => 'Pause habit';

  @override
  String get habitResume => 'Resume habit';

  @override
  String get habitDoneToday => 'Done today';

  @override
  String habitCountToday(int count, int target) {
    return '$count of $target today';
  }

  @override
  String habitToggleSemantics(String name) {
    return 'Check in \"$name\"';
  }

  @override
  String get habitNotScheduledToday => 'Not scheduled today';

  @override
  String get analyticsTitle => 'Insights';

  @override
  String get rangeWeek => '7 days';

  @override
  String get rangeMonth => '30 days';

  @override
  String get rangeQuarter => '90 days';

  @override
  String get statFocusTime => 'Focus time';

  @override
  String get statSessions => 'Sessions';

  @override
  String statSessionsDetail(int completed, int interrupted) {
    return '$completed completed · $interrupted stopped early';
  }

  @override
  String get statTasksDone => 'Tasks completed';

  @override
  String get statCompletionRate => 'On-time completion';

  @override
  String get statHabitConsistency => 'Habit consistency';

  @override
  String get statRetention => 'Card retention';

  @override
  String get statReviews => 'Reviews';

  @override
  String get statActiveGoals => 'Active goals';

  @override
  String get statEstimated => 'Estimated work completed';

  @override
  String get statEstimatedNote => 'Based on your estimates, not measured time';

  @override
  String get statMeasuredNote => 'Measured from focus sessions';

  @override
  String get chartFocusByDay => 'Focus minutes per day';

  @override
  String get chartTasksByDay => 'Tasks completed per day';

  @override
  String get chartTimeByProject => 'Time by project';

  @override
  String get chartProjectProgress => 'Project progress';

  @override
  String chartSemanticsTotal(String title, String total, String best) {
    return '$title: total $total, best day $best';
  }

  @override
  String get analyticsNoData => 'Not enough data yet';

  @override
  String get analyticsUnassigned => 'Unassigned';

  @override
  String get searchHint => 'Search everything…';

  @override
  String get searchRecent => 'Recent searches';

  @override
  String get searchClearRecent => 'Clear recent searches';

  @override
  String searchNoResults(String query) {
    return 'No results for \"$query\"';
  }

  @override
  String get searchStartTyping =>
      'Search across tasks, notes, cards, goals, events and more. Search stays on this device.';

  @override
  String get searchCatTask => 'Tasks';

  @override
  String get searchCatProject => 'Projects';

  @override
  String get searchCatNote => 'Notes';

  @override
  String get searchCatFlashcard => 'Cards';

  @override
  String get searchCatDeck => 'Decks';

  @override
  String get searchCatGoal => 'Goals';

  @override
  String get searchCatHabit => 'Habits';

  @override
  String get searchCatEvent => 'Events';

  @override
  String get searchCatSession => 'Sessions';

  @override
  String get searchAll => 'All';

  @override
  String get assistantTitle => 'Assistant';

  @override
  String get assistantIntro =>
      'Planning help that works on your device. Optionally connect an AI provider you choose for summaries and generation.';

  @override
  String get assistantOnDevice => 'On-device';

  @override
  String get assistantCloud => 'AI provider';

  @override
  String get assistantPlanDay => 'Plan my day';

  @override
  String get assistantPlanDayDesc =>
      'Orders open tasks by urgency, priority and estimate, and fits them around your events.';

  @override
  String get assistantExtractTasks => 'Extract tasks from a note';

  @override
  String get assistantExtractTasksDesc =>
      'Finds checklist items and action lines in a note and turns them into tasks.';

  @override
  String get assistantMakeCards => 'Make flashcards from a note';

  @override
  String get assistantMakeCardsDesc =>
      'Turns \"term: definition\" and question/answer lines into cards.';

  @override
  String get assistantSummarize => 'Summarize a note';

  @override
  String get assistantSummarizeDesc =>
      'Requires an AI provider. The note is sent only after you confirm.';

  @override
  String get assistantWorkload => 'Workload overview';

  @override
  String get assistantWorkloadDesc => 'Compares estimated work with your free time this week.';

  @override
  String get assistantPlanEmpty => 'No open tasks to plan. Enjoy the space.';

  @override
  String assistantPlanCapacity(String time) {
    return 'Free focus time today: $time';
  }

  @override
  String get assistantPlanOverflow => 'These may not fit today:';

  @override
  String get assistantChooseNote => 'Choose a note';

  @override
  String assistantFoundTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks found',
      one: '1 task found',
      zero: 'No tasks found in this note',
    );
    return '$_temp0';
  }

  @override
  String assistantFoundCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards found',
      one: '1 card found',
      zero: 'No cards found in this note',
    );
    return '$_temp0';
  }

  @override
  String get assistantCreateAll => 'Create all';

  @override
  String get assistantChooseDeck => 'Choose a deck';

  @override
  String get assistantCreated => 'Created';

  @override
  String assistantWorkloadResult(String estimated, String free) {
    return 'Estimated work: $estimated. Free time: $free.';
  }

  @override
  String get assistantWorkloadOver =>
      'You have more planned than time available. Consider moving lower-priority tasks.';

  @override
  String get assistantWorkloadOk => 'Your plan fits in your available time.';

  @override
  String assistantWorkloadUnestimated(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count open tasks have no estimate.',
      one: '1 open task has no estimate.',
    );
    return '$_temp0';
  }

  @override
  String get assistantProviderTitle => 'AI provider';

  @override
  String get assistantProviderOff => 'No provider connected. On-device tools still work.';

  @override
  String assistantProviderOn(String host) {
    return 'Connected to $host';
  }

  @override
  String get assistantEndpoint => 'API endpoint (HTTPS)';

  @override
  String get assistantModel => 'Model';

  @override
  String get assistantApiKey => 'API key';

  @override
  String get assistantApiKeyStored => 'Stored securely on this device';

  @override
  String get assistantHttpsOnly => 'Only HTTPS endpoints are allowed';

  @override
  String get assistantConsentTitle => 'Send this content to your AI provider?';

  @override
  String assistantConsentBody(String host) {
    return 'The selected note text will leave this device and be processed by $host. Nothing else is sent.';
  }

  @override
  String get assistantConsentAlways => 'Do not ask again for this provider';

  @override
  String get assistantSend => 'Send';

  @override
  String get assistantUnavailable => 'The AI provider could not be reached. Try again later.';

  @override
  String get assistantDisabledTitle => 'Assistant is off';

  @override
  String get assistantDisabledMessage =>
      'Turn it on to use planning tools. No data leaves your device unless you connect a provider and confirm each request.';

  @override
  String get assistantSummaryTitle => 'Summary';

  @override
  String get assistantRemoveProvider => 'Remove provider';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get settingsGeneral => 'General';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsLanguageSystem => 'Device language';

  @override
  String get settingsAppearance => 'Appearance';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeSystem => 'System';

  @override
  String get settingsReduceMotion => 'Reduce motion';

  @override
  String get settingsReduceMotionDesc => 'Minimize animations and moving backgrounds';

  @override
  String get settingsFocus => 'Focus timer';

  @override
  String get settingsWorkLength => 'Focus length';

  @override
  String get settingsShortBreak => 'Short break';

  @override
  String get settingsLongBreak => 'Long break';

  @override
  String get settingsLongBreakEvery => 'Long break after';

  @override
  String settingsCycles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sessions',
      one: '1 session',
    );
    return '$_temp0';
  }

  @override
  String get settingsAutoBreaks => 'Start breaks automatically';

  @override
  String get settingsSound => 'Completion sound';

  @override
  String get settingsDailyFocusTarget => 'Daily focus target';

  @override
  String get settingsWeeklyFocusTarget => 'Weekly focus target';

  @override
  String get settingsNotifications => 'Notifications';

  @override
  String get settingsNotificationsEnable => 'Allow reminders';

  @override
  String get settingsQuietHours => 'Quiet hours';

  @override
  String settingsQuietHoursDesc(String start, String end) {
    return 'Habit, goal and review reminders are silenced from $start to $end';
  }

  @override
  String get settingsReviewReminder => 'Flashcard review reminder';

  @override
  String get settingsPermissionDenied => 'Notifications are blocked in system settings.';

  @override
  String get settingsPrivacy => 'Privacy and data';

  @override
  String get settingsPrivacyStatement =>
      'Your data is stored only on this device and encrypted. There is no account, no analytics and no tracking.';

  @override
  String get settingsBackup => 'Create encrypted backup';

  @override
  String get settingsBackupDesc => 'Protected with a password you choose';

  @override
  String get settingsRestore => 'Restore from backup';

  @override
  String get settingsRestoreDesc => 'Replaces all data on this device';

  @override
  String get settingsErase => 'Erase all data';

  @override
  String get settingsEraseDesc => 'Permanently delete everything on this device';

  @override
  String get settingsEraseConfirmTitle => 'Erase all data?';

  @override
  String settingsEraseConfirmBody(String word) {
    return 'Every task, note, card, goal, habit, event and session will be deleted permanently. Type $word to confirm.';
  }

  @override
  String get settingsEraseWord => 'ERASE';

  @override
  String get settingsErased => 'All data erased';

  @override
  String get backupPassword => 'Backup password';

  @override
  String get backupPasswordConfirm => 'Confirm password';

  @override
  String backupPasswordHint(int count) {
    return 'At least $count characters. It cannot be recovered if lost.';
  }

  @override
  String get backupPasswordMismatch => 'Passwords do not match';

  @override
  String get backupPasswordShort => 'Password is too short';

  @override
  String get backupCreating => 'Encrypting backup…';

  @override
  String get backupCreated => 'Backup ready to save';

  @override
  String get backupRestoring => 'Verifying and restoring…';

  @override
  String backupRestored(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Restored $count items',
      one: 'Restored 1 item',
    );
    return '$_temp0';
  }

  @override
  String get backupWrongPassword => 'Wrong password, or the file was modified.';

  @override
  String get backupNotABackup => 'This file is not a Future OS backup.';

  @override
  String get backupCorrupted => 'The backup file is damaged.';

  @override
  String get backupNewer =>
      'This backup was made by a newer version of the app. Please update first.';

  @override
  String get backupRestoreConfirmTitle => 'Replace all data?';

  @override
  String get backupRestoreConfirmBody =>
      'Everything currently on this device will be replaced by the backup. If restoring fails, nothing changes.';

  @override
  String get settingsAbout => 'About';

  @override
  String settingsVersion(String version) {
    return 'Version $version';
  }

  @override
  String get settingsLicenses => 'Open-source licenses';

  @override
  String get settingsAssistant => 'Assistant';

  @override
  String get settingsAssistantEnable => 'Enable assistant';

  @override
  String get settingsDashboard => 'Home sections';

  @override
  String get settingsTrash => 'Trash';

  @override
  String settingsMinutesValue(int minutes) {
    return '$minutes min';
  }

  @override
  String get trashEmpty => 'Trash is empty';

  @override
  String get trashHint => 'Deleted items stay here until you remove them.';

  @override
  String get trashTasks => 'Tasks';

  @override
  String get trashNotes => 'Notes';

  @override
  String get onboardWelcomeTitle => 'Welcome to your future workspace';

  @override
  String get onboardWelcomeBody =>
      'Tasks, focus, calendar, notes, flashcards, goals and habits — together, beautifully simple.';

  @override
  String get onboardPrivateTitle => 'Private by design';

  @override
  String get onboardPrivateBody =>
      'Everything stays on this device, encrypted. No account. No tracking. You stay in control.';

  @override
  String get onboardLanguageTitle => 'Choose your language';

  @override
  String get onboardNotifTitle => 'Gentle reminders';

  @override
  String get onboardNotifBody =>
      'Allow notifications for task reminders and focus alerts. You can change this anytime.';

  @override
  String get onboardGetStarted => 'Get started';

  @override
  String onboardStep(int current, int total) {
    return 'Step $current of $total';
  }

  @override
  String get notifChannelReminders => 'Reminders';

  @override
  String get notifChannelRemindersDesc => 'Task, event, habit and goal reminders';

  @override
  String get notifChannelFocus => 'Focus timer';

  @override
  String get notifChannelFocusDesc => 'Alerts when a focus session or break ends';

  @override
  String get notifTaskTitle => 'Task reminder';

  @override
  String get notifEventTitle => 'Upcoming event';

  @override
  String notifEventBody(String title, String time) {
    return '$title at $time';
  }

  @override
  String get notifFocusDoneTitle => 'Focus session complete';

  @override
  String get notifFocusDoneBody => 'Great work. Time for a break.';

  @override
  String get notifBreakDoneTitle => 'Break is over';

  @override
  String get notifBreakDoneBody => 'Ready for the next focus session?';

  @override
  String get notifHabitTitle => 'Habit reminder';

  @override
  String get notifReviewTitle => 'Flashcards are ready';

  @override
  String get notifReviewBody => 'A short review keeps your memory strong.';

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
  String get weekdaysShort => 'M,T,W,T,F,S,S';

  @override
  String get a11yOpenMenu => 'Open menu';

  @override
  String a11yProgress(int value) {
    return 'Progress $value percent';
  }

  @override
  String a11yPriority(String level) {
    return 'Priority: $level';
  }

  @override
  String a11yColor(int index) {
    return 'Color $index';
  }

  @override
  String get a11ySelected => 'Selected';

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
