// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Deep Focus';

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
  String get actionDeleteForever => 'Delete forever';

  @override
  String get actionEmptyTrash => 'Empty trash';

  @override
  String get actionUnlink => 'Unlink';

  @override
  String get actionCustomize => 'Customize';

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
  String get untitled => 'Untitled';

  @override
  String get noProject => 'No project';

  @override
  String get greetingMorning => 'Good morning';

  @override
  String get greetingAfternoon => 'Good afternoon';

  @override
  String get greetingEvening => 'Good evening';

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
      'Paste one card per line (front and back separated by a tab or semicolon), or choose a file: Excel (.xlsx), CSV, an Anki deck (.apkg) or an exported deck.';

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
  String get assistantChooseDeck => 'Choose a deck';

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
  String get backupNotABackup => 'This file is not a Deep Focus backup.';

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
  String get startupErrorTitle => 'Your data could not be opened';

  @override
  String get startupErrorLocked =>
      'The encryption key for this device\'s data is not available. Nothing has been deleted. Restarting the device often helps. If you recently restored the device, restore your data from an encrypted backup instead.';

  @override
  String get startupErrorCipher =>
      'This device does not support the encrypted storage the app requires. Nothing has been saved unencrypted.';

  @override
  String get startupErrorRetry => 'Try again';

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
  String get backupShareSubject => 'Deep Focus encrypted backup';

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
  String get taskSubtaskDetailsHint =>
      'Save the task first to add subtasks, checklist items, labels and dependencies.';

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

  @override
  String get flashcardsReadAloud => 'Read aloud';

  @override
  String get flashcardsTtsUnavailable => 'Text-to-speech isn’t available on this device.';

  @override
  String get flashcardsTtsLanguageUnavailable =>
      'No voice is installed for this language. Add one in Android text-to-speech settings.';

  @override
  String get calendarAgenda => 'Agenda';

  @override
  String projectIconName(String name) {
    String _temp0 = intl.Intl.selectLogic(name, {
      'spark': 'Spark',
      'rocket': 'Rocket',
      'book': 'Book',
      'work': 'Work',
      'home': 'Home',
      'heart': 'Heart',
      'code': 'Code',
      'palette': 'Palette',
      'fitness': 'Fitness',
      'school': 'School',
      'travel': 'Travel',
      'money': 'Savings',
      'other': 'Icon',
    });
    return '$_temp0';
  }

  @override
  String get cardMoreFields => 'More fields';

  @override
  String get cardFieldExample => 'Example';

  @override
  String get cardFieldExplanation => 'Explanation';

  @override
  String get cardFieldPronunciation => 'Pronunciation';

  @override
  String get cardFieldNotes => 'Additional notes';

  @override
  String get projectMilestones => 'Milestones';

  @override
  String get milestoneAdd => 'Add milestone';

  @override
  String get milestoneEdit => 'Edit milestone';

  @override
  String get milestoneTitleLabel => 'Milestone';

  @override
  String get milestoneNoDate => 'No date';

  @override
  String get milestonesEmpty =>
      'No milestones yet. Add checkpoints with dates to track the project on the calendar.';

  @override
  String get milestoneDeleted => 'Milestone deleted';

  @override
  String milestoneDoneA11y(String title) {
    return 'Mark milestone \"$title\" as done';
  }

  @override
  String calendarMilestone(String project) {
    return 'Milestone · $project';
  }

  @override
  String get tasksViewInbox => 'Inbox';

  @override
  String get tasksViewArchived => 'Archived';

  @override
  String get tasksEmptyInbox =>
      'Tasks without a project or date land here. Sort them when you have a minute.';

  @override
  String get tasksEmptyArchived => 'Archived tasks are kept here, out of your lists and reminders.';

  @override
  String get taskArchivedBadge => 'Archived';

  @override
  String get taskStatusInProgress => 'In progress';

  @override
  String get taskArchived => 'Task archived';

  @override
  String get taskUnarchived => 'Task restored from archive';

  @override
  String get focusPlanTitle => 'Session plan';

  @override
  String focusPlanTotal(String duration) {
    return 'Total $duration';
  }

  @override
  String get focusPlanRounds => 'Focus sessions';

  @override
  String get focusPlanUnlimited => '∞';

  @override
  String get focusPlanLongEvery => 'Long break after';

  @override
  String get focusPlanSkipLastBreak => 'Skip the last break';

  @override
  String get focusPlanAutoBreaks => 'Start breaks automatically';

  @override
  String get focusPlanAutoFocus => 'Start focus automatically after a break';

  @override
  String get focusPlanSave => 'Save plan';

  @override
  String get focusPlanNameHint => 'e.g. Exam prep';

  @override
  String get focusPlanSaved => 'Plan saved';

  @override
  String focusPlanPresetA11y(String name, int work, int rest) {
    return '$name: $work min focus, $rest min break';
  }

  @override
  String focusPlanDecrease(String label) {
    return 'Decrease $label';
  }

  @override
  String focusPlanIncrease(String label) {
    return 'Increase $label';
  }

  @override
  String focusRoundOf(int current, int total) {
    return 'Session $current of $total';
  }

  @override
  String get focusSeriesComplete => 'Series complete. Well done!';

  @override
  String get filterAll => 'All';

  @override
  String importCardsResultDetail(int added, int duplicates, int invalid) {
    return '$added imported · $duplicates duplicates skipped · $invalid incomplete rows';
  }

  @override
  String get flashcardsSuspend => 'Suspend card';

  @override
  String get flashcardsResume => 'Resume card';

  @override
  String get flashcardsSuspended => 'Card suspended: it will not be scheduled';

  @override
  String get flashcardsResumed => 'Card resumed';

  @override
  String get flashcardsSuspendedFilter => 'Suspended';

  @override
  String flashcardsShownOf(int shown, int total) {
    return '$shown of $total cards';
  }

  @override
  String get flashcardsImportFile => 'From file';

  @override
  String get speechTitle => 'Speech';

  @override
  String get speechAppLanguage => 'App language';

  @override
  String get speechFrontLanguage => 'Front language';

  @override
  String get speechBackLanguage => 'Back language';

  @override
  String get speechRepeat => 'Repeat each reading';

  @override
  String get speechRate => 'Speed';

  @override
  String get speechAutoRead => 'Read the question automatically';

  @override
  String get speechHint =>
      'Uses the voices installed on this device, offline. If a language has no voice, you will be told and nothing else is used instead.';

  @override
  String get studyHowTitle => 'How do you want to study?';

  @override
  String studyDueCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Review $count cards',
      one: 'Review 1 card',
    );
    return '$_temp0';
  }

  @override
  String get studyPracticeAll => 'Practice all cards (schedule unchanged)';

  @override
  String get studyPracticeMistakes => 'Practice recent mistakes';

  @override
  String get studyPracticeHint =>
      'Practice rounds never change when cards are due. Review updates the schedule.';

  @override
  String get studyModeClassic => 'Classic';

  @override
  String get studyModeReverse => 'Reverse';

  @override
  String get studyModeMixed => 'Both ways';

  @override
  String get studyModeTyped => 'Type the answer';

  @override
  String get studyModeChoice => 'Multiple choice';

  @override
  String get studyModeListening => 'Listening';

  @override
  String get studyPractice => 'practice';

  @override
  String get studyNoMistakes => 'No recent mistakes in this deck. Nice!';

  @override
  String get studyTypeAnswer => 'Type your answer';

  @override
  String get studyCheck => 'Check';

  @override
  String get studyKnewIt => 'I knew it';

  @override
  String get studyDidntKnow => 'Didn\'t know';

  @override
  String studyMistakes(int count) {
    return 'Missed ($count)';
  }

  @override
  String get studyRepeatMistakes => 'Repeat the missed cards';

  @override
  String get studyCorrect => 'Correct';

  @override
  String get studyAlmost => 'Almost — check the spelling';

  @override
  String get studyWrong => 'Not quite';

  @override
  String get studyShowText => 'Show the text';

  @override
  String get flashcardsImportFileFailed =>
      'The file could not be opened. You can paste its content instead.';

  @override
  String get studyNoMatchingCards => 'No cards match this choice yet.';

  @override
  String get studyPracticeNew => 'New only';

  @override
  String get studyPracticeHard => 'Hard cards';

  @override
  String get studyPracticeFavorites => 'Favorites';

  @override
  String get studySessionSize => 'Cards per session';

  @override
  String get studySessionAll => 'All';

  @override
  String get studyOrder => 'Order';

  @override
  String get studyOrderDue => 'Most overdue first';

  @override
  String get studyOrderRandom => 'Random';

  @override
  String get studyOrderHardest => 'Hardest first';

  @override
  String get flashcardsHard => 'Hard';

  @override
  String get flashcardsFavorites => 'Favorites';

  @override
  String get flashcardsFavorite => 'Add to favorites';

  @override
  String get flashcardsUnfavorite => 'Remove from favorites';

  @override
  String get flashcardsDuplicate => 'Duplicate';

  @override
  String get flashcardsMoveTo => 'Move to deck';

  @override
  String get flashcardsNoOtherDeck => 'Create another deck first.';

  @override
  String flashcardsMoved(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards moved',
      one: 'Card moved',
    );
    return '$_temp0';
  }

  @override
  String get flashcardsAddTag => 'Add tag';

  @override
  String get flashcardsTagHint => 'e.g. verbs';

  @override
  String flashcardsSelected(int count) {
    return '$count selected';
  }

  @override
  String get flashcardsSelectAll => 'Select all shown';

  @override
  String flashcardsSelectCard(String front) {
    return 'Select $front';
  }

  @override
  String flashcardsRecall(String value) {
    return 'Recall $value';
  }

  @override
  String get flashcardsDuplicateTitle => 'Possible duplicate';

  @override
  String flashcardsDuplicateMessage(String front, String back) {
    return 'This deck already has “$front” → “$back”. Save anyway?';
  }

  @override
  String get flashcardsSaveAnyway => 'Save anyway';

  @override
  String get flashcardsStats => 'Statistics';

  @override
  String get flashcardsStatTotal => 'Cards';

  @override
  String get flashcardsStatLearning => 'Learning';

  @override
  String get flashcardsStatMatureCaption => 'Remembered for 21+ days';

  @override
  String get flashcardsStatReviewsToday => 'Reviews today';

  @override
  String get flashcardsStatCorrect => 'Correct answers';

  @override
  String flashcardsStatLastDays(int days) {
    return 'Last $days days';
  }

  @override
  String get flashcardsStatForget => 'Forgetting rate';

  @override
  String get flashcardsStatForgetCaption => '“Again” on learned cards';

  @override
  String get flashcardsStatRecall => 'Recall now';

  @override
  String get flashcardsStatRecallCaption => 'FSRS estimate, reviewed cards';

  @override
  String flashcardsStatActivity(int count) {
    return 'Reviews per day · $count in total';
  }

  @override
  String get flashcardsStatHistory => 'Latest answers';

  @override
  String get flashcardsStatNoHistory => 'No reviews yet. Study the deck to see your progress here.';

  @override
  String flashcardsSpeakField(String field) {
    return 'Read $field aloud';
  }

  @override
  String get speechVoice => 'Voice';

  @override
  String get speechVoiceDefault => 'Automatic';

  @override
  String get speechVoiceOnline => 'needs internet';

  @override
  String get speechTest => 'Test voice';

  @override
  String get importNext => 'Preview';

  @override
  String get importPreviewTitle => 'Match columns to fields';

  @override
  String get importIgnoreColumn => 'Ignore';

  @override
  String importColumn(int n) {
    return 'Column $n';
  }

  @override
  String importPreviewSummary(int ready, int invalid) {
    return '$ready cards ready · $invalid incomplete rows will be skipped';
  }

  @override
  String get importNeedFrontBack => 'Choose which columns are the front and the back.';

  @override
  String get actionMoveUp => 'Move up';

  @override
  String get actionMoveDown => 'Move down';

  @override
  String get flashcardsLayoutTitle => 'Card layout';

  @override
  String get flashcardsLayoutHint =>
      'Rename, hide or reorder the extra fields for this deck. Card content is never changed.';

  @override
  String flashcardsLayoutShow(String field) {
    return 'Show $field while studying';
  }

  @override
  String get flashcardsLayoutStepReveal => 'Reveal the answer step by step';

  @override
  String get flashcardsLayoutStepRevealHint =>
      'The back appears first; each extra field opens with a tap.';

  @override
  String flashcardsRevealNext(String field) {
    return 'Show $field';
  }

  @override
  String flashcardsMediaTooLarge(int mb) {
    return 'This file is larger than $mb MB.';
  }

  @override
  String get flashcardsImage => 'Image';

  @override
  String get flashcardsAudio => 'Audio';

  @override
  String get flashcardsAddImage => 'Add image';

  @override
  String get flashcardsAddAudio => 'Add audio';

  @override
  String get flashcardsPlayAudio => 'Play recording';

  @override
  String get flashcardsAudioUnavailable => 'This recording cannot be played on this device.';

  @override
  String get flashcardsCustomFields => 'Your fields';

  @override
  String get flashcardsTemplates => 'Templates';

  @override
  String flashcardsNewFieldName(int n) {
    return 'Field $n';
  }

  @override
  String get flashcardsAddField => 'Add field';

  @override
  String get flashcardsFieldName => 'Field name';

  @override
  String get flashcardsFieldLangDefault => 'Side language';

  @override
  String get flashcardsTemplateConfirm =>
      'The template sets how fields are shown and adds its fields. Your cards and existing fields stay as they are.';

  @override
  String get flashcardsApplyTemplate => 'Apply';

  @override
  String get templateVocabulary => 'Vocabulary';

  @override
  String get templateTwoTranslations => 'Word with two translations';

  @override
  String get templateQuestionAnswer => 'Question and answer';

  @override
  String get templateDefinition => 'Term and definition';

  @override
  String get templateGrammar => 'Grammar rule';

  @override
  String get templateFieldPlural => 'Plural';

  @override
  String get templateFieldTranslation2 => 'Second translation';

  @override
  String get templateFieldSynonyms => 'Synonyms';

  @override
  String get templateFieldRule => 'Rule';

  @override
  String get deckCategory => 'Level or topic';

  @override
  String get deckCategoryHint => 'e.g. A1, Medicine';

  @override
  String get flashcardsSearchAll => 'Search all cards';

  @override
  String get flashcardsSearchAllHint => 'Word, translation, example, note, tag…';

  @override
  String get flashcardsAllDecks => 'All decks';

  @override
  String get flashcardsAllLanguages => 'All languages';

  @override
  String get flashcardsLangUnset => 'Language not set';

  @override
  String get flashcardsLevelUnset => 'No level or topic';

  @override
  String get flashcardsByLanguage => 'Progress by language';

  @override
  String get flashcardsByLevel => 'Progress by level or topic';

  @override
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct) {
    return '$decks decks · $cards cards · $mature mature · $due due · $correct correct (30 days)';
  }

  @override
  String get flashcardsRecord => 'Record';

  @override
  String get flashcardsRecording => 'Recording…';

  @override
  String get flashcardsRecordStop => 'Stop and keep';

  @override
  String get flashcardsMicDenied =>
      'Microphone access is off. Allow it in the system settings to record.';

  @override
  String get flashcardsRecordFailed => 'Recording isn\'t available on this device.';

  @override
  String get soundsTitle => 'Sounds';

  @override
  String get soundsNature => 'Nature';

  @override
  String get soundsNoise => 'Focus noise';

  @override
  String get soundRain => 'Rain';

  @override
  String get soundStorm => 'Thunderstorm';

  @override
  String get soundRiver => 'River';

  @override
  String get soundOcean => 'Ocean waves';

  @override
  String get soundFire => 'Campfire';

  @override
  String get soundForest => 'Forest birds';

  @override
  String get soundNight => 'Summer night';

  @override
  String get soundWhite => 'White noise';

  @override
  String get soundPink => 'Pink noise';

  @override
  String get soundBrown => 'Brown noise';

  @override
  String get soundsPlay => 'Play';

  @override
  String get soundsSleep => 'Sleep timer';

  @override
  String get soundsSleepOff => 'Off';

  @override
  String soundsSleepAt(String time) {
    return 'Stops at $time';
  }

  @override
  String soundsMixFull(int count) {
    return 'Up to $count sounds can play at once.';
  }

  @override
  String get soundsHint => 'Tap a sound to start. Mix several and set each volume.';

  @override
  String get soundsMixer => 'Mix';

  @override
  String soundsVolumeOf(String name) {
    return '$name volume';
  }

  @override
  String get soundsChannel => 'Nature sounds';

  @override
  String get settingsEndTone => 'Timer end sound';

  @override
  String get toneGentle => 'Gentle beeps';

  @override
  String get toneBeeps => 'Beeps';

  @override
  String get toneWood => 'Wood knock';

  @override
  String get toneBird => 'Bird call';

  @override
  String get toneStream => 'Stream';

  @override
  String get toneSystem => 'Phone\'s sound';

  @override
  String get speechOnPhone => 'On this phone';

  @override
  String get speechAllLanguages => 'All languages';

  @override
  String get speechSearchLanguage => 'Search languages';

  @override
  String get speechGetVoices => 'Download more voices';

  @override
  String get speechGetVoicesHint =>
      'Languages without a voice can be downloaded in the phone\'s speech settings.';

  @override
  String get speechSettingsFailed => 'Couldn\'t open the speech settings on this phone.';

  @override
  String get speechVoiceMissing => 'No voice installed';

  @override
  String get speechPause => 'Pause between repeats';

  @override
  String speechSeconds(String seconds) {
    return '$seconds s';
  }

  @override
  String get speechExample => 'Read the example with the answer';

  @override
  String get flashListen => 'Listen';

  @override
  String get flashListenNext => 'Next card';

  @override
  String get flashListenEmpty => 'No cards to listen to.';

  @override
  String get flashViewTable => 'Table';

  @override
  String get flashViewCards => 'Cards';

  @override
  String get flashSwapSides => 'Swap columns';

  @override
  String get flashSort => 'Sort';

  @override
  String get flashSortNewest => 'Newest first';

  @override
  String get flashSortAlpha => 'A to Z';

  @override
  String get flashSortDue => 'Due first';

  @override
  String get flashSortHard => 'Hardest first';

  @override
  String get flashPasteCards => 'Paste cards';

  @override
  String get flashClipboardEmpty => 'The clipboard has no text.';

  @override
  String get flashMenuAdd => 'Add cards';

  @override
  String get flashMenuDeck => 'Deck';

  @override
  String get flashToday => 'Today';

  @override
  String get flashStudyNow => 'Study';

  @override
  String flashTodayAnswered(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards answered',
      one: '1 card answered',
      zero: 'No cards answered',
    );
    return '$_temp0';
  }

  @override
  String get soundForestRain => 'Rain in the forest';

  @override
  String get autoBackupTitle => 'Automatic backups';

  @override
  String get autoBackupDesc => 'Every day on this phone; the last 7 are kept';

  @override
  String get autoBackupHint =>
      'These copies stay on this phone and are removed if the app is uninstalled. To move to a new phone, use “Back up” to save a file.';

  @override
  String get autoBackupNone => 'No automatic backup yet. The first one is made today.';

  @override
  String get autoBackupRestore => 'Restore';

  @override
  String autoBackupConfirm(String date) {
    return 'Replace all current data with the backup from $date?';
  }

  @override
  String get autoBackupRestored => 'Restored.';

  @override
  String get errorLogTitle => 'Error log';

  @override
  String get errorLogHint =>
      'If something goes wrong, it is noted here: only the kind of error and where in the code, never your content. Share it to help fix the problem.';

  @override
  String get errorLogEmpty => 'No errors recorded.';

  @override
  String get errorLogClear => 'Clear';

  @override
  String get soundsWithFocus => 'Play with focus sessions';

  @override
  String get soundsWithFocusHint => 'Your mix starts with a focus session and pauses at breaks.';

  @override
  String get soundsSavedMixes => 'Saved mixes';

  @override
  String get soundsSaveMix => 'Save this mix';

  @override
  String get soundsMixNameHint => 'Name, e.g. Rainy library';

  @override
  String soundsDeleteMix(String name) {
    return 'Delete the mix “$name”?';
  }

  @override
  String get settingsReviewReminderHint => 'Once a day, only when cards are due';

  @override
  String get settingsReviewTime => 'Reminder time';

  @override
  String get shortcutFocus => 'Focus';

  @override
  String get shortcutNewTask => 'New task';

  @override
  String get shortcutReview => 'Review cards';

  @override
  String get shortcutSounds => 'Nature sounds';

  @override
  String get myDayTitle => 'Start my day';

  @override
  String get myDayHint => 'Your day at a glance, then one tap to focus';

  @override
  String myDayTasks(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tasks for today',
      one: '1 task for today',
      zero: 'No tasks for today',
    );
    return '$_temp0';
  }

  @override
  String get myDayNoEvents => 'No more events today';

  @override
  String myDayNextEvent(String title, String time) {
    return 'Next: $title at $time';
  }

  @override
  String myDayHabits(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count habits left',
      one: '1 habit left',
      zero: 'All habits done',
    );
    return '$_temp0';
  }

  @override
  String get myDayBeginFocus => 'Begin with a focus session';

  @override
  String get hijriMonth1 => 'Muharram';

  @override
  String get hijriMonth2 => 'Safar';

  @override
  String get hijriMonth3 => 'Rabi al-Awwal';

  @override
  String get hijriMonth4 => 'Rabi al-Thani';

  @override
  String get hijriMonth5 => 'Jumada al-Ula';

  @override
  String get hijriMonth6 => 'Jumada al-Akhirah';

  @override
  String get hijriMonth7 => 'Rajab';

  @override
  String get hijriMonth8 => 'Shaban';

  @override
  String get hijriMonth9 => 'Ramadan';

  @override
  String get hijriMonth10 => 'Shawwal';

  @override
  String get hijriMonth11 => 'Dhu al-Qadah';

  @override
  String get hijriMonth12 => 'Dhu al-Hijjah';

  @override
  String hijriDate(int day, String month, int year) {
    return '$day $month $year AH';
  }

  @override
  String get settingsHijri => 'Hijri dates';

  @override
  String get settingsHijriHint => 'Shown in the calendar and on the home screen (Umm al-Qura)';

  @override
  String studyStreakDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '1 day',
    );
    return '$_temp0';
  }

  @override
  String studyGoalProgress(int done, int goal) {
    return '$done of $goal cards today';
  }

  @override
  String get studyGoalReached => 'Daily goal reached. Well done!';

  @override
  String get studyWeekTitle => 'Your week';

  @override
  String studyWeekCards(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards answered in 7 days',
      one: '1 card answered in 7 days',
      zero: 'No cards answered in 7 days',
    );
    return '$_temp0';
  }

  @override
  String studyWeekFocus(String duration) {
    return '$duration of focus in 7 days';
  }

  @override
  String studyStreakLine(int current, int best) {
    return 'Streak: $current · Best: $best';
  }

  @override
  String get studyGoalTitle => 'Daily goal (cards)';

  @override
  String get studyGoalOff => 'Off';

  @override
  String get focusDndTitle => 'Do Not Disturb while focusing';

  @override
  String get focusDndHint => 'Turns on for each focus session and back off at the break';

  @override
  String get focusDndNeedsAccess => 'Allow access in the phone settings to use this';

  @override
  String get voiceInput => 'Speak to type';

  @override
  String get voiceInputPrompt => 'Speak now';

  @override
  String get voiceInputUnavailable =>
      'Voice typing isn’t available on this phone. Install or turn on a speech service (for example Speech Recognition & Synthesis by Google).';

  @override
  String get prayerFajr => 'Fajr';

  @override
  String get prayerSunrise => 'Sunrise';

  @override
  String get prayerDhuhr => 'Dhuhr';

  @override
  String get prayerAsr => 'Asr';

  @override
  String get prayerMaghrib => 'Maghrib';

  @override
  String get prayerIsha => 'Isha';

  @override
  String get prayerMethodMwl => 'Muslim World League';

  @override
  String get prayerMethodUmmAlQura => 'Umm al-Qura, Makkah';

  @override
  String get prayerMethodEgypt => 'Egyptian General Authority';

  @override
  String get prayerMethodJordan => 'Jordan, Ministry of Awqaf';

  @override
  String get prayerMethodKarachi => 'University of Islamic Sciences, Karachi';

  @override
  String get prayerMethodIsna => 'Islamic Society of North America';

  @override
  String get prayerMethodGulf => 'Gulf region';

  @override
  String get prayerMethodKuwait => 'Kuwait';

  @override
  String get prayerMethodQatar => 'Qatar';

  @override
  String get prayerMethodTurkey => 'Türkiye, Diyanet';

  @override
  String get prayerMethodSingapore => 'Singapore, Malaysia, Indonesia';

  @override
  String get prayerMethodFrance => 'France (12°)';

  @override
  String get prayerMethodRussia => 'Russia, Spiritual Administration';

  @override
  String prayerNotifTitle(String name) {
    return 'Time for $name';
  }

  @override
  String prayerNotifBody(String time) {
    return 'Prayer time · $time';
  }

  @override
  String get prayerTitle => 'Prayer times';

  @override
  String get prayerOffHint =>
      'Choose your city to see prayer times. They are calculated on the phone; no location access is needed.';

  @override
  String get prayerChooseCity => 'Choose city';

  @override
  String get prayerCity => 'City';

  @override
  String get prayerCitySearch => 'Search for a city';

  @override
  String get prayerMethod => 'Calculation method';

  @override
  String get prayerHanafiAsr => 'Hanafi Asr (later time)';

  @override
  String get prayerReminders => 'Notify at each prayer time';

  @override
  String get prayerPauseFocus => 'Pause focus at prayer time';

  @override
  String get prayerPauseFocusHint => 'A running session pauses; continue after the prayer';

  @override
  String get prayerTurnOff => 'Turn off prayer times';

  @override
  String get prayerAccuracyNote =>
      'Calculated times can differ by a few minutes from your local mosque.';

  @override
  String prayerNext(String name, String time) {
    return '$name at $time';
  }

  @override
  String get importAnkiNewFormat =>
      'This Anki file uses the newest format. In Anki, export again with “Support older Anki versions” turned on, then import that file.';

  @override
  String get importTemplate => 'Spreadsheet template';

  @override
  String get importTemplateFront => 'apple';

  @override
  String get importTemplateBack => 'a round fruit';

  @override
  String get importTemplateExample => 'I eat an apple every day.';

  @override
  String get importTemplateTag => 'food';

  @override
  String get starterTitle => 'Starter decks';

  @override
  String get starterHint => 'Add one to try studying right away. You can edit or delete it later.';

  @override
  String get starterAdd => 'Add';

  @override
  String get starterWords => 'Everyday English words (Arabic)';

  @override
  String get starterCapitals => 'World capitals';

  @override
  String get starterElements => 'Chemical elements';

  @override
  String get settingsAccent => 'Accent colour';

  @override
  String get accentViolet => 'Violet';

  @override
  String get accentBlue => 'Blue';

  @override
  String get accentTeal => 'Teal';

  @override
  String get accentGreen => 'Green';

  @override
  String get accentRose => 'Rose';

  @override
  String get accentAmber => 'Amber';

  @override
  String get settingsFlashTextSize => 'Flashcard text size';

  @override
  String get settingsFlashTextSample => 'Example';

  @override
  String get widgetStartFocus => 'Tap to focus';

  @override
  String widgetFocusUntil(String time) {
    return 'Focus until $time';
  }

  @override
  String get widgetNoCardsDue => 'Cards: all done';

  @override
  String get faqMyDayQ => 'What does “Start my day” do?';

  @override
  String get faqMyDayA =>
      'Once a day the home screen offers it: see today’s tasks, the next event, habits left and cards due, then begin a focus session with one tap. Long-press the app icon for quick actions, or add the home screen widget to see focus time and cards due.';

  @override
  String get faqTasksQ => 'How do I add a task with a reminder?';

  @override
  String get faqTasksA =>
      'Tap New task on Home or + in Tasks. Type the title or speak it with the microphone, then set a due date, a time and a reminder. Overdue tasks are listed first.';

  @override
  String get faqFocusQ => 'How does the focus timer work?';

  @override
  String get faqFocusA =>
      'Choose Pomodoro, a countdown or open time and press Start; breaks can follow automatically. In Settings you can pick the end sound, turn on Do Not Disturb while focusing, and play your nature sounds with each session.';

  @override
  String get faqSoundsQ => 'Can I mix nature sounds?';

  @override
  String get faqSoundsA =>
      'Turn on up to six real recordings, set each volume and save the mix by name. They keep playing in the background, and a sleep timer can stop them. No music is used.';

  @override
  String get faqCalendarQ => 'Can the calendar show Hijri dates?';

  @override
  String get faqCalendarA =>
      'Yes. Hijri dates (Umm al-Qura) show automatically in Arabic and can be turned on in Settings for any language. Events, tasks with due dates and project milestones appear together.';

  @override
  String get faqFlashcardsQ => 'How does review decide which cards I see?';

  @override
  String get faqFlashcardsA =>
      'Cards you know well come back after longer gaps and cards you miss come back soon (spaced repetition). Rate each answer Again, Hard, Good or Easy. Set a daily goal and keep your streak on the Today card. Set an exam date in a deck to see the days left and how many new cards to learn each day. Sort by \"My order\" to drag cards into place, tap the speaker on either side to hear it, and set speed and repeats in the Speech menu.';

  @override
  String get faqImportQ => 'Can I bring cards from Anki or Excel?';

  @override
  String get faqImportA =>
      'Yes. In a deck choose Import, then pick a file: Anki (.apkg), Excel (.xlsx) or CSV, and match the columns. Use “Spreadsheet template” to write cards on a computer. Pictures and sounds inside Anki files are not imported.';

  @override
  String get faqNotesQ => 'What can notes do?';

  @override
  String get faqNotesA =>
      'Write freely with checklists and formatting, pin or favourite important notes, add tags and link notes to tasks. The microphone button lets you dictate. A new note can start from a template (lecture, book summary, journal, weekly plan), and the picture button adds photos.';

  @override
  String get faqHabitsQ => 'How are habit streaks counted?';

  @override
  String get faqHabitsA =>
      'A day counts when you reach the habit’s target on a scheduled day. Pausing a habit keeps the streak safe. Each habit can have its own reminder time.';

  @override
  String get faqGoalsQ => 'How do goals track progress?';

  @override
  String get faqGoalsA =>
      'Give a goal a target amount and unit, then log progress. Its card shows how far you are and how much is left before the deadline.';

  @override
  String get faqProjectsQ => 'What are projects for?';

  @override
  String get faqProjectsA =>
      'Group tasks under a project, add milestones with dates and follow overall progress. Milestones also appear in the calendar.';

  @override
  String get faqInsightsQ => 'What does Insights show?';

  @override
  String get faqInsightsA =>
      'Your focus time, finished tasks and study over days and weeks, with gentle suggestions. Everything is calculated on your phone.';

  @override
  String get faqSpacesQ => 'Where are all the sections?';

  @override
  String get faqSpacesA =>
      'Spaces lists every part of the app (notes, decks, habits, goals, projects, sounds and more) so the main bar stays simple.';

  @override
  String get faqBackupQ => 'How are my data backed up?';

  @override
  String get faqBackupA =>
      'Every day the app quietly keeps an encrypted copy on this phone and keeps the last 7. In Settings you can also export a password-protected backup file and restore it on another phone.';

  @override
  String get faqPrayerQ => 'How do prayer times work?';

  @override
  String get faqPrayerA =>
      'Choose your city in Settings → Prayer times. Times are calculated on the phone with the method used there, and you can change the method and the Asr school. You can be notified at each prayer, and a running focus session pauses.';

  @override
  String get faqPrivacyQ => 'Where are my data stored?';

  @override
  String get faqPrivacyA =>
      'On your phone only, in an encrypted database. There is no account and no tracking. The internet is used only by features you turn on yourself, such as the optional assistant.';

  @override
  String get faqAssistantQ => 'What is the assistant?';

  @override
  String get faqAssistantA =>
      'An optional helper you connect to your own AI service in Settings. It is off by default and asks before sending any note text.';

  @override
  String get tourPlanTitle => 'Plan your day';

  @override
  String get tourPlanBody =>
      'Tasks, calendar and habits in one calm place. Begin each morning with “Start my day”.';

  @override
  String get tourFocusTitle => 'Focus deeply';

  @override
  String get tourFocusBody =>
      'Timed sessions with real nature sounds, Do Not Disturb and gentle end tones.';

  @override
  String get tourLearnTitle => 'Learn for good';

  @override
  String get tourLearnBody =>
      'Flashcards with spaced repetition, speech in many languages, and imports from Anki or Excel.';

  @override
  String get helpTitle => 'Help & questions';

  @override
  String get helpOpen => 'Open';

  @override
  String get helpTour => 'Take the tour';

  @override
  String get tourNext => 'Next';

  @override
  String get tourDone => 'Let’s begin';

  @override
  String get transferColTitle => 'Title';

  @override
  String get transferColNotes => 'Notes';

  @override
  String get transferColBody => 'Text';

  @override
  String get transferColDue => 'Due date';

  @override
  String get transferColPriority => 'Priority (0-3)';

  @override
  String get transferColDone => 'Done';

  @override
  String get transferColProject => 'Project';

  @override
  String get transferColCategory => 'Category';

  @override
  String get transferTitle => 'Import and export';

  @override
  String get transferSaveAs => 'Save as';

  @override
  String get transferImport => 'Import from a file';

  @override
  String get transferImportTasksHint =>
      'Excel, CSV or a table in Word. Columns: title, due date (2026-12-31), priority 0-3, done, project, notes. Tasks already in the app are skipped.';

  @override
  String get transferImportNotesHint =>
      'Word, Markdown or text files become a note. Excel or CSV: one note per row (title, text).';

  @override
  String get transferSaved => 'File saved';

  @override
  String get transferFailed => 'The file could not be made. Nothing was changed.';

  @override
  String get transferUnsupported =>
      'This file can’t be read here. Use Excel, CSV, Word, Markdown or text.';

  @override
  String transferImported(int added) {
    String _temp0 = intl.Intl.pluralLogic(
      added,
      locale: localeName,
      other: '$added added',
      one: '1 added',
      zero: 'Nothing new to add',
    );
    return '$_temp0';
  }

  @override
  String get transferFormatText => 'Text';

  @override
  String get transferAllNotes => 'All notes';

  @override
  String get transferThisNote => 'This note';

  @override
  String get transferDeckFormats => 'Save as Excel, Word or PDF';

  @override
  String get faqFilesQ => 'Can I use Excel, Word or PDF files?';

  @override
  String get faqFilesA =>
      'Yes. Tasks and Notes have an import and export button (two arrows) at the top, and every deck has it in its menu. Save as Excel, CSV, Word or PDF, or bring in Excel, CSV, Word, Markdown or text files. Column names can be in any of the app’s languages, and files you saved can always be imported again.';

  @override
  String get tplLecture => 'Lecture';

  @override
  String get tplBook => 'Book summary';

  @override
  String get tplJournal => 'Journal';

  @override
  String get tplWeek => 'Weekly plan';

  @override
  String get tplLectureBody => '## Key points\n- \n\n## Questions\n- [ ] \n\n## Summary\n';

  @override
  String get tplBookBody =>
      '## Main idea\n\n## What I learned\n- \n\n## Quotes\n> \n\n## To apply\n- [ ] \n';

  @override
  String get tplJournalBody => '## Grateful for\n- \n\n## Today’s focus\n- [ ] \n\n## Notes\n';

  @override
  String get tplWeekBody =>
      '## Goals this week\n- [ ] \n\n### Saturday\n- [ ] \n\n### Sunday\n- [ ] \n\n### Monday\n- [ ] \n\n### Tuesday\n- [ ] \n\n### Wednesday\n- [ ] \n\n### Thursday\n- [ ] \n\n### Friday\n- [ ] \n';

  @override
  String get tplHint => 'Start from a template';

  @override
  String get noteImage => 'Picture';

  @override
  String get noteAddImage => 'Add picture';

  @override
  String get noteImageUnreadable => 'This file isn’t a picture the app can read.';

  @override
  String get noteImageTooLarge => 'This picture is too large.';

  @override
  String get examSet => 'Set exam date';

  @override
  String get examDate => 'Exam date';

  @override
  String get examToday => 'Exam today. Good luck!';

  @override
  String examInDays(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Exam in $count days',
      one: 'Exam tomorrow',
    );
    return '$_temp0';
  }

  @override
  String examNewPerDay(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'learn $count new cards a day',
      one: 'learn 1 new card a day',
    );
    return '$_temp0';
  }

  @override
  String get examAllLearnt => 'all cards learnt, keep reviewing';

  @override
  String examRaiseLimit(int count) {
    return 'Show $count new cards a day';
  }

  @override
  String get backupDriveHint =>
      'To keep a copy online, choose Google Drive (or another cloud app) on the save screen that opens next.';

  @override
  String get flashShareDeck => 'Share deck with a friend';

  @override
  String get flashSortManual => 'My order (drag)';

  @override
  String get flashReorderHint => 'Hold the handle and drag a card to move it.';

  @override
  String get flashReorderNeedsAll => 'Clear the search and filters to drag cards.';

  @override
  String get flashDragHandle => 'Drag to move';

  @override
  String get reportTitle => 'Monthly report';

  @override
  String get reportFocus => 'Focus time';

  @override
  String reportSessions(int count) {
    return '$count sessions';
  }

  @override
  String reportBestDay(String day, String time) {
    return 'Best day: $day ($time)';
  }

  @override
  String reportActiveDays(int count) {
    return '$count active days';
  }

  @override
  String get reportCards => 'Cards reviewed';

  @override
  String reportCardsKnown(String percent) {
    return '$percent remembered';
  }

  @override
  String get reportTasks => 'Tasks completed';

  @override
  String get reportHabits => 'Habit check-ins';

  @override
  String get reportEmpty => 'Nothing recorded this month yet.';

  @override
  String get reportSave => 'Save as PDF or Word';

  @override
  String get reportPrevMonth => 'Previous month';

  @override
  String get reportNextMonth => 'Next month';

  @override
  String get careTitle => 'Care of your phone and data';

  @override
  String get storageTitle => 'Storage';

  @override
  String get storageSubtitle => 'What takes space and a clean-up of unused pictures';

  @override
  String get storagePictures => 'Pictures in notes';

  @override
  String get storageCardMedia => 'Images and audio in cards';

  @override
  String get storageText => 'Notes text';

  @override
  String get storageFree => 'Free on your phone';

  @override
  String get storageLow =>
      'Your phone is almost full. Free some space so backups and reminders keep working.';

  @override
  String storageUnused(int count, String size) {
    return '$count unused pictures ($size)';
  }

  @override
  String get storageNoUnused => 'No unused pictures. Everything is tidy.';

  @override
  String get storageClean => 'Remove unused pictures';

  @override
  String storageCleaned(int count) {
    return '$count pictures removed';
  }

  @override
  String get storageHint =>
      'Pictures only count as unused when no note shows them, including notes in the trash.';

  @override
  String get batteryTitle => 'Keep reminders working';

  @override
  String get batterySubtitle => 'Some phones stop apps in the background. Check yours.';

  @override
  String get batteryStatusOk =>
      'Battery saving does not limit this app. Reminders and sounds should arrive on time.';

  @override
  String get batteryStatusLimited =>
      'Battery saving may stop this app in the background, so reminders and sounds can be late or missing.';

  @override
  String get batteryOpen => 'Open battery settings';

  @override
  String get batteryOpenApp => 'Open app settings';

  @override
  String get batteryGeneric =>
      'In the battery settings choose this app and set it to Unrestricted (or Don\'t optimize).';

  @override
  String get batteryXiaomi =>
      'Xiaomi / Redmi / POCO: also open Security › Permissions › Autostart and switch this app on, and set Battery saver to No restrictions.';

  @override
  String get batteryOppo =>
      'Oppo / Realme / OnePlus: open Battery › this app and allow background activity and auto-launch; lock the app in the recent apps list.';

  @override
  String get batterySamsung =>
      'Samsung: Battery › Background usage limits: remove this app from Sleeping apps and Deep sleeping apps.';

  @override
  String get batteryHuawei =>
      'Huawei / Honor: App launch › this app › manage manually, and allow auto-launch, secondary launch and run in background.';

  @override
  String get batteryVivo =>
      'Vivo / iQOO: Battery › Background power consumption › allow this app, and enable auto-start in the permissions.';

  @override
  String get whatsNewTitle => 'What\'s new';

  @override
  String get whatsNewSubtitle => 'The latest changes in a few lines';

  @override
  String get whatsNewDone => 'Got it';

  @override
  String get whatsNewOrderTitle => 'Drag cards into your own order';

  @override
  String get whatsNewOrderBody =>
      'In a deck choose Sort › My order, then hold the handle and drag.';

  @override
  String get whatsNewSpeechTitle => 'A speaker on every card side';

  @override
  String get whatsNewSpeechBody =>
      'Tap it to hear the word or the translation. Speed, repeats and voice are in the review menu. Language is detected from the text.';

  @override
  String get whatsNewReportTitle => 'Monthly report';

  @override
  String get whatsNewReportBody =>
      'In Insights tap the report icon to see the month and save it as PDF or Word.';

  @override
  String get whatsNewCareTitle => 'Care of your phone and data';

  @override
  String get whatsNewCareBody =>
      'Settings now has a storage page with picture clean-up and a battery guide for your phone brand.';

  @override
  String get whatsNewSoundTitle => 'Calmer sounds';

  @override
  String get whatsNewSoundBody =>
      'Nature sounds are softer and quieter, and the picture cards are nicer.';

  @override
  String autoBackupCheckOk(String date) {
    return 'Checked $date: the latest backup opens correctly.';
  }

  @override
  String autoBackupCheckFixed(String date) {
    return 'Checked $date: a damaged backup was found and replaced with a new one.';
  }

  @override
  String autoBackupCheckFailed(String date) {
    return 'Checked $date: the latest backup could not be opened. Save a backup file yourself from Settings.';
  }

  @override
  String smartReviewTimeTitle(String time) {
    return 'You usually study around $time';
  }

  @override
  String get smartReviewTimeUse => 'Use it';

  @override
  String get widgetNewNote => 'New note';

  @override
  String get noteConnections => 'Tags, links and tasks';

  @override
  String get navCards => 'Cards';

  @override
  String get studyAnswerWay => 'How to answer';

  @override
  String get studyMorePractice => 'Extra practice';

  @override
  String get studySessionSettings => 'Session settings';

  @override
  String get focusAdjustTitle => 'Your session';

  @override
  String get focusPresetsTitle => 'Ready-made';

  @override
  String get focusPresetStudy => 'Study';

  @override
  String get focusPresetDeep => 'Deep work';

  @override
  String get focusPresetQuick => 'Quick sprint';

  @override
  String get focusPresetReading => 'Reading';

  @override
  String get focusPresetWorkout => 'Workout rounds';

  @override
  String get focusAdjustMinutes => 'Focus length';

  @override
  String get focusAdjustBreak => 'Break length';

  @override
  String get focusAdjustRounds => 'Rounds';

  @override
  String get focusRoundsOpen => 'No limit';

  @override
  String focusMinutesShort(String n) {
    return '$n min';
  }

  @override
  String get focusTapToAdjust => 'Tap to change the time';

  @override
  String get flashArrangeDecks => 'Arrange decks';

  @override
  String get flashDeckActions => 'Deck options';

  @override
  String get starterBrowse => 'Ready-made decks';

  @override
  String get starterBrowseHint => 'Add one in a tap and start learning';

  @override
  String get dashOpenDecks => 'Open your cards';

  @override
  String speechVoiceNumber(String n) {
    return 'Voice $n';
  }

  @override
  String focusFlowBreakOffer(String m) {
    return 'Good flow. Rest $m min?';
  }

  @override
  String get focusFlowBreakStart => 'Start break';

  @override
  String tasksFinishAt(String time) {
    return 'Start now and you finish everything by $time';
  }

  @override
  String get focusCalmPacing => 'Calm pacing';

  @override
  String get focusCalmPacingHint => 'Whole minutes and the ring only, no ticking seconds';

  @override
  String get focusFlipHint => 'Turn the phone face down to start';

  @override
  String get focusImmersive => 'Immersive mode';

  @override
  String get focusImmersiveBlack => 'Pure black (saves battery)';

  @override
  String get focusFlipToFocus => 'Flip to focus';

  @override
  String get focusFlipToFocusHint => 'In immersive mode: face down starts, picking it up pauses';

  @override
  String get guardTitle => 'Distraction guard';

  @override
  String get guardSubtitle => 'Pause distracting apps while you focus';

  @override
  String get guardSwitch => 'Pause distracting apps';

  @override
  String get guardSwitchHint => 'During focus sessions and your Time Guard hours';

  @override
  String get guardNeedsAccess => 'Needs the accessibility switch: tap to turn it on';

  @override
  String get guardDisclosureTitle => 'How the guard works';

  @override
  String get guardDisclosureBody =>
      'To pause the apps you choose, Deep Focus uses Android\'s accessibility service to see which app is open. With \"Close Shorts and Reels\" on, it also checks whether a short-video player is on screen.\n\nIt reads no text, stores nothing it sees and sends nothing anywhere: everything stays on your phone. You can turn it off at any time in Accessibility settings.';

  @override
  String get guardAgree => 'Agree and open settings';

  @override
  String get guardModeGentle => 'Gentle';

  @override
  String get guardModeStrict => 'Strict';

  @override
  String get guardGentleHint => 'A 5-second breathing pause, then you choose';

  @override
  String get guardStrictHint => 'Chosen apps stay closed until focus time ends';

  @override
  String get guardApps => 'Apps to pause';

  @override
  String get guardAppsAllowed => 'Allowed apps';

  @override
  String guardAppsCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'None chosen yet',
    );
    return '$_temp0';
  }

  @override
  String get guardAllowlist => 'Allow only chosen apps';

  @override
  String get guardAllowlistHint =>
      'Every other app is paused; calls, settings and the keyboard always work';

  @override
  String get guardShorts => 'Close Shorts and Reels';

  @override
  String get guardShortsHint => 'Any time the guard is on. Best effort: these apps change often';

  @override
  String get guardSchedule => 'Time Guard';

  @override
  String get guardScheduleHint => 'Also guard on set days and hours, like school or work';

  @override
  String get guardFrom => 'From';

  @override
  String get guardTo => 'To';

  @override
  String get guardSearchApps => 'Search apps';

  @override
  String get guardNoApps => 'No apps found';

  @override
  String get guardPrivacy =>
      'Works on your phone only: the guard sees which app is open, never what is in it, and sends nothing.';

  @override
  String get guardBreathe => 'Breathe in… and out';

  @override
  String get guardQuestion => 'Do you need this app now?';

  @override
  String get guardBackToFocus => 'Back to focus';

  @override
  String get guardOpenFive => 'Open for 5 minutes';

  @override
  String get guardStrictBody => 'This app is paused until your focus time ends.';

  @override
  String get guardShortsClosed => 'Short videos are closed while the guard is on';

  @override
  String get faqGuardQ => 'How do I stop distracting apps while I focus?';

  @override
  String get faqGuardA =>
      'Open Focus → the timer settings → Distraction guard. Choose the apps, then Gentle (a 5-second breath and the question \"Do you need this app now?\") or Strict (they stay closed). It works during focus sessions and, with Time Guard, on the days and hours you set. \"Allow only chosen apps\" pauses everything else; calls, settings and the keyboard always work. Android asks you once to turn the guard on in Accessibility settings. It only sees which app is open and sends nothing.';

  @override
  String notesMovedToNotebook(String name) {
    return 'Moved to $name';
  }

  @override
  String get notesDragHint => 'Hold a note and drag it onto a notebook';

  @override
  String get guardReviewCards => 'Review cards instead';

  @override
  String guardDueNudge(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cards are waiting for you',
      one: '1 card is waiting for you',
    );
    return '$_temp0';
  }

  @override
  String get guardEmergencyHold => 'Emergency: hold 10 seconds';

  @override
  String guardEmergencyHolding(Object n) {
    return 'Keep holding… $n';
  }

  @override
  String get guardWeekTitle => 'This week';

  @override
  String guardWeekPaused(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pauses',
      one: '1 pause',
    );
    return '$_temp0';
  }

  @override
  String guardWeekReturned(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'back to focus $count times',
      one: 'back to focus once',
    );
    return '$_temp0';
  }

  @override
  String get wordsTitle => 'Rename words';

  @override
  String get wordsSubtitle => 'Use your own word for any text in the app';

  @override
  String get wordsHint =>
      'Tap a text to change it. Your words apply to this language only and are kept in backups.';

  @override
  String get wordsSearch => 'Search texts';

  @override
  String get wordsChangedOnly => 'Changed only';

  @override
  String wordsOriginal(String text) {
    return 'Original: $text';
  }

  @override
  String get wordsReset => 'Use original';

  @override
  String get wordsResetAll => 'Reset all words';

  @override
  String get wordsResetAllConfirm => 'Every text in this language goes back to the original.';

  @override
  String get wordsNone => 'No text found';

  @override
  String get settingsLanguageSearch => 'Search languages';

  @override
  String get settingsLanguageNoMatch => 'No language matches';

  @override
  String get soundsMyMusic => 'Your audio';

  @override
  String get soundsMusicHint =>
      'Play an audio file from your phone. Nothing is copied or uploaded.';

  @override
  String get soundsChooseMusic => 'Choose audio';

  @override
  String get soundsRemoveMusic => 'Remove audio';

  @override
  String get wordPacksTitle => 'Word packs';

  @override
  String get wordPacksHint =>
      'Word lists by topic. Download only the language you want, then edit or delete the cards freely.';

  @override
  String get wordPacksFailed => 'Could not download. Check the connection.';

  @override
  String get wordPacksEmpty => 'Words for this language are still being prepared.';
}

/// The translations for English, as used in the United Kingdom (`en_GB`).
class AppLocalizationsEnGb extends AppLocalizationsEn {
  AppLocalizationsEnGb() : super('en_GB');

  @override
  String get actionCustomize => 'Customise';

  @override
  String get projectColor => 'Colour';

  @override
  String get notesViewFavorites => 'Favourites';

  @override
  String get noteFavorite => 'Favourite';

  @override
  String get noteUnfavorite => 'Remove from favourites';

  @override
  String get goalLinkedTasksHint => 'Each completed linked task counts as 1 towards this goal.';

  @override
  String get assistantSummarize => 'Summarise a note';

  @override
  String get settingsReduceMotionDesc => 'Minimise animations and moving backgrounds';

  @override
  String a11yProgress(int value) {
    return 'Progress $value per cent';
  }

  @override
  String a11yColor(int index) {
    return 'Colour $index';
  }

  @override
  String get assistantExtractHint =>
      'Recognised: unchecked checkboxes \"- [ ]\" and lines starting with TODO: or To do:';

  @override
  String get assistantCardsHint =>
      'Recognised: \"term: definition\", \"term — definition\" and Q:/A: line pairs';

  @override
  String get assistantSummarizing => 'Summarising…';

  @override
  String get calendarEventColor => 'Colour';

  @override
  String get calendarDefaultColor => 'Use type colour';

  @override
  String get focusDeleteConfirm =>
      'Delete this session from your history? Its time will no longer count towards your targets.';

  @override
  String get goalsHistoryAllTime =>
      'Entries from earlier periods are kept here but count only towards their own period.';

  @override
  String get habitsColor => 'Colour';

  @override
  String get notesNotebookColor => 'Colour';

  @override
  String get notesEmptyFavorites => 'Notes you mark as favourite appear here.';

  @override
  String projectSemantics(String name, int percent) {
    return '$name, $percent per cent complete';
  }

  @override
  String get taskOrganize => 'Organise';

  @override
  String get studyPracticeAll => 'Practise all cards (schedule unchanged)';

  @override
  String get studyPracticeMistakes => 'Practise recent mistakes';

  @override
  String get studyPracticeFavorites => 'Favourites';

  @override
  String get flashcardsFavorites => 'Favourites';

  @override
  String get flashcardsFavorite => 'Add to favourites';

  @override
  String get flashcardsUnfavorite => 'Remove from favourites';

  @override
  String get batteryGeneric =>
      'In the battery settings choose this app and set it to Unrestricted (or Don\'t optimise).';
}
