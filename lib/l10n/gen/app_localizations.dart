import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('pt'),
    Locale('ru'),
    Locale('zh'),
  ];

  /// Application name shown in launcher and about screen. Brand name; may stay in Latin script.
  ///
  /// In en, this message translates to:
  /// **'Future OS'**
  String get appName;

  /// Bottom navigation: dashboard tab
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom navigation: tasks tab
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get navTasks;

  /// Bottom navigation: focus timer tab
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get navFocus;

  /// Bottom navigation: calendar tab
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get navCalendar;

  /// Bottom navigation: hub with all other modules
  ///
  /// In en, this message translates to:
  /// **'Spaces'**
  String get navSpaces;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get moduleProjects;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get moduleNotes;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Flashcards'**
  String get moduleFlashcards;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get moduleGoals;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get moduleHabits;

  /// Module name for analytics
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get moduleAnalytics;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get moduleSearch;

  /// Module name for the optional productivity assistant
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get moduleAssistant;

  /// Module name
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get moduleSettings;

  /// Recently deleted items
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get moduleTrash;

  /// Subtitle on the Spaces hub
  ///
  /// In en, this message translates to:
  /// **'Everything you organize, in one place'**
  String get spacesSubtitle;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get actionSave;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get actionEdit;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get actionDone;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get actionAdd;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get actionCreate;

  /// Button / tooltip
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get actionClose;

  /// Tooltip for back navigation
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get actionBack;

  /// Snackbar action
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get actionUndo;

  /// Button: restore from trash
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get actionRestore;

  /// Button after an error
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get actionRetry;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get actionContinue;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get actionSkip;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Archive'**
  String get actionArchive;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Unarchive'**
  String get actionUnarchive;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Pin'**
  String get actionPin;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Unpin'**
  String get actionUnpin;

  /// Tooltip for overflow menu
  ///
  /// In en, this message translates to:
  /// **'More options'**
  String get actionMore;

  /// Button: clear a field or list
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get actionClear;

  /// Tooltip
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get actionSearch;

  /// Tooltip
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get actionFilter;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get actionSort;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get actionShare;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get actionImport;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get actionExport;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get actionPause;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get actionResume;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get actionStart;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get actionStop;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get actionComplete;

  /// Button: mark a completed task as not done
  ///
  /// In en, this message translates to:
  /// **'Reopen'**
  String get actionReopen;

  /// Button: permanent deletion
  ///
  /// In en, this message translates to:
  /// **'Delete forever'**
  String get actionDeleteForever;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Empty trash'**
  String get actionEmptyTrash;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get actionSelect;

  /// Option meaning no selection
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get actionNone;

  /// Button: link items
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get actionLink;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Unlink'**
  String get actionUnlink;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Customize'**
  String get actionCustomize;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get actionReset;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get actionOpen;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get actionEnable;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Disable'**
  String get actionDisable;

  /// Button for permission
  ///
  /// In en, this message translates to:
  /// **'Allow'**
  String get actionAllow;

  /// Button to decline
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get actionNotNow;

  /// Toggle to preview formatted note
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get actionPreview;

  /// Button for goal progress
  ///
  /// In en, this message translates to:
  /// **'Log progress'**
  String get actionLog;

  /// Accessibility label while content loads
  ///
  /// In en, this message translates to:
  /// **'Loading…'**
  String get stateLoading;

  /// Note save status
  ///
  /// In en, this message translates to:
  /// **'Saving…'**
  String get stateSaving;

  /// Note save status
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get stateSaved;

  /// Note save status
  ///
  /// In en, this message translates to:
  /// **'Unsaved changes'**
  String get stateUnsaved;

  /// Error state title
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get errorGenericTitle;

  /// Error state message
  ///
  /// In en, this message translates to:
  /// **'Your data is safe. Please try again.'**
  String get errorGenericMessage;

  /// Error message
  ///
  /// In en, this message translates to:
  /// **'This content could not be loaded.'**
  String get errorLoadFailed;

  /// Error snackbar
  ///
  /// In en, this message translates to:
  /// **'Could not save. Your changes are still here.'**
  String get errorSaveFailed;

  /// Form validation
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get validationRequired;

  /// Form validation
  ///
  /// In en, this message translates to:
  /// **'Please enter a title'**
  String get validationTitleRequired;

  /// Form validation
  ///
  /// In en, this message translates to:
  /// **'Please enter a name'**
  String get validationNameRequired;

  /// Form validation
  ///
  /// In en, this message translates to:
  /// **'This is too long'**
  String get validationTooLong;

  /// Form validation for events
  ///
  /// In en, this message translates to:
  /// **'The end must be after the start'**
  String get validationEndBeforeStart;

  /// Form validation for tasks
  ///
  /// In en, this message translates to:
  /// **'The start date must be before the due date'**
  String get validationStartAfterDue;

  /// Form validation
  ///
  /// In en, this message translates to:
  /// **'Enter a number greater than zero'**
  String get validationPositiveNumber;

  /// Error when linking tasks
  ///
  /// In en, this message translates to:
  /// **'This would create a circular dependency'**
  String get validationDependencyCycle;

  /// Error for invalid recurrence
  ///
  /// In en, this message translates to:
  /// **'This repeat rule is not valid'**
  String get validationInvalidRepeat;

  /// Snackbar after deleting an item
  ///
  /// In en, this message translates to:
  /// **'Moved to trash'**
  String get deletedItem;

  /// Snackbar after restoring
  ///
  /// In en, this message translates to:
  /// **'Restored'**
  String get restoredItem;

  /// Placeholder title for notes without a title
  ///
  /// In en, this message translates to:
  /// **'Untitled'**
  String get untitled;

  /// Option / label when a task has no project
  ///
  /// In en, this message translates to:
  /// **'No project'**
  String get noProject;

  /// Dialog title
  ///
  /// In en, this message translates to:
  /// **'Delete permanently?'**
  String get confirmDeleteTitle;

  /// Dialog message
  ///
  /// In en, this message translates to:
  /// **'This cannot be undone.'**
  String get confirmDeleteMessage;

  /// Dashboard greeting before noon
  ///
  /// In en, this message translates to:
  /// **'Good morning'**
  String get greetingMorning;

  /// Dashboard greeting 12:00–17:59
  ///
  /// In en, this message translates to:
  /// **'Good afternoon'**
  String get greetingAfternoon;

  /// Dashboard greeting 18:00 onwards
  ///
  /// In en, this message translates to:
  /// **'Good evening'**
  String get greetingEvening;

  /// Dashboard heading
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get dashboardTitle;

  /// Dashboard focus card title
  ///
  /// In en, this message translates to:
  /// **'Today\'s focus'**
  String get dashFocusToday;

  /// Focus minutes done of target, e.g. "45 min of 2 h". Both are formatted durations.
  ///
  /// In en, this message translates to:
  /// **'{done} of {target}'**
  String dashFocusOfTarget(String done, String target);

  /// Button on dashboard focus card
  ///
  /// In en, this message translates to:
  /// **'Start focus'**
  String get dashStartFocus;

  /// Dashboard focus card when timer is running
  ///
  /// In en, this message translates to:
  /// **'Session in progress'**
  String get dashFocusRunning;

  /// Dashboard section title
  ///
  /// In en, this message translates to:
  /// **'Due today'**
  String get dashTodayTasks;

  /// Dashboard section title: upcoming events
  ///
  /// In en, this message translates to:
  /// **'Agenda'**
  String get dashAgenda;

  /// Dashboard section title
  ///
  /// In en, this message translates to:
  /// **'Habits today'**
  String get dashHabits;

  /// Dashboard section title
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get dashGoals;

  /// Dashboard section title for flashcards
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get dashReview;

  /// Dashboard section title
  ///
  /// In en, this message translates to:
  /// **'Recent notes'**
  String get dashRecentNotes;

  /// Dashboard section with a recommendation
  ///
  /// In en, this message translates to:
  /// **'Suggestion'**
  String get dashInsight;

  /// Dashboard section action
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get dashSeeAll;

  /// Empty text on dashboard
  ///
  /// In en, this message translates to:
  /// **'Nothing due today. A clear runway.'**
  String get dashNoTasksToday;

  /// Empty text on dashboard
  ///
  /// In en, this message translates to:
  /// **'No more events today'**
  String get dashNoEvents;

  /// Empty text on dashboard
  ///
  /// In en, this message translates to:
  /// **'Create a habit to track it here'**
  String get dashNoHabits;

  /// Empty text on dashboard
  ///
  /// In en, this message translates to:
  /// **'Set a goal to see your progress'**
  String get dashNoGoals;

  /// Empty text on dashboard
  ///
  /// In en, this message translates to:
  /// **'Your latest notes will appear here'**
  String get dashNoNotes;

  /// Flashcards due count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards due} =1{1 card due} other{{count} cards due}}'**
  String dashCardsDue(int count);

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Review now'**
  String get dashReviewNow;

  /// Bottom sheet title for customizing dashboard
  ///
  /// In en, this message translates to:
  /// **'Dashboard sections'**
  String get dashCustomizeTitle;

  /// Hint in customize sheet
  ///
  /// In en, this message translates to:
  /// **'Choose what appears on your home screen.'**
  String get dashCustomizeHint;

  /// Dashboard section name in customize list
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get dashSectionFocus;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Tasks due today'**
  String get dashSectionToday;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Agenda'**
  String get dashSectionAgenda;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get dashSectionHabits;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get dashSectionGoals;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Flashcard review'**
  String get dashSectionReview;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Recent notes'**
  String get dashSectionNotes;

  /// Dashboard section name
  ///
  /// In en, this message translates to:
  /// **'Suggestions'**
  String get dashSectionInsight;

  /// Quick action
  ///
  /// In en, this message translates to:
  /// **'New task'**
  String get quickAddTask;

  /// Quick action
  ///
  /// In en, this message translates to:
  /// **'New note'**
  String get quickAddNote;

  /// Quick action
  ///
  /// In en, this message translates to:
  /// **'New event'**
  String get quickAddEvent;

  /// Quick action
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get quickStartFocus;

  /// Rule-based suggestion
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{You have 1 overdue task. Reschedule or finish it first.} other{You have {count} overdue tasks. Start with the most important one.}}'**
  String insightOverdue(int count);

  /// Rule-based suggestion
  ///
  /// In en, this message translates to:
  /// **'You are {minutes} minutes away from your daily focus target.'**
  String insightFocusGap(int minutes);

  /// Rule-based suggestion
  ///
  /// In en, this message translates to:
  /// **'Review your due flashcards now while they are fresh.'**
  String get insightCardsDue;

  /// Rule-based suggestion
  ///
  /// In en, this message translates to:
  /// **'Everything is on track. Plan tomorrow or take a mindful break.'**
  String get insightAllClear;

  /// Rule-based suggestion
  ///
  /// In en, this message translates to:
  /// **'Keep your streak: {habit} is still open today.'**
  String insightHabitStreak(String habit);

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get focusTitle;

  /// Timer mode
  ///
  /// In en, this message translates to:
  /// **'Pomodoro'**
  String get focusModePomodoro;

  /// Timer mode: count down from a chosen duration
  ///
  /// In en, this message translates to:
  /// **'Timer'**
  String get focusModeCountdown;

  /// Timer mode: count up
  ///
  /// In en, this message translates to:
  /// **'Stopwatch'**
  String get focusModeCountUp;

  /// Timer mode: open-ended session
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get focusModeOpen;

  /// Pomodoro phase label
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get focusPhaseWork;

  /// Pomodoro phase label
  ///
  /// In en, this message translates to:
  /// **'Short break'**
  String get focusPhaseShortBreak;

  /// Pomodoro phase label
  ///
  /// In en, this message translates to:
  /// **'Long break'**
  String get focusPhaseLongBreak;

  /// Label before a session starts
  ///
  /// In en, this message translates to:
  /// **'Ready when you are'**
  String get focusReady;

  /// Label when timer paused
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get focusPaused;

  /// Label when timer running
  ///
  /// In en, this message translates to:
  /// **'In focus'**
  String get focusRunning;

  /// Label for elapsed time
  ///
  /// In en, this message translates to:
  /// **'Elapsed'**
  String get focusElapsed;

  /// Label for remaining time
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get focusRemaining;

  /// Label for planned duration
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get focusDuration;

  /// Button to link a task to a session
  ///
  /// In en, this message translates to:
  /// **'Link a task'**
  String get focusLinkTask;

  /// Label above the linked task title
  ///
  /// In en, this message translates to:
  /// **'Working on'**
  String get focusLinkedTask;

  /// Placeholder
  ///
  /// In en, this message translates to:
  /// **'No task linked'**
  String get focusNoTask;

  /// Pomodoro cycle indicator
  ///
  /// In en, this message translates to:
  /// **'Cycle {current} of {total}'**
  String focusCycle(int current, int total);

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Skip break'**
  String get focusSkipBreak;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Start break'**
  String get focusStartBreak;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Start next focus'**
  String get focusStartNext;

  /// Dialog title when a session finishes
  ///
  /// In en, this message translates to:
  /// **'Session complete'**
  String get focusSessionComplete;

  /// Dialog title when user stops early
  ///
  /// In en, this message translates to:
  /// **'Session saved'**
  String get focusSessionStopped;

  /// Dialog body
  ///
  /// In en, this message translates to:
  /// **'You focused for {duration}.'**
  String focusSessionSummary(String duration);

  /// Text field hint
  ///
  /// In en, this message translates to:
  /// **'Add a note about this session'**
  String get focusAddNote;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get focusHistory;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Completed sessions will appear here'**
  String get focusNoHistory;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Targets'**
  String get focusTargets;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Daily target'**
  String get focusDailyTarget;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Weekly target'**
  String get focusWeeklyTarget;

  /// Session outcome label
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get focusOutcomeCompleted;

  /// Session outcome label
  ///
  /// In en, this message translates to:
  /// **'Stopped early'**
  String get focusOutcomeInterrupted;

  /// Info after restoring a running timer
  ///
  /// In en, this message translates to:
  /// **'Your session continued while the app was closed.'**
  String get focusRecovered;

  /// Info after restore
  ///
  /// In en, this message translates to:
  /// **'A session finished while the app was closed and has been saved.'**
  String get focusCompletedWhileAway;

  /// Warning banner
  ///
  /// In en, this message translates to:
  /// **'Notifications are off. You will not be alerted when a session ends.'**
  String get focusNotificationsOff;

  /// Info about battery optimization
  ///
  /// In en, this message translates to:
  /// **'Some devices pause apps in the background. The timer stays accurate, but alerts may be delayed. Allow unrestricted battery use for reliable alerts.'**
  String get focusBatteryHint;

  /// Button to open system settings
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get focusOpenSettings;

  /// Dialog title
  ///
  /// In en, this message translates to:
  /// **'Stop this session?'**
  String get focusStopConfirmTitle;

  /// Dialog message
  ///
  /// In en, this message translates to:
  /// **'Time focused so far will be saved.'**
  String get focusStopConfirmMessage;

  /// Dialog action to discard the session without saving
  ///
  /// In en, this message translates to:
  /// **'Discard'**
  String get focusDiscard;

  /// Duration selector label
  ///
  /// In en, this message translates to:
  /// **'{minutes, plural, =1{1 minute} other{{minutes} minutes}}'**
  String focusMinutesLabel(int minutes);

  /// Screen reader description of timer
  ///
  /// In en, this message translates to:
  /// **'{phase}, {time} remaining'**
  String focusTimerSemantics(String phase, String time);

  /// Screen reader description of timer
  ///
  /// In en, this message translates to:
  /// **'{phase}, {time} elapsed'**
  String focusTimerSemanticsElapsed(String phase, String time);

  /// Menu item
  ///
  /// In en, this message translates to:
  /// **'Delete session'**
  String get focusDeleteSession;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get tasksTitle;

  /// Task view
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get tasksViewToday;

  /// Task view
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get tasksViewUpcoming;

  /// Task view
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get tasksViewAll;

  /// Task view
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get tasksViewOverdue;

  /// Task view
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get tasksViewCompleted;

  /// Quick add text field hint
  ///
  /// In en, this message translates to:
  /// **'Add a task…'**
  String get tasksQuickAddHint;

  /// Empty state title
  ///
  /// In en, this message translates to:
  /// **'All clear'**
  String get tasksEmptyTitle;

  /// Empty state message
  ///
  /// In en, this message translates to:
  /// **'Add a task to start shaping your day.'**
  String get tasksEmptyMessage;

  /// Empty state for completed view
  ///
  /// In en, this message translates to:
  /// **'Completed tasks will appear here.'**
  String get tasksEmptyCompleted;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New task'**
  String get taskNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit task'**
  String get taskEdit;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get taskTitleLabel;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'What needs to be done?'**
  String get taskTitleHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get taskDescriptionLabel;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get taskNotesLabel;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get taskPriority;

  /// Priority level
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get priorityNone;

  /// Priority level
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get priorityLow;

  /// Priority level
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get priorityMedium;

  /// Priority level
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get priorityHigh;

  /// Priority level
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get priorityUrgent;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get taskDueDate;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Start date'**
  String get taskStartDate;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get taskReminder;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Repeat'**
  String get taskRepeat;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get taskProject;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get taskCategory;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'e.g. Work, Home, Study'**
  String get taskCategoryHint;

  /// Field label for time estimate
  ///
  /// In en, this message translates to:
  /// **'Estimate'**
  String get taskEstimate;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Estimate (minutes)'**
  String get taskEstimateMinutes;

  /// Label for measured focus time on a task
  ///
  /// In en, this message translates to:
  /// **'Tracked focus'**
  String get taskTracked;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Labels'**
  String get taskLabels;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'New label'**
  String get taskAddLabel;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Checklist'**
  String get taskChecklist;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Add an item'**
  String get taskAddChecklistItem;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Subtasks'**
  String get taskSubtasks;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Add a subtask'**
  String get taskAddSubtask;

  /// Section title for task dependencies
  ///
  /// In en, this message translates to:
  /// **'Blocked by'**
  String get taskDependencies;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Add a blocking task'**
  String get taskAddDependency;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Linked notes'**
  String get taskLinkedNotes;

  /// Button to add time of day to a due date
  ///
  /// In en, this message translates to:
  /// **'Set time'**
  String get taskSetTime;

  /// Placeholder
  ///
  /// In en, this message translates to:
  /// **'No date'**
  String get taskNoDate;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'Task completed'**
  String get taskCompleted;

  /// Snackbar after completing a recurring task
  ///
  /// In en, this message translates to:
  /// **'Next occurrence created'**
  String get taskNextOccurrence;

  /// Subtask progress compact label
  ///
  /// In en, this message translates to:
  /// **'{done}/{total}'**
  String taskSubtaskProgress(int done, int total);

  /// Due date label
  ///
  /// In en, this message translates to:
  /// **'Due {date}'**
  String taskDueOn(String date);

  /// Overdue label
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =1{1 day overdue} other{{days} days overdue}}'**
  String taskOverdueBy(int days);

  /// Screen reader label for task checkbox
  ///
  /// In en, this message translates to:
  /// **'Mark \"{title}\" as done'**
  String taskCheckboxSemantics(String title);

  /// Screen reader label for completed task checkbox
  ///
  /// In en, this message translates to:
  /// **'Mark \"{title}\" as not done'**
  String taskCheckboxSemanticsDone(String title);

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Smart'**
  String get sortSmart;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get sortDueDate;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get sortPriority;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Newest'**
  String get sortCreated;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get sortTitle;

  /// Filter option
  ///
  /// In en, this message translates to:
  /// **'All projects'**
  String get filterAllProjects;

  /// Filter option
  ///
  /// In en, this message translates to:
  /// **'Any priority'**
  String get filterAnyPriority;

  /// Sheet title
  ///
  /// In en, this message translates to:
  /// **'Filter and sort'**
  String get filterTitle;

  /// Relative date
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get dateToday;

  /// Relative date
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get dateTomorrow;

  /// Relative date
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get dateYesterday;

  /// Quick date option
  ///
  /// In en, this message translates to:
  /// **'Next week'**
  String get dateNextWeek;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Does not repeat'**
  String get repeatNever;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Every day'**
  String get repeatDaily;

  /// Recurrence option (Mon–Fri)
  ///
  /// In en, this message translates to:
  /// **'Every weekday'**
  String get repeatWeekdays;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Every week'**
  String get repeatWeekly;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Every month'**
  String get repeatMonthly;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Every year'**
  String get repeatYearly;

  /// Recurrence option
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get repeatCustom;

  /// Label in custom recurrence editor
  ///
  /// In en, this message translates to:
  /// **'Repeat every'**
  String get repeatEvery;

  /// Label in custom recurrence editor
  ///
  /// In en, this message translates to:
  /// **'On days'**
  String get repeatOnDays;

  /// Recurrence unit
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{day} other{days}}'**
  String repeatUnitDays(int count);

  /// Recurrence unit
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{week} other{weeks}}'**
  String repeatUnitWeeks(int count);

  /// Recurrence unit
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{month} other{months}}'**
  String repeatUnitMonths(int count);

  /// Recurrence unit
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{year} other{years}}'**
  String repeatUnitYears(int count);

  /// Recurrence end
  ///
  /// In en, this message translates to:
  /// **'Ends after {count, plural, =1{1 time} other{{count} times}}'**
  String repeatEndsCount(int count);

  /// Recurrence end
  ///
  /// In en, this message translates to:
  /// **'Never ends'**
  String get repeatEndsNever;

  /// Reminder option
  ///
  /// In en, this message translates to:
  /// **'At time of event'**
  String get reminderAtTime;

  /// Reminder option
  ///
  /// In en, this message translates to:
  /// **'{minutes, plural, =1{1 minute before} other{{minutes} minutes before}}'**
  String reminderMinutesBefore(int minutes);

  /// Reminder option
  ///
  /// In en, this message translates to:
  /// **'{hours, plural, =1{1 hour before} other{{hours} hours before}}'**
  String reminderHoursBefore(int hours);

  /// Reminder option
  ///
  /// In en, this message translates to:
  /// **'1 day before'**
  String get reminderDayBefore;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projectsTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'No projects yet'**
  String get projectsEmptyTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Group related tasks, notes and focus time.'**
  String get projectsEmptyMessage;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New project'**
  String get projectNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit project'**
  String get projectEdit;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get projectName;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get projectDescription;

  /// Field label: what the project aims to achieve
  ///
  /// In en, this message translates to:
  /// **'Goal'**
  String get projectGoal;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Deadline'**
  String get projectDeadline;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get projectColor;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Icon'**
  String get projectIcon;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Project notes'**
  String get projectNotes;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get projectProgress;

  /// Progress text
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} tasks done'**
  String projectTasksDone(int done, int total);

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Focus time'**
  String get projectFocusTime;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Archived projects'**
  String get projectArchived;

  /// Toggle
  ///
  /// In en, this message translates to:
  /// **'Show archived'**
  String get projectShowArchived;

  /// Deadline countdown
  ///
  /// In en, this message translates to:
  /// **'{days, plural, =0{Due today} =1{1 day left} other{{days} days left}}'**
  String projectDaysLeft(int days);

  /// Deadline label
  ///
  /// In en, this message translates to:
  /// **'Past deadline'**
  String get projectOverdue;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Calendar'**
  String get calendarTitle;

  /// View option
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get calendarMonth;

  /// View option
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get calendarWeek;

  /// View option
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get calendarDay;

  /// Button to jump to today
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get calendarToday;

  /// Tooltip: go to previous period
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get calendarPrevious;

  /// Tooltip: go to next period
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get calendarNext;

  /// Empty day
  ///
  /// In en, this message translates to:
  /// **'Nothing scheduled'**
  String get calendarNoEvents;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'All day'**
  String get calendarAllDay;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New event'**
  String get eventNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit event'**
  String get eventEdit;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Event title'**
  String get eventTitleHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Starts'**
  String get eventStarts;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Ends'**
  String get eventEnds;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get eventKind;

  /// Event type
  ///
  /// In en, this message translates to:
  /// **'Event'**
  String get eventKindEvent;

  /// Event type
  ///
  /// In en, this message translates to:
  /// **'Time block'**
  String get eventKindTimeBlock;

  /// Event type
  ///
  /// In en, this message translates to:
  /// **'Focus session'**
  String get eventKindFocus;

  /// Event type
  ///
  /// In en, this message translates to:
  /// **'Personal goal'**
  String get eventKindGoal;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get eventDescription;

  /// Conflict warning
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Overlaps with 1 event} other{Overlaps with {count} events}}'**
  String eventConflict(int count);

  /// Banner
  ///
  /// In en, this message translates to:
  /// **'Scheduling conflicts on this day'**
  String get eventConflictsToday;

  /// Label for tasks displayed on the calendar
  ///
  /// In en, this message translates to:
  /// **'Task due'**
  String get calendarTaskDue;

  /// Hint text
  ///
  /// In en, this message translates to:
  /// **'Long-press and drag an event to reschedule it'**
  String get calendarDragHint;

  /// Snackbar after drag and drop
  ///
  /// In en, this message translates to:
  /// **'Event moved'**
  String get calendarRescheduled;

  /// Action to create a time block from a task
  ///
  /// In en, this message translates to:
  /// **'Schedule as time block'**
  String get calendarScheduleTask;

  /// Title for color legend
  ///
  /// In en, this message translates to:
  /// **'Legend'**
  String get calendarLegend;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get notesTitle;

  /// Notes view
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get notesViewAll;

  /// Notes view
  ///
  /// In en, this message translates to:
  /// **'Pinned'**
  String get notesViewPinned;

  /// Notes view
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get notesViewFavorites;

  /// Notes view
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get notesViewArchived;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Notebooks'**
  String get notesNotebooks;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get notesTags;

  /// Button / dialog title
  ///
  /// In en, this message translates to:
  /// **'New notebook'**
  String get notesNewNotebook;

  /// Option
  ///
  /// In en, this message translates to:
  /// **'No notebook'**
  String get notesNoNotebook;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'A blank canvas'**
  String get notesEmptyTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Capture ideas, meeting notes and knowledge.'**
  String get notesEmptyMessage;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get noteTitleHint;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Start writing… Use # for tags and [[Title]] to link notes.'**
  String get noteBodyHint;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get noteFavorite;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get noteUnfavorite;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Move to notebook'**
  String get noteMoveTo;

  /// Section title for notes that link here
  ///
  /// In en, this message translates to:
  /// **'Linked from'**
  String get noteBacklinks;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Linked tasks'**
  String get noteLinkedTasks;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Link a task'**
  String get noteLinkTask;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get noteLinkProject;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Heading'**
  String get noteFormatHeading;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Bold'**
  String get noteFormatBold;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Italic'**
  String get noteFormatItalic;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Bulleted list'**
  String get noteFormatList;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Checklist'**
  String get noteFormatChecklist;

  /// Formatting toolbar tooltip
  ///
  /// In en, this message translates to:
  /// **'Link'**
  String get noteFormatLink;

  /// Note metadata
  ///
  /// In en, this message translates to:
  /// **'Edited {time}'**
  String noteEdited(String time);

  /// Note metadata
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 word} other{{count} words}}'**
  String noteWordCount(int count);

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Flashcards'**
  String get flashTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Build your first deck'**
  String get flashEmptyTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Spaced repetition shows each card right before you would forget it.'**
  String get flashEmptyMessage;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New deck'**
  String get deckNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit deck'**
  String get deckEdit;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Deck name'**
  String get deckName;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get deckDescription;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'New cards per day'**
  String get deckDailyNew;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Daily review target'**
  String get deckDailyReview;

  /// Card count
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards} =1{1 card} other{{count} cards}}'**
  String deckCards(int count);

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Due'**
  String get deckDue;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'New'**
  String get deckNewCards;

  /// Stat label: well-learned cards
  ///
  /// In en, this message translates to:
  /// **'Mature'**
  String get deckMature;

  /// Button to start review
  ///
  /// In en, this message translates to:
  /// **'Study'**
  String get deckStudy;

  /// Message when no cards are due
  ///
  /// In en, this message translates to:
  /// **'Nothing due right now. Come back later.'**
  String get deckNothingDue;

  /// Empty state for deck
  ///
  /// In en, this message translates to:
  /// **'Add cards to start learning.'**
  String get deckEmptyCards;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New card'**
  String get cardNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit card'**
  String get cardEdit;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Front'**
  String get cardFront;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get cardBack;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Question or term'**
  String get cardFrontHint;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'Answer or definition'**
  String get cardBackHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get cardTags;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Save and add another'**
  String get cardAddAnother;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Show answer'**
  String get reviewShowAnswer;

  /// Review rating
  ///
  /// In en, this message translates to:
  /// **'Again'**
  String get reviewAgain;

  /// Review rating
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get reviewHard;

  /// Review rating
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get reviewGood;

  /// Review rating
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get reviewEasy;

  /// Review progress
  ///
  /// In en, this message translates to:
  /// **'{done} of {total}'**
  String reviewProgress(int done, int total);

  /// Review summary title
  ///
  /// In en, this message translates to:
  /// **'Session complete'**
  String get reviewFinishedTitle;

  /// Review summary
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{You reviewed 1 card.} other{You reviewed {count} cards.}}'**
  String reviewFinishedMessage(int count);

  /// Hint
  ///
  /// In en, this message translates to:
  /// **'Tap to reveal the answer'**
  String get reviewTapToFlip;

  /// Dialog title
  ///
  /// In en, this message translates to:
  /// **'Import cards'**
  String get importCardsTitle;

  /// Help text
  ///
  /// In en, this message translates to:
  /// **'Paste one card per line as front and back separated by a tab or semicolon, or paste an exported deck file.'**
  String get importCardsHint;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards imported} =1{1 card imported} other{{count} cards imported}}'**
  String importCardsResult(int count);

  /// Error
  ///
  /// In en, this message translates to:
  /// **'This content could not be imported.'**
  String get importFailed;

  /// Snackbar after export
  ///
  /// In en, this message translates to:
  /// **'Deck exported'**
  String get exportCopied;

  /// Next review interval preview
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 min} other{{count} min}}'**
  String intervalMinutes(int count);

  /// Next review interval preview
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String intervalDays(int count);

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get goalsTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Aim for something'**
  String get goalsEmptyTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Set daily, weekly, monthly or long-term goals and track real progress.'**
  String get goalsEmptyMessage;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New goal'**
  String get goalNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit goal'**
  String get goalEdit;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'What do you want to achieve?'**
  String get goalTitleHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Period'**
  String get goalPeriod;

  /// Goal period
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get goalPeriodDaily;

  /// Goal period
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get goalPeriodWeekly;

  /// Goal period
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get goalPeriodMonthly;

  /// Goal period
  ///
  /// In en, this message translates to:
  /// **'Long-term'**
  String get goalPeriodLongTerm;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Target'**
  String get goalTarget;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Unit'**
  String get goalUnit;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'e.g. pages, km, hours'**
  String get goalUnitHint;

  /// Goal status
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get goalStatusActive;

  /// Goal status
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get goalStatusPaused;

  /// Goal status
  ///
  /// In en, this message translates to:
  /// **'Achieved'**
  String get goalStatusAchieved;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Pause goal'**
  String get goalPause;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Resume goal'**
  String get goalResume;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Mark as achieved'**
  String get goalMarkAchieved;

  /// Goal progress text; values are formatted numbers
  ///
  /// In en, this message translates to:
  /// **'{current} of {target}'**
  String goalProgressOf(String current, String target);

  /// Field label when logging progress
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get goalLogAmount;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Note (optional)'**
  String get goalLogNote;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get goalHistory;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Logged progress will appear here'**
  String get goalNoHistory;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Linked tasks'**
  String get goalLinkedTasks;

  /// Help text
  ///
  /// In en, this message translates to:
  /// **'Each completed linked task counts as 1 toward this goal.'**
  String get goalLinkedTasksHint;

  /// Label for current period progress
  ///
  /// In en, this message translates to:
  /// **'This period'**
  String get goalThisPeriod;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get habitsTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Small steps, every day'**
  String get habitsEmptyTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Create a habit and check it off when you do it.'**
  String get habitsEmptyMessage;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'New habit'**
  String get habitNew;

  /// Editor title
  ///
  /// In en, this message translates to:
  /// **'Edit habit'**
  String get habitEdit;

  /// Field hint
  ///
  /// In en, this message translates to:
  /// **'e.g. Read 20 pages'**
  String get habitNameHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Schedule'**
  String get habitDays;

  /// Schedule summary
  ///
  /// In en, this message translates to:
  /// **'Every day'**
  String get habitEveryDay;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Times per day'**
  String get habitTargetPerDay;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Daily reminder'**
  String get habitReminder;

  /// Streak label
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No streak} =1{1-day streak} other{{count}-day streak}}'**
  String habitStreak(int count);

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Best streak'**
  String get habitBestStreak;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Current streak'**
  String get habitCurrentStreak;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Consistency'**
  String get habitConsistency;

  /// Heatmap caption
  ///
  /// In en, this message translates to:
  /// **'Last 90 days'**
  String get habitLast90;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get habitPaused;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Pause habit'**
  String get habitPause;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Resume habit'**
  String get habitResume;

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Done today'**
  String get habitDoneToday;

  /// Habit progress
  ///
  /// In en, this message translates to:
  /// **'{count} of {target} today'**
  String habitCountToday(int count, int target);

  /// Screen reader label
  ///
  /// In en, this message translates to:
  /// **'Check in \"{name}\"'**
  String habitToggleSemantics(String name);

  /// Label
  ///
  /// In en, this message translates to:
  /// **'Not scheduled today'**
  String get habitNotScheduledToday;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Insights'**
  String get analyticsTitle;

  /// Analytics range
  ///
  /// In en, this message translates to:
  /// **'7 days'**
  String get rangeWeek;

  /// Analytics range
  ///
  /// In en, this message translates to:
  /// **'30 days'**
  String get rangeMonth;

  /// Analytics range
  ///
  /// In en, this message translates to:
  /// **'90 days'**
  String get rangeQuarter;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Focus time'**
  String get statFocusTime;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get statSessions;

  /// Stat caption
  ///
  /// In en, this message translates to:
  /// **'{completed} completed · {interrupted} stopped early'**
  String statSessionsDetail(int completed, int interrupted);

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Tasks completed'**
  String get statTasksDone;

  /// Stat label: share of tasks due in range that are done
  ///
  /// In en, this message translates to:
  /// **'On-time completion'**
  String get statCompletionRate;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Habit consistency'**
  String get statHabitConsistency;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Card retention'**
  String get statRetention;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get statReviews;

  /// Stat label
  ///
  /// In en, this message translates to:
  /// **'Active goals'**
  String get statActiveGoals;

  /// Stat label for sum of estimates
  ///
  /// In en, this message translates to:
  /// **'Estimated work completed'**
  String get statEstimated;

  /// Caption distinguishing estimates from measurements
  ///
  /// In en, this message translates to:
  /// **'Based on your estimates, not measured time'**
  String get statEstimatedNote;

  /// Caption
  ///
  /// In en, this message translates to:
  /// **'Measured from focus sessions'**
  String get statMeasuredNote;

  /// Chart title
  ///
  /// In en, this message translates to:
  /// **'Focus minutes per day'**
  String get chartFocusByDay;

  /// Chart title
  ///
  /// In en, this message translates to:
  /// **'Tasks completed per day'**
  String get chartTasksByDay;

  /// Chart title
  ///
  /// In en, this message translates to:
  /// **'Time by project'**
  String get chartTimeByProject;

  /// Chart title
  ///
  /// In en, this message translates to:
  /// **'Project progress'**
  String get chartProjectProgress;

  /// Screen reader summary for charts
  ///
  /// In en, this message translates to:
  /// **'{title}: total {total}, best day {best}'**
  String chartSemanticsTotal(String title, String total, String best);

  /// Placeholder when a statistic cannot be computed
  ///
  /// In en, this message translates to:
  /// **'Not enough data yet'**
  String get analyticsNoData;

  /// Label for focus time without a project
  ///
  /// In en, this message translates to:
  /// **'Unassigned'**
  String get analyticsUnassigned;

  /// Search field hint
  ///
  /// In en, this message translates to:
  /// **'Search everything…'**
  String get searchHint;

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'Recent searches'**
  String get searchRecent;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Clear recent searches'**
  String get searchClearRecent;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'No results for \"{query}\"'**
  String searchNoResults(String query);

  /// Initial hint
  ///
  /// In en, this message translates to:
  /// **'Search across tasks, notes, cards, goals, events and more. Search stays on this device.'**
  String get searchStartTyping;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get searchCatTask;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get searchCatProject;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get searchCatNote;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get searchCatFlashcard;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Decks'**
  String get searchCatDeck;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Goals'**
  String get searchCatGoal;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Habits'**
  String get searchCatHabit;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get searchCatEvent;

  /// Result category
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get searchCatSession;

  /// Filter chip
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get searchAll;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get assistantTitle;

  /// Intro text
  ///
  /// In en, this message translates to:
  /// **'Planning help that works on your device. Optionally connect an AI provider you choose for summaries and generation.'**
  String get assistantIntro;

  /// Badge: processing stays on the phone
  ///
  /// In en, this message translates to:
  /// **'On-device'**
  String get assistantOnDevice;

  /// Badge: processing uses the configured external provider
  ///
  /// In en, this message translates to:
  /// **'AI provider'**
  String get assistantCloud;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Plan my day'**
  String get assistantPlanDay;

  /// Action description
  ///
  /// In en, this message translates to:
  /// **'Orders open tasks by urgency, priority and estimate, and fits them around your events.'**
  String get assistantPlanDayDesc;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Extract tasks from a note'**
  String get assistantExtractTasks;

  /// Action description
  ///
  /// In en, this message translates to:
  /// **'Finds checklist items and action lines in a note and turns them into tasks.'**
  String get assistantExtractTasksDesc;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Make flashcards from a note'**
  String get assistantMakeCards;

  /// Action description
  ///
  /// In en, this message translates to:
  /// **'Turns \"term: definition\" and question/answer lines into cards.'**
  String get assistantMakeCardsDesc;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Summarize a note'**
  String get assistantSummarize;

  /// Action description
  ///
  /// In en, this message translates to:
  /// **'Requires an AI provider. The note is sent only after you confirm.'**
  String get assistantSummarizeDesc;

  /// Action
  ///
  /// In en, this message translates to:
  /// **'Workload overview'**
  String get assistantWorkload;

  /// Action description
  ///
  /// In en, this message translates to:
  /// **'Compares estimated work with your free time this week.'**
  String get assistantWorkloadDesc;

  /// Result when nothing to plan
  ///
  /// In en, this message translates to:
  /// **'No open tasks to plan. Enjoy the space.'**
  String get assistantPlanEmpty;

  /// Plan summary
  ///
  /// In en, this message translates to:
  /// **'Free focus time today: {time}'**
  String assistantPlanCapacity(String time);

  /// Plan section header
  ///
  /// In en, this message translates to:
  /// **'These may not fit today:'**
  String get assistantPlanOverflow;

  /// Picker title
  ///
  /// In en, this message translates to:
  /// **'Choose a note'**
  String get assistantChooseNote;

  /// Result
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No tasks found in this note} =1{1 task found} other{{count} tasks found}}'**
  String assistantFoundTasks(int count);

  /// Result
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards found in this note} =1{1 card found} other{{count} cards found}}'**
  String assistantFoundCards(int count);

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Create all'**
  String get assistantCreateAll;

  /// Picker title
  ///
  /// In en, this message translates to:
  /// **'Choose a deck'**
  String get assistantChooseDeck;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get assistantCreated;

  /// Result
  ///
  /// In en, this message translates to:
  /// **'Estimated work: {estimated}. Free time: {free}.'**
  String assistantWorkloadResult(String estimated, String free);

  /// Result advice
  ///
  /// In en, this message translates to:
  /// **'You have more planned than time available. Consider moving lower-priority tasks.'**
  String get assistantWorkloadOver;

  /// Result advice
  ///
  /// In en, this message translates to:
  /// **'Your plan fits in your available time.'**
  String get assistantWorkloadOk;

  /// Result note
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 open task has no estimate.} other{{count} open tasks have no estimate.}}'**
  String assistantWorkloadUnestimated(int count);

  /// Section title
  ///
  /// In en, this message translates to:
  /// **'AI provider'**
  String get assistantProviderTitle;

  /// Status
  ///
  /// In en, this message translates to:
  /// **'No provider connected. On-device tools still work.'**
  String get assistantProviderOff;

  /// Status
  ///
  /// In en, this message translates to:
  /// **'Connected to {host}'**
  String assistantProviderOn(String host);

  /// Field label: OpenAI-compatible chat completions URL
  ///
  /// In en, this message translates to:
  /// **'API endpoint (HTTPS)'**
  String get assistantEndpoint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get assistantModel;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get assistantApiKey;

  /// Help text
  ///
  /// In en, this message translates to:
  /// **'Stored securely on this device'**
  String get assistantApiKeyStored;

  /// Validation
  ///
  /// In en, this message translates to:
  /// **'Only HTTPS endpoints are allowed'**
  String get assistantHttpsOnly;

  /// Consent dialog title
  ///
  /// In en, this message translates to:
  /// **'Send this content to your AI provider?'**
  String get assistantConsentTitle;

  /// Consent dialog body
  ///
  /// In en, this message translates to:
  /// **'The selected note text will leave this device and be processed by {host}. Nothing else is sent.'**
  String assistantConsentBody(String host);

  /// Checkbox
  ///
  /// In en, this message translates to:
  /// **'Do not ask again for this provider'**
  String get assistantConsentAlways;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get assistantSend;

  /// Error
  ///
  /// In en, this message translates to:
  /// **'The AI provider could not be reached. Try again later.'**
  String get assistantUnavailable;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Assistant is off'**
  String get assistantDisabledTitle;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Turn it on to use planning tools. No data leaves your device unless you connect a provider and confirm each request.'**
  String get assistantDisabledMessage;

  /// Result title
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get assistantSummaryTitle;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Remove provider'**
  String get assistantRemoveProvider;

  /// Screen title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settingsGeneral;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// Option: follow device language
  ///
  /// In en, this message translates to:
  /// **'Device language'**
  String get settingsLanguageSystem;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get settingsAppearance;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// Theme option
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Theme option
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// Theme option
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeSystem;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Reduce motion'**
  String get settingsReduceMotion;

  /// Setting description
  ///
  /// In en, this message translates to:
  /// **'Minimize animations and moving backgrounds'**
  String get settingsReduceMotionDesc;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Focus timer'**
  String get settingsFocus;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Focus length'**
  String get settingsWorkLength;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Short break'**
  String get settingsShortBreak;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Long break'**
  String get settingsLongBreak;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Long break after'**
  String get settingsLongBreakEvery;

  /// Value for long break interval
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 session} other{{count} sessions}}'**
  String settingsCycles(int count);

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Start breaks automatically'**
  String get settingsAutoBreaks;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Completion sound'**
  String get settingsSound;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Daily focus target'**
  String get settingsDailyFocusTarget;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Weekly focus target'**
  String get settingsWeeklyFocusTarget;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settingsNotifications;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Allow reminders'**
  String get settingsNotificationsEnable;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Quiet hours'**
  String get settingsQuietHours;

  /// Setting description
  ///
  /// In en, this message translates to:
  /// **'Habit, goal and review reminders are silenced from {start} to {end}'**
  String settingsQuietHoursDesc(String start, String end);

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Flashcard review reminder'**
  String get settingsReviewReminder;

  /// Warning
  ///
  /// In en, this message translates to:
  /// **'Notifications are blocked in system settings.'**
  String get settingsPermissionDenied;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Privacy and data'**
  String get settingsPrivacy;

  /// Privacy statement
  ///
  /// In en, this message translates to:
  /// **'Your data is stored only on this device and encrypted. There is no account, no analytics and no tracking.'**
  String get settingsPrivacyStatement;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Create encrypted backup'**
  String get settingsBackup;

  /// Setting description
  ///
  /// In en, this message translates to:
  /// **'Protected with a password you choose'**
  String get settingsBackupDesc;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Restore from backup'**
  String get settingsRestore;

  /// Setting description
  ///
  /// In en, this message translates to:
  /// **'Replaces all data on this device'**
  String get settingsRestoreDesc;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Erase all data'**
  String get settingsErase;

  /// Setting description
  ///
  /// In en, this message translates to:
  /// **'Permanently delete everything on this device'**
  String get settingsEraseDesc;

  /// Dialog title
  ///
  /// In en, this message translates to:
  /// **'Erase all data?'**
  String get settingsEraseConfirmTitle;

  /// Dialog body; {word} is the confirmation word
  ///
  /// In en, this message translates to:
  /// **'Every task, note, card, goal, habit, event and session will be deleted permanently. Type {word} to confirm.'**
  String settingsEraseConfirmBody(String word);

  /// Word the user must type to confirm erasing. Translate to a single short word.
  ///
  /// In en, this message translates to:
  /// **'ERASE'**
  String get settingsEraseWord;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'All data erased'**
  String get settingsErased;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Backup password'**
  String get backupPassword;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get backupPasswordConfirm;

  /// Help text
  ///
  /// In en, this message translates to:
  /// **'At least {count} characters. It cannot be recovered if lost.'**
  String backupPasswordHint(int count);

  /// Validation
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get backupPasswordMismatch;

  /// Validation
  ///
  /// In en, this message translates to:
  /// **'Password is too short'**
  String get backupPasswordShort;

  /// Progress
  ///
  /// In en, this message translates to:
  /// **'Encrypting backup…'**
  String get backupCreating;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'Backup ready to save'**
  String get backupCreated;

  /// Progress
  ///
  /// In en, this message translates to:
  /// **'Verifying and restoring…'**
  String get backupRestoring;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Restored 1 item} other{Restored {count} items}}'**
  String backupRestored(int count);

  /// Error
  ///
  /// In en, this message translates to:
  /// **'Wrong password, or the file was modified.'**
  String get backupWrongPassword;

  /// Error
  ///
  /// In en, this message translates to:
  /// **'This file is not a Future OS backup.'**
  String get backupNotABackup;

  /// Error
  ///
  /// In en, this message translates to:
  /// **'The backup file is damaged.'**
  String get backupCorrupted;

  /// Error
  ///
  /// In en, this message translates to:
  /// **'This backup was made by a newer version of the app. Please update first.'**
  String get backupNewer;

  /// Dialog title
  ///
  /// In en, this message translates to:
  /// **'Replace all data?'**
  String get backupRestoreConfirmTitle;

  /// Dialog body
  ///
  /// In en, this message translates to:
  /// **'Everything currently on this device will be replaced by the backup. If restoring fails, nothing changes.'**
  String get backupRestoreConfirmBody;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// About text
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String settingsVersion(String version);

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Open-source licenses'**
  String get settingsLicenses;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Assistant'**
  String get settingsAssistant;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Enable assistant'**
  String get settingsAssistantEnable;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Home sections'**
  String get settingsDashboard;

  /// Setting
  ///
  /// In en, this message translates to:
  /// **'Trash'**
  String get settingsTrash;

  /// Compact minutes value in settings
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String settingsMinutesValue(int minutes);

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'Trash is empty'**
  String get trashEmpty;

  /// Help text
  ///
  /// In en, this message translates to:
  /// **'Deleted items stay here until you remove them.'**
  String get trashHint;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Tasks'**
  String get trashTasks;

  /// Section
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get trashNotes;

  /// Onboarding step 1 title
  ///
  /// In en, this message translates to:
  /// **'Welcome to your future workspace'**
  String get onboardWelcomeTitle;

  /// Onboarding step 1 body
  ///
  /// In en, this message translates to:
  /// **'Tasks, focus, calendar, notes, flashcards, goals and habits — together, beautifully simple.'**
  String get onboardWelcomeBody;

  /// Onboarding step 2 title
  ///
  /// In en, this message translates to:
  /// **'Private by design'**
  String get onboardPrivateTitle;

  /// Onboarding step 2 body
  ///
  /// In en, this message translates to:
  /// **'Everything stays on this device, encrypted. No account. No tracking. You stay in control.'**
  String get onboardPrivateBody;

  /// Onboarding step 3 title
  ///
  /// In en, this message translates to:
  /// **'Choose your language'**
  String get onboardLanguageTitle;

  /// Onboarding step 4 title
  ///
  /// In en, this message translates to:
  /// **'Gentle reminders'**
  String get onboardNotifTitle;

  /// Onboarding step 4 body
  ///
  /// In en, this message translates to:
  /// **'Allow notifications for task reminders and focus alerts. You can change this anytime.'**
  String get onboardNotifBody;

  /// Final onboarding button
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get onboardGetStarted;

  /// Accessibility label for onboarding progress
  ///
  /// In en, this message translates to:
  /// **'Step {current} of {total}'**
  String onboardStep(int current, int total);

  /// Android notification channel name
  ///
  /// In en, this message translates to:
  /// **'Reminders'**
  String get notifChannelReminders;

  /// Android notification channel description
  ///
  /// In en, this message translates to:
  /// **'Task, event, habit and goal reminders'**
  String get notifChannelRemindersDesc;

  /// Android notification channel name
  ///
  /// In en, this message translates to:
  /// **'Focus timer'**
  String get notifChannelFocus;

  /// Android notification channel description
  ///
  /// In en, this message translates to:
  /// **'Alerts when a focus session or break ends'**
  String get notifChannelFocusDesc;

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Task reminder'**
  String get notifTaskTitle;

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Upcoming event'**
  String get notifEventTitle;

  /// Notification body
  ///
  /// In en, this message translates to:
  /// **'{title} at {time}'**
  String notifEventBody(String title, String time);

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Focus session complete'**
  String get notifFocusDoneTitle;

  /// Notification body
  ///
  /// In en, this message translates to:
  /// **'Great work. Time for a break.'**
  String get notifFocusDoneBody;

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Break is over'**
  String get notifBreakDoneTitle;

  /// Notification body
  ///
  /// In en, this message translates to:
  /// **'Ready for the next focus session?'**
  String get notifBreakDoneBody;

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Habit reminder'**
  String get notifHabitTitle;

  /// Notification title
  ///
  /// In en, this message translates to:
  /// **'Flashcards are ready'**
  String get notifReviewTitle;

  /// Notification body
  ///
  /// In en, this message translates to:
  /// **'A short review keeps your memory strong.'**
  String get notifReviewBody;

  /// Compact duration
  ///
  /// In en, this message translates to:
  /// **'{hours} h {minutes} min'**
  String durationHoursMinutes(int hours, int minutes);

  /// Compact duration
  ///
  /// In en, this message translates to:
  /// **'{hours} h'**
  String durationHours(int hours);

  /// Compact duration
  ///
  /// In en, this message translates to:
  /// **'{minutes} min'**
  String durationMinutes(int minutes);

  /// Percentage
  ///
  /// In en, this message translates to:
  /// **'{value}%'**
  String percentValue(int value);

  /// Comma separated single-letter weekday initials starting Monday, used in habit schedule chips. Must contain exactly 7 comma-separated items.
  ///
  /// In en, this message translates to:
  /// **'M,T,W,T,F,S,S'**
  String get weekdaysShort;

  /// Screen reader label
  ///
  /// In en, this message translates to:
  /// **'Open menu'**
  String get a11yOpenMenu;

  /// Screen reader label
  ///
  /// In en, this message translates to:
  /// **'Progress {value} percent'**
  String a11yProgress(int value);

  /// Screen reader label
  ///
  /// In en, this message translates to:
  /// **'Priority: {level}'**
  String a11yPriority(String level);

  /// Screen reader label for color swatch
  ///
  /// In en, this message translates to:
  /// **'Color {index}'**
  String a11yColor(int index);

  /// Screen reader state
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get a11ySelected;

  /// Title of the screen shown when the encrypted database cannot be opened at launch
  ///
  /// In en, this message translates to:
  /// **'Your data could not be opened'**
  String get startupErrorTitle;

  /// Explanation when the device key is unavailable or does not match
  ///
  /// In en, this message translates to:
  /// **'The encryption key for this device\'s data is not available. Nothing has been deleted. Restarting the device often helps. If you recently restored the device, restore your data from an encrypted backup instead.'**
  String get startupErrorLocked;

  /// Explanation when the database encryption library is missing
  ///
  /// In en, this message translates to:
  /// **'This device does not support the encrypted storage the app requires. Nothing has been saved unencrypted.'**
  String get startupErrorCipher;

  /// Button to retry opening the data
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get startupErrorRetry;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'es', 'fr', 'hi', 'pt', 'ru', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
