import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
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
    Locale('af'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('en', 'GB'),
    Locale('es'),
    Locale('es', '419'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('fr', 'CA'),
    Locale('gl'),
    Locale('gu'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'PT'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// Application name shown in launcher and about screen. Brand name; may stay in Latin script.
  ///
  /// In en, this message translates to:
  /// **'Deep Focus'**
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
  /// **'Unlink'**
  String get actionUnlink;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Customize'**
  String get actionCustomize;

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
  /// **'Paste one card per line (front and back separated by a tab or semicolon), or choose a file: Excel (.xlsx), CSV, an Anki deck (.apkg) or an exported deck.'**
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

  /// Picker title
  ///
  /// In en, this message translates to:
  /// **'Choose a deck'**
  String get assistantChooseDeck;

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
  /// **'This file is not a Deep Focus backup.'**
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

  /// Accessibility label for the Insights time range selector
  ///
  /// In en, this message translates to:
  /// **'Time range'**
  String get analyticsRangeLabel;

  /// Tooltip: recompute the Insights numbers
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get analyticsRefresh;

  /// Caption under the on-time completion rate
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} due tasks done on time'**
  String analyticsOnTimeDetail(int done, int total);

  /// Progress caption for a project in Insights
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} tasks done'**
  String analyticsProjectTasks(int done, int total);

  /// Shown in Insights when there are no projects
  ///
  /// In en, this message translates to:
  /// **'No active projects'**
  String get analyticsNoProjects;

  /// Shown in Insights when no focus time was recorded for the range
  ///
  /// In en, this message translates to:
  /// **'No focus sessions in this range'**
  String get analyticsNoFocus;

  /// Caption under habit consistency when there are no active habits
  ///
  /// In en, this message translates to:
  /// **'No active habits'**
  String get analyticsHabitsNone;

  /// Caption explaining card retention
  ///
  /// In en, this message translates to:
  /// **'Share of mature cards you remembered'**
  String get analyticsRetentionNote;

  /// Accessibility label for one bar in the time-by-project chart
  ///
  /// In en, this message translates to:
  /// **'{name}: {value}'**
  String analyticsBarValue(String name, String value);

  /// Explains how the workload overview is calculated. start/end are formatted times, days is a localized weekday range
  ///
  /// In en, this message translates to:
  /// **'Free time counts {start}–{end} on workdays ({days}), minus timed events. Estimated work is the sum of estimates of open tasks due in the next 7 days.'**
  String assistantWorkloadRule(String start, String end, String days);

  /// Workday range used by the workload overview
  ///
  /// In en, this message translates to:
  /// **'Monday–Friday'**
  String get assistantWorkdaysMonFri;

  /// Workday range used by the workload overview
  ///
  /// In en, this message translates to:
  /// **'Sunday–Thursday'**
  String get assistantWorkdaysSunThu;

  /// Workload overview: a non-working day
  ///
  /// In en, this message translates to:
  /// **'Day off'**
  String get assistantWorkloadDayOff;

  /// Workload overview row for one day
  ///
  /// In en, this message translates to:
  /// **'{estimated} planned · {free} free'**
  String assistantWorkloadDay(String estimated, String free);

  /// Explains the plan-my-day rule; end is a formatted time
  ///
  /// In en, this message translates to:
  /// **'Planned from now until {end}, around today\'s events. Overdue tasks first, then priority, due date and estimate.'**
  String assistantPlanRule(String end);

  /// Time range, e.g. 10:00 – 10:30
  ///
  /// In en, this message translates to:
  /// **'{start} – {end}'**
  String assistantTimeRange(String start, String end);

  /// Button: add the planned tasks to today's calendar as time blocks
  ///
  /// In en, this message translates to:
  /// **'Schedule as time blocks'**
  String get assistantScheduleBlocks;

  /// Confirmation dialog title
  ///
  /// In en, this message translates to:
  /// **'Add time blocks to your calendar?'**
  String get assistantScheduleConfirmTitle;

  /// Confirmation dialog message
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 time block will be added to today\'s calendar.} other{{count} time blocks will be added to today\'s calendar.}}'**
  String assistantScheduleConfirmBody(int count);

  /// Message after time blocks were created
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 time block added} other{{count} time blocks added}}'**
  String assistantScheduled(int count);

  /// Section: tasks that already have a time block today
  ///
  /// In en, this message translates to:
  /// **'Already on your calendar'**
  String get assistantAlreadyScheduled;

  /// Section: tasks placed into today's free time
  ///
  /// In en, this message translates to:
  /// **'Fits today'**
  String get assistantPlanTimeline;

  /// Section: tasks without a time estimate
  ///
  /// In en, this message translates to:
  /// **'Add an estimate to plan these'**
  String get assistantNoEstimate;

  /// Shown when choosing a note but none exist
  ///
  /// In en, this message translates to:
  /// **'No notes yet. Write a note first.'**
  String get assistantNoNotes;

  /// Shown when the chosen note has no text
  ///
  /// In en, this message translates to:
  /// **'This note is empty.'**
  String get assistantNoteEmpty;

  /// Message after creating tasks from a note
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 task created} other{{count} tasks created}}'**
  String assistantTasksCreated(int count);

  /// Message after creating flashcards from a note
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 card created} other{{count} cards created}}'**
  String assistantCardsCreated(int count);

  /// Button creating the selected extracted items
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Nothing selected} =1{Create 1} other{Create {count}}}'**
  String assistantCreateSelected(int count);

  /// Explains which lines become tasks
  ///
  /// In en, this message translates to:
  /// **'Recognized: unchecked checkboxes \"- [ ]\" and lines starting with TODO: or To do:'**
  String get assistantExtractHint;

  /// Explains which lines become flashcards
  ///
  /// In en, this message translates to:
  /// **'Recognized: \"term: definition\", \"term — definition\" and Q:/A: line pairs'**
  String get assistantCardsHint;

  /// Explanation under the AI provider settings
  ///
  /// In en, this message translates to:
  /// **'Use any OpenAI-compatible service. The key stays in this device\'s secure storage and is never included in backups.'**
  String get assistantProviderHint;

  /// Helper text for the endpoint field
  ///
  /// In en, this message translates to:
  /// **'For example https://api.example.com/v1'**
  String get assistantEndpointHelp;

  /// Helper text for the API key field when a key is already stored
  ///
  /// In en, this message translates to:
  /// **'Leave empty to keep the stored key'**
  String get assistantApiKeyKeep;

  /// Validation error for the API key field
  ///
  /// In en, this message translates to:
  /// **'Enter an API key'**
  String get assistantApiKeyRequired;

  /// Message after saving the AI provider
  ///
  /// In en, this message translates to:
  /// **'Provider saved'**
  String get assistantProviderSaved;

  /// Message after removing the AI provider
  ///
  /// In en, this message translates to:
  /// **'Provider removed and key deleted'**
  String get assistantProviderRemoved;

  /// Confirmation dialog message
  ///
  /// In en, this message translates to:
  /// **'Remove the provider and delete the stored API key from this device?'**
  String get assistantRemoveProviderConfirm;

  /// Switch: show the consent dialog before each request to the AI provider
  ///
  /// In en, this message translates to:
  /// **'Ask before every request'**
  String get assistantAskEveryTime;

  /// Progress label while waiting for the AI provider
  ///
  /// In en, this message translates to:
  /// **'Summarizing…'**
  String get assistantSummarizing;

  /// Caption under an AI-generated summary
  ///
  /// In en, this message translates to:
  /// **'Generated by {host}. Review before relying on it.'**
  String assistantSummaryNote(String host);

  /// Button: copy the summary to the clipboard
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get assistantCopy;

  /// Message after copying
  ///
  /// In en, this message translates to:
  /// **'Copied'**
  String get assistantCopied;

  /// Button opening the AI provider settings
  ///
  /// In en, this message translates to:
  /// **'Set up provider'**
  String get assistantConfigure;

  /// Time range of an event, e.g. '9:00 AM – 10:00 AM'. Keep the order start then end.
  ///
  /// In en, this message translates to:
  /// **'{start} – {end}'**
  String calendarTimeRange(String start, String end);

  /// Title of the week view showing the first and last day of the week, e.g. 'Mon, Nov 16 – Sun, Nov 22'
  ///
  /// In en, this message translates to:
  /// **'{start} – {end}'**
  String calendarWeekRange(String start, String end);

  /// Snackbar after dragging an occurrence of a repeating event; the whole series moves by the same amount
  ///
  /// In en, this message translates to:
  /// **'All events in this series were moved'**
  String get calendarSeriesMoved;

  /// Field label in the event editor: when to remind before the event
  ///
  /// In en, this message translates to:
  /// **'Reminder'**
  String get calendarEventReminder;

  /// Field label in the event editor: repeat rule
  ///
  /// In en, this message translates to:
  /// **'Repeat'**
  String get calendarEventRepeat;

  /// Field label in the event editor: event color
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get calendarEventColor;

  /// Button that removes the custom color so the event uses the default color of its type
  ///
  /// In en, this message translates to:
  /// **'Use type color'**
  String get calendarDefaultColor;

  /// Field label in the event editor: a task this event is scheduled for
  ///
  /// In en, this message translates to:
  /// **'Linked task'**
  String get calendarEventLinkedTask;

  /// Placeholder when the event is not linked to a task
  ///
  /// In en, this message translates to:
  /// **'No linked task'**
  String get calendarEventNoTask;

  /// Screen reader: number of events on a day
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No events} =1{1 event} other{{count} events}}'**
  String calendarEventsCount(int count);

  /// Screen reader: number of tasks due on a day
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{no tasks due} =1{1 task due} other{{count} tasks due}}'**
  String calendarTasksDueCount(int count);

  /// Screen reader label for a day in the month grid. date is a full date, events and tasks are the counts phrases
  ///
  /// In en, this message translates to:
  /// **'{date}. {events}, {tasks}'**
  String calendarDaySemantics(String date, String events, String tasks);

  /// Message shown under 'Nothing scheduled' for an empty day
  ///
  /// In en, this message translates to:
  /// **'Add an event or a time block to plan this day.'**
  String get calendarNoEventsHint;

  /// Screen reader label for the line marking the current time in the day/week grid
  ///
  /// In en, this message translates to:
  /// **'Current time'**
  String get calendarNow;

  /// Screen reader / tooltip: this event repeats
  ///
  /// In en, this message translates to:
  /// **'Repeats'**
  String get calendarRecurring;

  /// Shown when opening an event that was deleted
  ///
  /// In en, this message translates to:
  /// **'This event no longer exists'**
  String get calendarEventNotFound;

  /// Helper text in the event editor
  ///
  /// In en, this message translates to:
  /// **'Times are shown in your device\'s time zone'**
  String get calendarEventLocalTime;

  /// Snackbar after deleting an event
  ///
  /// In en, this message translates to:
  /// **'Event moved to trash'**
  String get calendarEventDeleted;

  /// Screen reader / tooltip on an event that overlaps another one
  ///
  /// In en, this message translates to:
  /// **'Overlaps another event'**
  String get calendarConflictMarker;

  /// Screen reader label for an event block: event title followed by its time range
  ///
  /// In en, this message translates to:
  /// **'{title}, {time}'**
  String calendarEventSemantics(String title, String time);

  /// Helper text in the event editor when editing a repeating event
  ///
  /// In en, this message translates to:
  /// **'Changes apply to every event in this series'**
  String get calendarSeriesEditNote;

  /// Hint shown in week/day view about drag-and-drop on repeating events
  ///
  /// In en, this message translates to:
  /// **'Dragging a repeating event moves the whole series'**
  String get calendarDragHintSeries;

  /// Screen reader label for a task shown in the calendar on its due date
  ///
  /// In en, this message translates to:
  /// **'{title}, task due'**
  String calendarTaskDueSemantics(String title);

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

  /// Banner on the decks screen with the number of due cards across all decks
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 card is due for review} other{{count} cards are due for review}}'**
  String flashcardsDueBanner(int count);

  /// Compact pill on a deck: number of cards due for review
  ///
  /// In en, this message translates to:
  /// **'{count} due'**
  String flashcardsDueCount(int count);

  /// Compact pill on a deck: number of cards never studied
  ///
  /// In en, this message translates to:
  /// **'{count} new'**
  String flashcardsNewCount(int count);

  /// Screen reader label for the ring showing the share of mature cards (interval of 21 days or more). percent is a formatted percentage
  ///
  /// In en, this message translates to:
  /// **'Mature cards: {percent}'**
  String flashcardsMatureRing(String percent);

  /// Form validation for the daily new card limit
  ///
  /// In en, this message translates to:
  /// **'Enter 0 or more'**
  String get flashcardsValidationNonNegative;

  /// Hint of the search field in a deck
  ///
  /// In en, this message translates to:
  /// **'Search cards'**
  String get flashcardsSearchCards;

  /// Shown when the card search has no results
  ///
  /// In en, this message translates to:
  /// **'No cards match your search'**
  String get flashcardsSearchEmpty;

  /// Confirmation after saving a card with Save and add another
  ///
  /// In en, this message translates to:
  /// **'Card added'**
  String get flashcardsCardAdded;

  /// When a card is next due; date is a formatted relative day such as Today or Nov 18
  ///
  /// In en, this message translates to:
  /// **'Due {date}'**
  String flashcardsCardDueOn(String date);

  /// Export option: copy the deck file text
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get flashcardsCopyToClipboard;

  /// Title of the export options sheet
  ///
  /// In en, this message translates to:
  /// **'Export deck'**
  String get flashcardsExportTitle;

  /// Menu item
  ///
  /// In en, this message translates to:
  /// **'Delete deck'**
  String get flashcardsDeleteDeck;

  /// Screen reader label for a review rating button; rating is e.g. Good, interval e.g. 10 min or 4 days
  ///
  /// In en, this message translates to:
  /// **'{rating}, next review in {interval}'**
  String flashcardsRatingA11y(String rating, String interval);

  /// Screen reader label of the card front during review
  ///
  /// In en, this message translates to:
  /// **'Question: {text}'**
  String flashcardsQuestionA11y(String text);

  /// Screen reader label of the card back during review
  ///
  /// In en, this message translates to:
  /// **'Answer: {text}'**
  String flashcardsAnswerA11y(String text);

  /// Screen reader hint to flip the card back to the front
  ///
  /// In en, this message translates to:
  /// **'Show question'**
  String get flashcardsShowQuestion;

  /// Label of the multi-line import field
  ///
  /// In en, this message translates to:
  /// **'Cards to import'**
  String get flashcardsImportField;

  /// Title when the review queue is empty
  ///
  /// In en, this message translates to:
  /// **'Nothing to study'**
  String get flashcardsNothingToStudy;

  /// Size of today's study queue under the deck header
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards ready} =1{1 card ready to study} other{{count} cards ready to study}}'**
  String flashcardsReadyCount(int count);

  /// Section title in the review summary listing how many times each rating was given
  ///
  /// In en, this message translates to:
  /// **'By rating'**
  String get flashcardsByRating;

  /// Shown when opening a deleted or missing deck
  ///
  /// In en, this message translates to:
  /// **'This deck is no longer available.'**
  String get flashcardsDeckNotFound;

  /// Snackbar after deleting a focus session from history
  ///
  /// In en, this message translates to:
  /// **'Session deleted'**
  String get focusSessionDeleted;

  /// Confirmation dialog body before deleting a focus session
  ///
  /// In en, this message translates to:
  /// **'Delete this session from your history? Its time will no longer count toward your targets.'**
  String get focusDeleteConfirm;

  /// Tooltip for the button that unlinks a task from the focus session
  ///
  /// In en, this message translates to:
  /// **'Remove linked task'**
  String get focusUnlinkTask;

  /// Hint text inside the optional session note field
  ///
  /// In en, this message translates to:
  /// **'What did you work on?'**
  String get focusNoteHint;

  /// Caption under the daily and weekly focus target rings explaining where the numbers come from
  ///
  /// In en, this message translates to:
  /// **'Measured from saved sessions'**
  String get focusTargetCaption;

  /// Screen reader label for the focus mode selector
  ///
  /// In en, this message translates to:
  /// **'Timer mode'**
  String get focusModeLabel;

  /// Shown between pomodoro phases, e.g. 'Up next: Short break'
  ///
  /// In en, this message translates to:
  /// **'Up next: {phase}'**
  String focusUpNext(String phase);

  /// Explanation shown for the stopwatch focus mode
  ///
  /// In en, this message translates to:
  /// **'Counts up until you stop.'**
  String get focusStopwatchHint;

  /// Explanation shown for the open-ended focus mode
  ///
  /// In en, this message translates to:
  /// **'No time limit. Stop whenever you are done.'**
  String get focusOpenHint;

  /// Banner on focus screen when the app's own notification setting is off
  ///
  /// In en, this message translates to:
  /// **'Reminders are turned off in settings. You will not be alerted when a session ends.'**
  String get focusNotificationsDisabledInApp;

  /// Screen reader summary of a history row: mode name, formatted duration, formatted date and time
  ///
  /// In en, this message translates to:
  /// **'{mode}, {duration}, {when}'**
  String focusHistoryItem(String mode, String duration, String when);

  /// Filter chip on the goals screen: show goals of every period or status
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get goalsFilterAll;

  /// Screen reader label for the row of period filter chips on the goals screen
  ///
  /// In en, this message translates to:
  /// **'Period filter'**
  String get goalsFilterPeriod;

  /// Screen reader label for the status filter on the goals screen
  ///
  /// In en, this message translates to:
  /// **'Status filter'**
  String get goalsFilterStatus;

  /// Shown when goals exist but none match the selected filters
  ///
  /// In en, this message translates to:
  /// **'No goals match this filter'**
  String get goalsEmptyFiltered;

  /// Goal deadline shown on a goal card, e.g. 'Due Nov 30, 2026'
  ///
  /// In en, this message translates to:
  /// **'Due {date}'**
  String goalsDueOn(String date);

  /// Field label in the goal editor
  ///
  /// In en, this message translates to:
  /// **'Deadline (optional)'**
  String get goalsDeadline;

  /// Shown in the goal editor when no deadline is set
  ///
  /// In en, this message translates to:
  /// **'No deadline'**
  String get goalsNoDeadline;

  /// Button in the goal editor to choose a deadline date
  ///
  /// In en, this message translates to:
  /// **'Set deadline'**
  String get goalsSetDeadline;

  /// Tooltip for clearing the deadline in the goal editor
  ///
  /// In en, this message translates to:
  /// **'Remove deadline'**
  String get goalsRemoveDeadline;

  /// Field label in the goal editor
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get goalsDescription;

  /// Field label for the goal title in the goal editor
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get goalsTitleLabel;

  /// A number followed by the goal's unit, e.g. '12 pages'. Reorder if your language puts the unit first.
  ///
  /// In en, this message translates to:
  /// **'{amount} {unit}'**
  String goalsAmountWithUnit(String amount, String unit);

  /// Screen reader label for a goal card: title, progress such as '3 of 10', and status such as 'Active'
  ///
  /// In en, this message translates to:
  /// **'{title}, {progress}, {status}'**
  String goalsCardSemantics(String title, String progress, String status);

  /// Shown when progress in the current period meets the target
  ///
  /// In en, this message translates to:
  /// **'Target reached'**
  String get goalsReached;

  /// Snackbar after adding a goal progress entry
  ///
  /// In en, this message translates to:
  /// **'Progress logged'**
  String get goalsLogged;

  /// Snackbar after deleting a goal progress entry (with undo)
  ///
  /// In en, this message translates to:
  /// **'Entry removed'**
  String get goalsEntryDeleted;

  /// Tooltip for deleting one goal progress entry
  ///
  /// In en, this message translates to:
  /// **'Remove entry'**
  String get goalsDeleteEntry;

  /// Snackbar after deleting a goal (with undo)
  ///
  /// In en, this message translates to:
  /// **'Goal deleted'**
  String get goalsDeleted;

  /// Menu action to make an achieved or paused goal active again
  ///
  /// In en, this message translates to:
  /// **'Mark as active'**
  String get goalsMarkActive;

  /// Shown when opening a goal that was deleted
  ///
  /// In en, this message translates to:
  /// **'This goal is no longer available'**
  String get goalsNotFound;

  /// Button to link an existing task to a goal
  ///
  /// In en, this message translates to:
  /// **'Link a task'**
  String get goalsLinkTask;

  /// Empty state of the linked tasks section of a goal
  ///
  /// In en, this message translates to:
  /// **'No linked tasks yet'**
  String get goalsNoLinkedTasks;

  /// Tooltip for removing the link between a task and a goal
  ///
  /// In en, this message translates to:
  /// **'Unlink task'**
  String get goalsUnlinkTask;

  /// Screen reader state of a linked task that is not done
  ///
  /// In en, this message translates to:
  /// **'Not completed yet'**
  String get goalsTaskOpen;

  /// Snackbar after linking a task to a goal
  ///
  /// In en, this message translates to:
  /// **'Task linked'**
  String get goalsTaskLinked;

  /// Snackbar after unlinking a task from a goal (with undo)
  ///
  /// In en, this message translates to:
  /// **'Task unlinked'**
  String get goalsTaskUnlinked;

  /// Note under the goal progress ring explaining contributions from completed linked tasks
  ///
  /// In en, this message translates to:
  /// **'Includes {count, plural, =1{1 completed linked task} other{{count} completed linked tasks}} this period'**
  String goalsFromTasks(int count);

  /// Explanation under the goal history header for non-long-term goals
  ///
  /// In en, this message translates to:
  /// **'Entries from earlier periods are kept here but count only toward their own period.'**
  String get goalsHistoryAllTime;

  /// Summary at the top of the habits screen: habits completed today out of habits scheduled today
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} done today'**
  String habitsTodaySummary(int done, int total);

  /// Shown when habits exist but none is scheduled today
  ///
  /// In en, this message translates to:
  /// **'No habits are scheduled for today'**
  String get habitsNothingToday;

  /// Action in the check-in menu that lowers today's count by one
  ///
  /// In en, this message translates to:
  /// **'Remove one check-in'**
  String get habitsDecrease;

  /// Action in the check-in menu that sets today's count to zero
  ///
  /// In en, this message translates to:
  /// **'Reset today'**
  String get habitsResetToday;

  /// Screen reader hint on the habit check-in button
  ///
  /// In en, this message translates to:
  /// **'Long-press to adjust'**
  String get habitsCheckInHint;

  /// Field label in the habit editor
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get habitsName;

  /// Field label in the habit editor
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get habitsColor;

  /// Validation message when no weekday is selected in the habit schedule
  ///
  /// In en, this message translates to:
  /// **'Choose at least one day'**
  String get habitsValidationDays;

  /// Selected daily reminder time in the habit editor
  ///
  /// In en, this message translates to:
  /// **'Every day at {time}'**
  String habitsReminderAt(String time);

  /// Button in the habit editor to choose a daily reminder time
  ///
  /// In en, this message translates to:
  /// **'Set a reminder time'**
  String get habitsSetReminder;

  /// Tooltip to clear the habit's daily reminder
  ///
  /// In en, this message translates to:
  /// **'Remove reminder'**
  String get habitsRemoveReminder;

  /// Helper text under the reminder field in the habit editor
  ///
  /// In en, this message translates to:
  /// **'Reminders appear on scheduled days when notifications are allowed.'**
  String get habitsReminderNote;

  /// Snackbar after archiving a habit (with undo)
  ///
  /// In en, this message translates to:
  /// **'Habit archived'**
  String get habitsArchived;

  /// Shown when opening a habit that no longer exists
  ///
  /// In en, this message translates to:
  /// **'This habit is no longer available'**
  String get habitsNotFound;

  /// Caption for consistency over the last 30 days
  ///
  /// In en, this message translates to:
  /// **'Last 30 days'**
  String get habitsLast30;

  /// Shown instead of a consistency percent when no scheduled day has passed
  ///
  /// In en, this message translates to:
  /// **'Not enough data yet'**
  String get habitsConsistencyNone;

  /// Section header for the monthly check-in calendar
  ///
  /// In en, this message translates to:
  /// **'Check-in history'**
  String get habitsCalendar;

  /// Hint under the monthly check-in calendar
  ///
  /// In en, this message translates to:
  /// **'Tap a day to correct it.'**
  String get habitsCalendarHint;

  /// Screen reader label for a calendar day cell: date and check-ins out of the daily target
  ///
  /// In en, this message translates to:
  /// **'{date}: {count} of {target}'**
  String habitsDaySemantics(String date, int count, int target);

  /// Screen reader summary of the habit heatmap
  ///
  /// In en, this message translates to:
  /// **'Check-ins over the last 90 days. Consistency {percent}.'**
  String habitsHeatmapSemantics(String percent);

  /// Screen reader summary of the habit heatmap when there is no data
  ///
  /// In en, this message translates to:
  /// **'Check-ins over the last 90 days. Not enough data yet.'**
  String get habitsHeatmapSemanticsEmpty;

  /// A number of days, used for streak lengths
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String habitsDays(int count);

  /// Gentle note shown for paused habits
  ///
  /// In en, this message translates to:
  /// **'Paused days don\'t affect your streak.'**
  String get habitsPausedNote;

  /// Separator between weekday names in a habit's schedule summary, e.g. 'Mon, Wed'. Use your language's list comma.
  ///
  /// In en, this message translates to:
  /// **', '**
  String get habitsListSeparator;

  /// Menu action to archive a habit
  ///
  /// In en, this message translates to:
  /// **'Archive habit'**
  String get habitsArchive;

  /// Shows a habit's daily target
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Once a day} other{{count} times a day}}'**
  String habitsTimesPerDayValue(int count);

  /// Notes list: section header for notes that are not pinned
  ///
  /// In en, this message translates to:
  /// **'Other notes'**
  String get notesSectionOthers;

  /// Notes list: filter chip showing notes from every notebook
  ///
  /// In en, this message translates to:
  /// **'All notebooks'**
  String get notesAllNotebooks;

  /// Field label when creating a notebook
  ///
  /// In en, this message translates to:
  /// **'Notebook name'**
  String get notesNotebookName;

  /// Label above the color choices when creating a notebook
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get notesNotebookColor;

  /// Action to delete a notebook
  ///
  /// In en, this message translates to:
  /// **'Delete notebook'**
  String get notesDeleteNotebook;

  /// Confirmation message when deleting a notebook
  ///
  /// In en, this message translates to:
  /// **'The notebook is removed. Its notes are kept and appear under All notebooks.'**
  String get notesDeleteNotebookMessage;

  /// Chip showing a note tag; keep the # sign
  ///
  /// In en, this message translates to:
  /// **'#{tag}'**
  String notesTagFilter(String tag);

  /// Empty state for the pinned notes view
  ///
  /// In en, this message translates to:
  /// **'Pin important notes to keep them at the top.'**
  String get notesEmptyPinned;

  /// Empty state for the favorite notes view
  ///
  /// In en, this message translates to:
  /// **'Notes you mark as favorite appear here.'**
  String get notesEmptyFavorites;

  /// Empty state for the archived notes view
  ///
  /// In en, this message translates to:
  /// **'Archived notes appear here.'**
  String get notesEmptyArchived;

  /// Empty state when notebook or tag filters hide all notes
  ///
  /// In en, this message translates to:
  /// **'No notes match these filters.'**
  String get notesEmptyFiltered;

  /// Snackbar after archiving a note
  ///
  /// In en, this message translates to:
  /// **'Note archived'**
  String get notesArchivedSnack;

  /// Snackbar after unarchiving a note
  ///
  /// In en, this message translates to:
  /// **'Note moved back to your notes'**
  String get notesUnarchivedSnack;

  /// Checklist progress on a note card
  ///
  /// In en, this message translates to:
  /// **'{done} of {total} done'**
  String notesChecklistProgress(int done, int total);

  /// Note card timestamp: relative day and time, e.g. 'Today · 10:05'
  ///
  /// In en, this message translates to:
  /// **'{day} · {time}'**
  String notesUpdatedAt(String day, String time);

  /// Accessibility label for the markdown formatting toolbar
  ///
  /// In en, this message translates to:
  /// **'Formatting'**
  String get notesFormatting;

  /// Toggle back from preview to editing a note
  ///
  /// In en, this message translates to:
  /// **'Write'**
  String get notesWrite;

  /// Preview shown for an empty note
  ///
  /// In en, this message translates to:
  /// **'Nothing to preview yet.'**
  String get notesPreviewEmpty;

  /// Empty backlinks section; keep the [[ ]] brackets
  ///
  /// In en, this message translates to:
  /// **'No other notes link here yet. Link to this note with [[{title}]].'**
  String notesBacklinksEmpty(String title);

  /// Backlinks section when the note has no title
  ///
  /// In en, this message translates to:
  /// **'Give this note a title so other notes can link to it.'**
  String get notesBacklinksNeedTitle;

  /// Empty linked tasks section
  ///
  /// In en, this message translates to:
  /// **'No tasks linked to this note.'**
  String get notesLinkedTasksEmpty;

  /// Snackbar after tapping a [[link]] to a note that does not exist
  ///
  /// In en, this message translates to:
  /// **'There is no note titled \"{title}\" yet.'**
  String notesLinkMissing(String title);

  /// Shown when opening a note that was deleted
  ///
  /// In en, this message translates to:
  /// **'This note no longer exists.'**
  String get notesNotFound;

  /// Accessibility label for a checkbox in the note preview
  ///
  /// In en, this message translates to:
  /// **'Checklist item: {label}'**
  String notesCheckboxSemantics(String label);

  /// Accessibility hint for a [[link]] in the note preview
  ///
  /// In en, this message translates to:
  /// **'Open note {title}'**
  String notesOpenLinkedNote(String title);

  /// Accessibility label for a linked task that is done
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get notesTaskDone;

  /// Notification body when a plain focus timer (not pomodoro) reaches its set length
  ///
  /// In en, this message translates to:
  /// **'The time you set has passed.'**
  String get notifTimerDoneBody;

  /// Onboarding privacy bullet
  ///
  /// In en, this message translates to:
  /// **'Stored only on this device, encrypted'**
  String get onboardingPrivatePointDevice;

  /// Onboarding privacy bullet
  ///
  /// In en, this message translates to:
  /// **'No account needed'**
  String get onboardingPrivatePointAccount;

  /// Onboarding privacy bullet
  ///
  /// In en, this message translates to:
  /// **'No analytics, no tracking'**
  String get onboardingPrivatePointTracking;

  /// Onboarding language step body
  ///
  /// In en, this message translates to:
  /// **'You can change this anytime in Settings.'**
  String get onboardingLanguageBody;

  /// Button moving to the next onboarding step
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// Section for active projects
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get projectsActive;

  /// Hint for project name
  ///
  /// In en, this message translates to:
  /// **'e.g. Product launch'**
  String get projectNameHint;

  /// Hint for project goal field
  ///
  /// In en, this message translates to:
  /// **'What does done look like?'**
  String get projectGoalHint;

  /// Shown when a project has no deadline
  ///
  /// In en, this message translates to:
  /// **'No deadline'**
  String get projectNoDeadline;

  /// Section header in project detail
  ///
  /// In en, this message translates to:
  /// **'Open tasks'**
  String get projectTasksOpen;

  /// Section header in project detail
  ///
  /// In en, this message translates to:
  /// **'Completed tasks'**
  String get projectTasksCompleted;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Add task to project'**
  String get projectAddTask;

  /// Button creating a note linked to the project
  ///
  /// In en, this message translates to:
  /// **'New project note'**
  String get projectAddNote;

  /// Section header for notes linked to the project
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get projectLinkedNotes;

  /// Empty state
  ///
  /// In en, this message translates to:
  /// **'No tasks in this project yet'**
  String get projectNoTasks;

  /// Badge on an archived project
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get projectArchivedBadge;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'Project moved to trash'**
  String get projectDeleted;

  /// Explains what happens to tasks when a project is deleted
  ///
  /// In en, this message translates to:
  /// **'Tasks stay in your list without a project.'**
  String get projectDeleteMessage;

  /// Screen reader label for a project card
  ///
  /// In en, this message translates to:
  /// **'{name}, {percent} percent complete'**
  String projectSemantics(String name, int percent);

  /// Number of search results, announced to screen readers
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 result} other{{count} results}}'**
  String searchResultCount(int count);

  /// Accessibility label for the row of search category chips
  ///
  /// In en, this message translates to:
  /// **'Filter by type'**
  String get searchCategoryFilter;

  /// Accessibility hint for a recent search entry
  ///
  /// In en, this message translates to:
  /// **'Search again for {query}'**
  String searchRecentTap(String query);

  /// Help text in the language picker sheet
  ///
  /// In en, this message translates to:
  /// **'Choose the language for the whole app. Names are shown in their own language.'**
  String get settingsLanguageHint;

  /// Subtitle of the theme setting
  ///
  /// In en, this message translates to:
  /// **'Light, dark or follow the system'**
  String get settingsThemeHint;

  /// Tooltip for a minus button of a numeric setting; {setting} is the setting name
  ///
  /// In en, this message translates to:
  /// **'Decrease {setting}'**
  String settingsDecrease(String setting);

  /// Tooltip for a plus button of a numeric setting; {setting} is the setting name
  ///
  /// In en, this message translates to:
  /// **'Increase {setting}'**
  String settingsIncrease(String setting);

  /// Label for the start time of quiet hours
  ///
  /// In en, this message translates to:
  /// **'Starts'**
  String get settingsQuietStart;

  /// Label for the end time of quiet hours
  ///
  /// In en, this message translates to:
  /// **'Ends'**
  String get settingsQuietEnd;

  /// Help text below the reminders toggle
  ///
  /// In en, this message translates to:
  /// **'This saves your preference in the app. The system may also ask for permission.'**
  String get settingsNotificationsHint;

  /// Help text for customizing home sections
  ///
  /// In en, this message translates to:
  /// **'Drag to reorder. Turn off sections you do not need.'**
  String get settingsDashboardHint;

  /// Accessibility label for the drag handle of a home section
  ///
  /// In en, this message translates to:
  /// **'Reorder {section}'**
  String settingsDashboardReorder(String section);

  /// Button resetting home sections
  ///
  /// In en, this message translates to:
  /// **'Restore default order'**
  String get settingsDashboardReset;

  /// Subtitle of the assistant toggle
  ///
  /// In en, this message translates to:
  /// **'Optional planning help. Nothing leaves this device unless you connect a provider.'**
  String get settingsAssistantDesc;

  /// Row opening the assistant screen
  ///
  /// In en, this message translates to:
  /// **'Assistant and provider setup'**
  String get settingsAssistantSetup;

  /// Subtitle of the trash row
  ///
  /// In en, this message translates to:
  /// **'Restore or permanently delete removed items'**
  String get settingsTrashDesc;

  /// First confirmation before erasing all data
  ///
  /// In en, this message translates to:
  /// **'This cannot be undone. Consider creating an encrypted backup first.'**
  String get settingsEraseFirstBody;

  /// Text field label in the erase dialog; {word} is the confirmation word
  ///
  /// In en, this message translates to:
  /// **'Type {word}'**
  String settingsEraseTypeLabel(String word);

  /// Error snackbar when erasing fails
  ///
  /// In en, this message translates to:
  /// **'Data could not be erased. Nothing was changed.'**
  String get settingsEraseFailed;

  /// Short description in the About section
  ///
  /// In en, this message translates to:
  /// **'A private, local-first productivity workspace.'**
  String get settingsAboutTagline;

  /// Tooltip for the reveal password button
  ///
  /// In en, this message translates to:
  /// **'Show password'**
  String get backupShowPassword;

  /// Tooltip for the hide password button
  ///
  /// In en, this message translates to:
  /// **'Hide password'**
  String get backupHidePassword;

  /// Snackbar after the backup file was saved
  ///
  /// In en, this message translates to:
  /// **'Backup saved'**
  String get backupSaved;

  /// Error when creating a backup fails
  ///
  /// In en, this message translates to:
  /// **'The backup could not be created. Your data is unchanged.'**
  String get backupFailed;

  /// Error when the picked backup file cannot be read
  ///
  /// In en, this message translates to:
  /// **'The selected file could not be read.'**
  String get backupReadFailed;

  /// Generic restore error
  ///
  /// In en, this message translates to:
  /// **'Restore failed. Nothing was changed.'**
  String get backupRestoreFailed;

  /// Subject used when sharing the backup file
  ///
  /// In en, this message translates to:
  /// **'Deep Focus encrypted backup'**
  String get backupShareSubject;

  /// Summary of a custom repeat rule. unit is one of day/week/month/year (do not translate the select keys)
  ///
  /// In en, this message translates to:
  /// **'{unit, select, day{{count, plural, =1{Every day} other{Every {count} days}}} week{{count, plural, =1{Every week} other{Every {count} weeks}}} month{{count, plural, =1{Every month} other{Every {count} months}}} other{{count, plural, =1{Every year} other{Every {count} years}}}}'**
  String repeatSummaryEveryN(String unit, int count);

  /// Suffix listing selected weekdays of a weekly repeat rule, e.g. 'on Mon, Wed'
  ///
  /// In en, this message translates to:
  /// **'on {days}'**
  String repeatOnWeekdays(String days);

  /// Label for the end condition of a repeat rule
  ///
  /// In en, this message translates to:
  /// **'Ends'**
  String get repeatEndsLabel;

  /// Option: repeat rule ends after N occurrences
  ///
  /// In en, this message translates to:
  /// **'After a number of times'**
  String get repeatEndsAfter;

  /// Field label: number of occurrences before a repeat rule ends
  ///
  /// In en, this message translates to:
  /// **'Occurrences'**
  String get repeatCountLabel;

  /// Option: no reminder
  ///
  /// In en, this message translates to:
  /// **'No reminder'**
  String get reminderNone;

  /// Option: reminder at a chosen date and time
  ///
  /// In en, this message translates to:
  /// **'At a specific time'**
  String get reminderCustomTime;

  /// Tooltip/screen reader label for a minus stepper button
  ///
  /// In en, this message translates to:
  /// **'Decrease'**
  String get a11yDecrease;

  /// Tooltip/screen reader label for a plus stepper button
  ///
  /// In en, this message translates to:
  /// **'Increase'**
  String get a11yIncrease;

  /// Title of the sheet used to pick a task to link
  ///
  /// In en, this message translates to:
  /// **'Choose a task'**
  String get pickTaskTitle;

  /// Shown in the task picker when there are no open tasks
  ///
  /// In en, this message translates to:
  /// **'No open tasks'**
  String get pickTaskEmpty;

  /// Tooltip for search icon on the tasks screen
  ///
  /// In en, this message translates to:
  /// **'Search tasks'**
  String get tasksSearchTooltip;

  /// Section header for overdue tasks in the Today view
  ///
  /// In en, this message translates to:
  /// **'Overdue'**
  String get tasksSectionOverdue;

  /// Section header for tasks due today
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get tasksSectionToday;

  /// Screen reader label for the repeat icon on a task
  ///
  /// In en, this message translates to:
  /// **'Repeats'**
  String get tasksRecurringSemantics;

  /// Filter label
  ///
  /// In en, this message translates to:
  /// **'Minimum priority'**
  String get tasksFilterPriorityAtLeast;

  /// Filter label
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get tasksFilterCategory;

  /// Filter option
  ///
  /// In en, this message translates to:
  /// **'Any category'**
  String get tasksFilterAnyCategory;

  /// Filter label
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get tasksFilterLabel;

  /// Filter option
  ///
  /// In en, this message translates to:
  /// **'Any label'**
  String get tasksFilterAnyLabel;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Reset filters'**
  String get tasksFilterReset;

  /// Task view grouping tasks by project
  ///
  /// In en, this message translates to:
  /// **'By project'**
  String get tasksViewByProject;

  /// Task view grouping tasks by priority
  ///
  /// In en, this message translates to:
  /// **'By priority'**
  String get tasksViewByPriority;

  /// Task view grouping tasks by category
  ///
  /// In en, this message translates to:
  /// **'By category'**
  String get tasksViewByCategory;

  /// Group header for tasks without category
  ///
  /// In en, this message translates to:
  /// **'No category'**
  String get tasksGroupNoCategory;

  /// Indicator that a task waits for other unfinished tasks
  ///
  /// In en, this message translates to:
  /// **'Blocked by {count, plural, =1{1 task} other{{count} tasks}}'**
  String taskBlockedBy(int count);

  /// Confirmation when completing a task with open blockers
  ///
  /// In en, this message translates to:
  /// **'This task is blocked by unfinished tasks. Complete it anyway?'**
  String get taskBlockedWarning;

  /// Button in task editor that opens the focus timer linked to this task
  ///
  /// In en, this message translates to:
  /// **'Focus on this task'**
  String get taskStartFocus;

  /// Button that clears a date field
  ///
  /// In en, this message translates to:
  /// **'Remove date'**
  String get taskRemoveDate;

  /// Toggle off state: due date without time
  ///
  /// In en, this message translates to:
  /// **'No specific time'**
  String get taskAllDay;

  /// Snackbar after saving
  ///
  /// In en, this message translates to:
  /// **'Task saved'**
  String get taskSaved;

  /// Snackbar after quick add
  ///
  /// In en, this message translates to:
  /// **'Task created'**
  String get taskCreated;

  /// Hint in reminder picker
  ///
  /// In en, this message translates to:
  /// **'Set a due date to use relative reminders'**
  String get taskReminderNeedsDue;

  /// Hint shown in the new task editor
  ///
  /// In en, this message translates to:
  /// **'Save the task first to add subtasks, checklist items, labels and dependencies.'**
  String get taskSubtaskDetailsHint;

  /// Field label
  ///
  /// In en, this message translates to:
  /// **'Label name'**
  String get taskLabelName;

  /// Section header in task editor for notes and description
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get taskMoreDetails;

  /// Section header in task editor for dates, repeat, reminders
  ///
  /// In en, this message translates to:
  /// **'Planning'**
  String get taskPlanning;

  /// Section header in task editor for project, category, labels
  ///
  /// In en, this message translates to:
  /// **'Organize'**
  String get taskOrganize;

  /// Section header in task editor for subtasks, checklist, dependencies
  ///
  /// In en, this message translates to:
  /// **'Breakdown'**
  String get taskBreakdown;

  /// Confirmation title
  ///
  /// In en, this message translates to:
  /// **'Delete this task forever?'**
  String get trashDeleteTaskTitle;

  /// Confirmation title
  ///
  /// In en, this message translates to:
  /// **'Delete this note forever?'**
  String get trashDeleteNoteTitle;

  /// Confirmation body for permanent deletion
  ///
  /// In en, this message translates to:
  /// **'This cannot be undone.'**
  String get trashDeleteBody;

  /// Confirmation title for emptying the trash
  ///
  /// In en, this message translates to:
  /// **'Empty trash?'**
  String get trashEmptyTitle;

  /// Confirmation body for emptying trash
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 item will be deleted permanently.} other{{count} items will be deleted permanently.}}'**
  String trashEmptyBody(int count);

  /// Snackbar after restoring an item
  ///
  /// In en, this message translates to:
  /// **'Restored'**
  String get trashRestored;

  /// Snackbar after permanent deletion
  ///
  /// In en, this message translates to:
  /// **'Deleted forever'**
  String get trashPurged;

  /// Subtitle showing when the item was deleted
  ///
  /// In en, this message translates to:
  /// **'Deleted {date}'**
  String trashDeletedOn(String date);

  /// Number of items in trash
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 item} other{{count} items}}'**
  String trashCount(int count);

  /// Button: speak the visible side of the flashcard with Android text-to-speech
  ///
  /// In en, this message translates to:
  /// **'Read aloud'**
  String get flashcardsReadAloud;

  /// Shown when no text-to-speech engine works
  ///
  /// In en, this message translates to:
  /// **'Text-to-speech isn’t available on this device.'**
  String get flashcardsTtsUnavailable;

  /// Shown when the engine has no voice for the language
  ///
  /// In en, this message translates to:
  /// **'No voice is installed for this language. Add one in Android text-to-speech settings.'**
  String get flashcardsTtsLanguageUnavailable;

  /// Calendar view: list of upcoming days with events and due tasks
  ///
  /// In en, this message translates to:
  /// **'Agenda'**
  String get calendarAgenda;

  /// Accessibility label of a project icon choice
  ///
  /// In en, this message translates to:
  /// **'{name, select, spark{Spark} rocket{Rocket} book{Book} work{Work} home{Home} heart{Heart} code{Code} palette{Palette} fitness{Fitness} school{School} travel{Travel} money{Savings} other{Icon}}'**
  String projectIconName(String name);

  /// Optional flashcard field (card editor and review back side)
  ///
  /// In en, this message translates to:
  /// **'More fields'**
  String get cardMoreFields;

  /// Optional flashcard field (card editor and review back side)
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get cardFieldExample;

  /// Optional flashcard field (card editor and review back side)
  ///
  /// In en, this message translates to:
  /// **'Explanation'**
  String get cardFieldExplanation;

  /// Optional flashcard field (card editor and review back side)
  ///
  /// In en, this message translates to:
  /// **'Pronunciation'**
  String get cardFieldPronunciation;

  /// Optional flashcard field (card editor and review back side)
  ///
  /// In en, this message translates to:
  /// **'Additional notes'**
  String get cardFieldNotes;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Milestones'**
  String get projectMilestones;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Add milestone'**
  String get milestoneAdd;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Edit milestone'**
  String get milestoneEdit;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Milestone'**
  String get milestoneTitleLabel;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'No date'**
  String get milestoneNoDate;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'No milestones yet. Add checkpoints with dates to track the project on the calendar.'**
  String get milestonesEmpty;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Milestone deleted'**
  String get milestoneDeleted;

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Mark milestone \"{title}\" as done'**
  String milestoneDoneA11y(String title);

  /// Project milestones (project screen and calendar)
  ///
  /// In en, this message translates to:
  /// **'Milestone · {project}'**
  String calendarMilestone(String project);

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Inbox'**
  String get tasksViewInbox;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get tasksViewArchived;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Tasks without a project or date land here. Sort them when you have a minute.'**
  String get tasksEmptyInbox;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Archived tasks are kept here, out of your lists and reminders.'**
  String get tasksEmptyArchived;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get taskArchivedBadge;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get taskStatusInProgress;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Task archived'**
  String get taskArchived;

  /// Task status / archive UI
  ///
  /// In en, this message translates to:
  /// **'Task restored from archive'**
  String get taskUnarchived;

  /// focusPlanTitle
  ///
  /// In en, this message translates to:
  /// **'Session plan'**
  String get focusPlanTitle;

  /// Total planned time of the series
  ///
  /// In en, this message translates to:
  /// **'Total {duration}'**
  String focusPlanTotal(String duration);

  /// focusPlanRounds
  ///
  /// In en, this message translates to:
  /// **'Focus sessions'**
  String get focusPlanRounds;

  /// focusPlanUnlimited
  ///
  /// In en, this message translates to:
  /// **'∞'**
  String get focusPlanUnlimited;

  /// focusPlanLongEvery
  ///
  /// In en, this message translates to:
  /// **'Long break after'**
  String get focusPlanLongEvery;

  /// focusPlanSkipLastBreak
  ///
  /// In en, this message translates to:
  /// **'Skip the last break'**
  String get focusPlanSkipLastBreak;

  /// focusPlanAutoBreaks
  ///
  /// In en, this message translates to:
  /// **'Start breaks automatically'**
  String get focusPlanAutoBreaks;

  /// focusPlanAutoFocus
  ///
  /// In en, this message translates to:
  /// **'Start focus automatically after a break'**
  String get focusPlanAutoFocus;

  /// focusPlanSave
  ///
  /// In en, this message translates to:
  /// **'Save plan'**
  String get focusPlanSave;

  /// focusPlanNameHint
  ///
  /// In en, this message translates to:
  /// **'e.g. Exam prep'**
  String get focusPlanNameHint;

  /// focusPlanSaved
  ///
  /// In en, this message translates to:
  /// **'Plan saved'**
  String get focusPlanSaved;

  /// Tooltip of a saved plan chip
  ///
  /// In en, this message translates to:
  /// **'{name}: {work} min focus, {rest} min break'**
  String focusPlanPresetA11y(String name, int work, int rest);

  /// Stepper minus button
  ///
  /// In en, this message translates to:
  /// **'Decrease {label}'**
  String focusPlanDecrease(String label);

  /// Stepper plus button
  ///
  /// In en, this message translates to:
  /// **'Increase {label}'**
  String focusPlanIncrease(String label);

  /// Position in a limited series
  ///
  /// In en, this message translates to:
  /// **'Session {current} of {total}'**
  String focusRoundOf(int current, int total);

  /// focusSeriesComplete
  ///
  /// In en, this message translates to:
  /// **'Series complete. Well done!'**
  String get focusSeriesComplete;

  /// filterAll
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// Import summary
  ///
  /// In en, this message translates to:
  /// **'{added} imported · {duplicates} duplicates skipped · {invalid} incomplete rows'**
  String importCardsResultDetail(int added, int duplicates, int invalid);

  /// flashcardsSuspend
  ///
  /// In en, this message translates to:
  /// **'Suspend card'**
  String get flashcardsSuspend;

  /// flashcardsResume
  ///
  /// In en, this message translates to:
  /// **'Resume card'**
  String get flashcardsResume;

  /// flashcardsSuspended
  ///
  /// In en, this message translates to:
  /// **'Card suspended: it will not be scheduled'**
  String get flashcardsSuspended;

  /// flashcardsResumed
  ///
  /// In en, this message translates to:
  /// **'Card resumed'**
  String get flashcardsResumed;

  /// flashcardsSuspendedFilter
  ///
  /// In en, this message translates to:
  /// **'Suspended'**
  String get flashcardsSuspendedFilter;

  /// Filtered card count
  ///
  /// In en, this message translates to:
  /// **'{shown} of {total} cards'**
  String flashcardsShownOf(int shown, int total);

  /// flashcardsImportFile
  ///
  /// In en, this message translates to:
  /// **'From file'**
  String get flashcardsImportFile;

  /// speechTitle
  ///
  /// In en, this message translates to:
  /// **'Speech'**
  String get speechTitle;

  /// speechAppLanguage
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get speechAppLanguage;

  /// speechFrontLanguage
  ///
  /// In en, this message translates to:
  /// **'Front language'**
  String get speechFrontLanguage;

  /// speechBackLanguage
  ///
  /// In en, this message translates to:
  /// **'Back language'**
  String get speechBackLanguage;

  /// speechRepeat
  ///
  /// In en, this message translates to:
  /// **'Repeat each reading'**
  String get speechRepeat;

  /// speechRate
  ///
  /// In en, this message translates to:
  /// **'Speed'**
  String get speechRate;

  /// speechAutoRead
  ///
  /// In en, this message translates to:
  /// **'Read the question automatically'**
  String get speechAutoRead;

  /// speechHint
  ///
  /// In en, this message translates to:
  /// **'Uses the voices installed on this device, offline. If a language has no voice, you will be told and nothing else is used instead.'**
  String get speechHint;

  /// studyHowTitle
  ///
  /// In en, this message translates to:
  /// **'How do you want to study?'**
  String get studyHowTitle;

  /// Scheduled study button
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Review 1 card} other{Review {count} cards}}'**
  String studyDueCount(int count);

  /// studyPracticeAll
  ///
  /// In en, this message translates to:
  /// **'Practice all cards (schedule unchanged)'**
  String get studyPracticeAll;

  /// studyPracticeMistakes
  ///
  /// In en, this message translates to:
  /// **'Practice recent mistakes'**
  String get studyPracticeMistakes;

  /// studyPracticeHint
  ///
  /// In en, this message translates to:
  /// **'Practice rounds never change when cards are due. Review updates the schedule.'**
  String get studyPracticeHint;

  /// studyModeClassic
  ///
  /// In en, this message translates to:
  /// **'Classic'**
  String get studyModeClassic;

  /// studyModeReverse
  ///
  /// In en, this message translates to:
  /// **'Reverse'**
  String get studyModeReverse;

  /// studyModeMixed
  ///
  /// In en, this message translates to:
  /// **'Both ways'**
  String get studyModeMixed;

  /// studyModeTyped
  ///
  /// In en, this message translates to:
  /// **'Type the answer'**
  String get studyModeTyped;

  /// studyModeChoice
  ///
  /// In en, this message translates to:
  /// **'Multiple choice'**
  String get studyModeChoice;

  /// studyModeListening
  ///
  /// In en, this message translates to:
  /// **'Listening'**
  String get studyModeListening;

  /// studyPractice
  ///
  /// In en, this message translates to:
  /// **'practice'**
  String get studyPractice;

  /// studyNoMistakes
  ///
  /// In en, this message translates to:
  /// **'No recent mistakes in this deck. Nice!'**
  String get studyNoMistakes;

  /// studyTypeAnswer
  ///
  /// In en, this message translates to:
  /// **'Type your answer'**
  String get studyTypeAnswer;

  /// studyCheck
  ///
  /// In en, this message translates to:
  /// **'Check'**
  String get studyCheck;

  /// studyKnewIt
  ///
  /// In en, this message translates to:
  /// **'I knew it'**
  String get studyKnewIt;

  /// studyDidntKnow
  ///
  /// In en, this message translates to:
  /// **'Didn\'t know'**
  String get studyDidntKnow;

  /// Summary header
  ///
  /// In en, this message translates to:
  /// **'Missed ({count})'**
  String studyMistakes(int count);

  /// studyRepeatMistakes
  ///
  /// In en, this message translates to:
  /// **'Repeat the missed cards'**
  String get studyRepeatMistakes;

  /// studyCorrect
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get studyCorrect;

  /// studyAlmost
  ///
  /// In en, this message translates to:
  /// **'Almost — check the spelling'**
  String get studyAlmost;

  /// studyWrong
  ///
  /// In en, this message translates to:
  /// **'Not quite'**
  String get studyWrong;

  /// studyShowText
  ///
  /// In en, this message translates to:
  /// **'Show the text'**
  String get studyShowText;

  /// flashcardsImportFileFailed
  ///
  /// In en, this message translates to:
  /// **'The file could not be opened. You can paste its content instead.'**
  String get flashcardsImportFileFailed;

  /// studyNoMatchingCards
  ///
  /// In en, this message translates to:
  /// **'No cards match this choice yet.'**
  String get studyNoMatchingCards;

  /// studyPracticeNew
  ///
  /// In en, this message translates to:
  /// **'New only'**
  String get studyPracticeNew;

  /// studyPracticeHard
  ///
  /// In en, this message translates to:
  /// **'Hard cards'**
  String get studyPracticeHard;

  /// studyPracticeFavorites
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get studyPracticeFavorites;

  /// studySessionSize
  ///
  /// In en, this message translates to:
  /// **'Cards per session'**
  String get studySessionSize;

  /// studySessionAll
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get studySessionAll;

  /// studyOrder
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get studyOrder;

  /// studyOrderDue
  ///
  /// In en, this message translates to:
  /// **'Most overdue first'**
  String get studyOrderDue;

  /// studyOrderRandom
  ///
  /// In en, this message translates to:
  /// **'Random'**
  String get studyOrderRandom;

  /// studyOrderHardest
  ///
  /// In en, this message translates to:
  /// **'Hardest first'**
  String get studyOrderHardest;

  /// flashcardsHard
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get flashcardsHard;

  /// flashcardsFavorites
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get flashcardsFavorites;

  /// flashcardsFavorite
  ///
  /// In en, this message translates to:
  /// **'Add to favorites'**
  String get flashcardsFavorite;

  /// flashcardsUnfavorite
  ///
  /// In en, this message translates to:
  /// **'Remove from favorites'**
  String get flashcardsUnfavorite;

  /// flashcardsDuplicate
  ///
  /// In en, this message translates to:
  /// **'Duplicate'**
  String get flashcardsDuplicate;

  /// flashcardsMoveTo
  ///
  /// In en, this message translates to:
  /// **'Move to deck'**
  String get flashcardsMoveTo;

  /// flashcardsNoOtherDeck
  ///
  /// In en, this message translates to:
  /// **'Create another deck first.'**
  String get flashcardsNoOtherDeck;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Card moved} other{{count} cards moved}}'**
  String flashcardsMoved(int count);

  /// flashcardsAddTag
  ///
  /// In en, this message translates to:
  /// **'Add tag'**
  String get flashcardsAddTag;

  /// flashcardsTagHint
  ///
  /// In en, this message translates to:
  /// **'e.g. verbs'**
  String get flashcardsTagHint;

  /// Selection count
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String flashcardsSelected(int count);

  /// flashcardsSelectAll
  ///
  /// In en, this message translates to:
  /// **'Select all shown'**
  String get flashcardsSelectAll;

  /// Checkbox label
  ///
  /// In en, this message translates to:
  /// **'Select {front}'**
  String flashcardsSelectCard(String front);

  /// Recall probability pill
  ///
  /// In en, this message translates to:
  /// **'Recall {value}'**
  String flashcardsRecall(String value);

  /// flashcardsDuplicateTitle
  ///
  /// In en, this message translates to:
  /// **'Possible duplicate'**
  String get flashcardsDuplicateTitle;

  /// Duplicate dialog
  ///
  /// In en, this message translates to:
  /// **'This deck already has “{front}” → “{back}”. Save anyway?'**
  String flashcardsDuplicateMessage(String front, String back);

  /// flashcardsSaveAnyway
  ///
  /// In en, this message translates to:
  /// **'Save anyway'**
  String get flashcardsSaveAnyway;

  /// flashcardsStats
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get flashcardsStats;

  /// flashcardsStatTotal
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get flashcardsStatTotal;

  /// flashcardsStatLearning
  ///
  /// In en, this message translates to:
  /// **'Learning'**
  String get flashcardsStatLearning;

  /// flashcardsStatMatureCaption
  ///
  /// In en, this message translates to:
  /// **'Remembered for 21+ days'**
  String get flashcardsStatMatureCaption;

  /// flashcardsStatReviewsToday
  ///
  /// In en, this message translates to:
  /// **'Reviews today'**
  String get flashcardsStatReviewsToday;

  /// flashcardsStatCorrect
  ///
  /// In en, this message translates to:
  /// **'Correct answers'**
  String get flashcardsStatCorrect;

  /// Caption
  ///
  /// In en, this message translates to:
  /// **'Last {days} days'**
  String flashcardsStatLastDays(int days);

  /// flashcardsStatForget
  ///
  /// In en, this message translates to:
  /// **'Forgetting rate'**
  String get flashcardsStatForget;

  /// flashcardsStatForgetCaption
  ///
  /// In en, this message translates to:
  /// **'“Again” on learned cards'**
  String get flashcardsStatForgetCaption;

  /// flashcardsStatRecall
  ///
  /// In en, this message translates to:
  /// **'Recall now'**
  String get flashcardsStatRecall;

  /// flashcardsStatRecallCaption
  ///
  /// In en, this message translates to:
  /// **'FSRS estimate, reviewed cards'**
  String get flashcardsStatRecallCaption;

  /// Chart header
  ///
  /// In en, this message translates to:
  /// **'Reviews per day · {count} in total'**
  String flashcardsStatActivity(int count);

  /// flashcardsStatHistory
  ///
  /// In en, this message translates to:
  /// **'Latest answers'**
  String get flashcardsStatHistory;

  /// flashcardsStatNoHistory
  ///
  /// In en, this message translates to:
  /// **'No reviews yet. Study the deck to see your progress here.'**
  String get flashcardsStatNoHistory;

  /// Speak one field
  ///
  /// In en, this message translates to:
  /// **'Read {field} aloud'**
  String flashcardsSpeakField(String field);

  /// speechVoice
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get speechVoice;

  /// speechVoiceDefault
  ///
  /// In en, this message translates to:
  /// **'Automatic'**
  String get speechVoiceDefault;

  /// speechVoiceOnline
  ///
  /// In en, this message translates to:
  /// **'needs internet'**
  String get speechVoiceOnline;

  /// speechTest
  ///
  /// In en, this message translates to:
  /// **'Test voice'**
  String get speechTest;

  /// importNext
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get importNext;

  /// importPreviewTitle
  ///
  /// In en, this message translates to:
  /// **'Match columns to fields'**
  String get importPreviewTitle;

  /// importIgnoreColumn
  ///
  /// In en, this message translates to:
  /// **'Ignore'**
  String get importIgnoreColumn;

  /// Column label
  ///
  /// In en, this message translates to:
  /// **'Column {n}'**
  String importColumn(int n);

  /// Preview counts
  ///
  /// In en, this message translates to:
  /// **'{ready} cards ready · {invalid} incomplete rows will be skipped'**
  String importPreviewSummary(int ready, int invalid);

  /// importNeedFrontBack
  ///
  /// In en, this message translates to:
  /// **'Choose which columns are the front and the back.'**
  String get importNeedFrontBack;

  /// actionMoveUp
  ///
  /// In en, this message translates to:
  /// **'Move up'**
  String get actionMoveUp;

  /// actionMoveDown
  ///
  /// In en, this message translates to:
  /// **'Move down'**
  String get actionMoveDown;

  /// flashcardsLayoutTitle
  ///
  /// In en, this message translates to:
  /// **'Card layout'**
  String get flashcardsLayoutTitle;

  /// flashcardsLayoutHint
  ///
  /// In en, this message translates to:
  /// **'Rename, hide or reorder the extra fields for this deck. Card content is never changed.'**
  String get flashcardsLayoutHint;

  /// Checkbox
  ///
  /// In en, this message translates to:
  /// **'Show {field} while studying'**
  String flashcardsLayoutShow(String field);

  /// flashcardsLayoutStepReveal
  ///
  /// In en, this message translates to:
  /// **'Reveal the answer step by step'**
  String get flashcardsLayoutStepReveal;

  /// flashcardsLayoutStepRevealHint
  ///
  /// In en, this message translates to:
  /// **'The back appears first; each extra field opens with a tap.'**
  String get flashcardsLayoutStepRevealHint;

  /// Step reveal
  ///
  /// In en, this message translates to:
  /// **'Show {field}'**
  String flashcardsRevealNext(String field);

  /// Media size
  ///
  /// In en, this message translates to:
  /// **'This file is larger than {mb} MB.'**
  String flashcardsMediaTooLarge(int mb);

  /// flashcardsImage
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get flashcardsImage;

  /// flashcardsAudio
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get flashcardsAudio;

  /// flashcardsAddImage
  ///
  /// In en, this message translates to:
  /// **'Add image'**
  String get flashcardsAddImage;

  /// flashcardsAddAudio
  ///
  /// In en, this message translates to:
  /// **'Add audio'**
  String get flashcardsAddAudio;

  /// flashcardsPlayAudio
  ///
  /// In en, this message translates to:
  /// **'Play recording'**
  String get flashcardsPlayAudio;

  /// flashcardsAudioUnavailable
  ///
  /// In en, this message translates to:
  /// **'This recording cannot be played on this device.'**
  String get flashcardsAudioUnavailable;

  /// flashcardsCustomFields
  ///
  /// In en, this message translates to:
  /// **'Your fields'**
  String get flashcardsCustomFields;

  /// flashcardsTemplates
  ///
  /// In en, this message translates to:
  /// **'Templates'**
  String get flashcardsTemplates;

  /// Default custom field name
  ///
  /// In en, this message translates to:
  /// **'Field {n}'**
  String flashcardsNewFieldName(int n);

  /// flashcardsAddField
  ///
  /// In en, this message translates to:
  /// **'Add field'**
  String get flashcardsAddField;

  /// flashcardsFieldName
  ///
  /// In en, this message translates to:
  /// **'Field name'**
  String get flashcardsFieldName;

  /// flashcardsFieldLangDefault
  ///
  /// In en, this message translates to:
  /// **'Side language'**
  String get flashcardsFieldLangDefault;

  /// flashcardsTemplateConfirm
  ///
  /// In en, this message translates to:
  /// **'The template sets how fields are shown and adds its fields. Your cards and existing fields stay as they are.'**
  String get flashcardsTemplateConfirm;

  /// flashcardsApplyTemplate
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get flashcardsApplyTemplate;

  /// templateVocabulary
  ///
  /// In en, this message translates to:
  /// **'Vocabulary'**
  String get templateVocabulary;

  /// templateTwoTranslations
  ///
  /// In en, this message translates to:
  /// **'Word with two translations'**
  String get templateTwoTranslations;

  /// templateQuestionAnswer
  ///
  /// In en, this message translates to:
  /// **'Question and answer'**
  String get templateQuestionAnswer;

  /// templateDefinition
  ///
  /// In en, this message translates to:
  /// **'Term and definition'**
  String get templateDefinition;

  /// templateGrammar
  ///
  /// In en, this message translates to:
  /// **'Grammar rule'**
  String get templateGrammar;

  /// templateFieldPlural
  ///
  /// In en, this message translates to:
  /// **'Plural'**
  String get templateFieldPlural;

  /// templateFieldTranslation2
  ///
  /// In en, this message translates to:
  /// **'Second translation'**
  String get templateFieldTranslation2;

  /// templateFieldSynonyms
  ///
  /// In en, this message translates to:
  /// **'Synonyms'**
  String get templateFieldSynonyms;

  /// templateFieldRule
  ///
  /// In en, this message translates to:
  /// **'Rule'**
  String get templateFieldRule;

  /// deckCategory
  ///
  /// In en, this message translates to:
  /// **'Level or topic'**
  String get deckCategory;

  /// deckCategoryHint
  ///
  /// In en, this message translates to:
  /// **'e.g. A1, Medicine'**
  String get deckCategoryHint;

  /// flashcardsSearchAll
  ///
  /// In en, this message translates to:
  /// **'Search all cards'**
  String get flashcardsSearchAll;

  /// flashcardsSearchAllHint
  ///
  /// In en, this message translates to:
  /// **'Word, translation, example, note, tag…'**
  String get flashcardsSearchAllHint;

  /// flashcardsAllDecks
  ///
  /// In en, this message translates to:
  /// **'All decks'**
  String get flashcardsAllDecks;

  /// flashcardsAllLanguages
  ///
  /// In en, this message translates to:
  /// **'All languages'**
  String get flashcardsAllLanguages;

  /// flashcardsLangUnset
  ///
  /// In en, this message translates to:
  /// **'Language not set'**
  String get flashcardsLangUnset;

  /// flashcardsLevelUnset
  ///
  /// In en, this message translates to:
  /// **'No level or topic'**
  String get flashcardsLevelUnset;

  /// flashcardsByLanguage
  ///
  /// In en, this message translates to:
  /// **'Progress by language'**
  String get flashcardsByLanguage;

  /// flashcardsByLevel
  ///
  /// In en, this message translates to:
  /// **'Progress by level or topic'**
  String get flashcardsByLevel;

  /// Group stats
  ///
  /// In en, this message translates to:
  /// **'{decks} decks · {cards} cards · {mature} mature · {due} due · {correct} correct (30 days)'**
  String flashcardsGroupLine(int decks, int cards, int mature, int due, String correct);

  /// Chip in the card form: record a voice clip with the microphone
  ///
  /// In en, this message translates to:
  /// **'Record'**
  String get flashcardsRecord;

  /// Title of the sheet while the microphone is recording
  ///
  /// In en, this message translates to:
  /// **'Recording…'**
  String get flashcardsRecording;

  /// Button: stop recording and keep the clip on the card
  ///
  /// In en, this message translates to:
  /// **'Stop and keep'**
  String get flashcardsRecordStop;

  /// Inline error when microphone permission is refused
  ///
  /// In en, this message translates to:
  /// **'Microphone access is off. Allow it in the system settings to record.'**
  String get flashcardsMicDenied;

  /// Inline error when recording cannot start on this device
  ///
  /// In en, this message translates to:
  /// **'Recording isn\'t available on this device.'**
  String get flashcardsRecordFailed;

  /// Title of the nature sounds screen
  ///
  /// In en, this message translates to:
  /// **'Sounds'**
  String get soundsTitle;

  /// Section header: nature sounds
  ///
  /// In en, this message translates to:
  /// **'Nature'**
  String get soundsNature;

  /// Section header: steady noise colours for concentration
  ///
  /// In en, this message translates to:
  /// **'Focus noise'**
  String get soundsNoise;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Rain'**
  String get soundRain;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Thunderstorm'**
  String get soundStorm;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'River'**
  String get soundRiver;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Ocean waves'**
  String get soundOcean;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Campfire'**
  String get soundFire;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Forest birds'**
  String get soundForest;

  /// Sound name: crickets at night
  ///
  /// In en, this message translates to:
  /// **'Summer night'**
  String get soundNight;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'White noise'**
  String get soundWhite;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Pink noise'**
  String get soundPink;

  /// Sound name
  ///
  /// In en, this message translates to:
  /// **'Brown noise'**
  String get soundBrown;

  /// Button: play the sound mix
  ///
  /// In en, this message translates to:
  /// **'Play'**
  String get soundsPlay;

  /// Button/menu: sleep timer that stops the sounds
  ///
  /// In en, this message translates to:
  /// **'Sleep timer'**
  String get soundsSleep;

  /// Sleep timer menu: no timer
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get soundsSleepOff;

  /// Shown when the sleep timer is on
  ///
  /// In en, this message translates to:
  /// **'Stops at {time}'**
  String soundsSleepAt(String time);

  /// Message when too many sounds are on
  ///
  /// In en, this message translates to:
  /// **'Up to {count} sounds can play at once.'**
  String soundsMixFull(int count);

  /// Hint on the sounds screen
  ///
  /// In en, this message translates to:
  /// **'Tap a sound to start. Mix several and set each volume.'**
  String get soundsHint;

  /// Button/sheet title: volumes of the sounds in the mix
  ///
  /// In en, this message translates to:
  /// **'Mix'**
  String get soundsMixer;

  /// Accessibility label of a volume slider
  ///
  /// In en, this message translates to:
  /// **'{name} volume'**
  String soundsVolumeOf(String name);

  /// Notification title and channel name while sounds play
  ///
  /// In en, this message translates to:
  /// **'Nature sounds'**
  String get soundsChannel;

  /// Settings row: which sound plays when a timer ends
  ///
  /// In en, this message translates to:
  /// **'Timer end sound'**
  String get settingsEndTone;

  /// End sound: two soft beeps
  ///
  /// In en, this message translates to:
  /// **'Gentle beeps'**
  String get toneGentle;

  /// End sound: three short beeps
  ///
  /// In en, this message translates to:
  /// **'Beeps'**
  String get toneBeeps;

  /// End sound: knocks on wood
  ///
  /// In en, this message translates to:
  /// **'Wood knock'**
  String get toneWood;

  /// End sound: a short bird call
  ///
  /// In en, this message translates to:
  /// **'Bird call'**
  String get toneBird;

  /// End sound: a short stream of water
  ///
  /// In en, this message translates to:
  /// **'Stream'**
  String get toneStream;

  /// End sound: the phone's own notification sound
  ///
  /// In en, this message translates to:
  /// **'Phone\'s sound'**
  String get toneSystem;

  /// Language picker section: languages with voices installed on the phone
  ///
  /// In en, this message translates to:
  /// **'On this phone'**
  String get speechOnPhone;

  /// Language picker section: every language
  ///
  /// In en, this message translates to:
  /// **'All languages'**
  String get speechAllLanguages;

  /// Hint of the language search field
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get speechSearchLanguage;

  /// Button: open the phone's speech settings to download voices
  ///
  /// In en, this message translates to:
  /// **'Download more voices'**
  String get speechGetVoices;

  /// Explains how to get voices for more languages
  ///
  /// In en, this message translates to:
  /// **'Languages without a voice can be downloaded in the phone\'s speech settings.'**
  String get speechGetVoicesHint;

  /// Error when the phone's speech settings cannot be opened
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the speech settings on this phone.'**
  String get speechSettingsFailed;

  /// Marks a language with no voice installed on the phone
  ///
  /// In en, this message translates to:
  /// **'No voice installed'**
  String get speechVoiceMissing;

  /// Stepper: silence between repeated readings
  ///
  /// In en, this message translates to:
  /// **'Pause between repeats'**
  String get speechPause;

  /// A number of seconds, e.g. 1.5 s
  ///
  /// In en, this message translates to:
  /// **'{seconds} s'**
  String speechSeconds(String seconds);

  /// Switch: also read the example sentence after the answer
  ///
  /// In en, this message translates to:
  /// **'Read the example with the answer'**
  String get speechExample;

  /// Button: hands-free mode that reads every card aloud
  ///
  /// In en, this message translates to:
  /// **'Listen'**
  String get flashListen;

  /// Listen mode: skip to the next card
  ///
  /// In en, this message translates to:
  /// **'Next card'**
  String get flashListenNext;

  /// Listen mode cannot start: no cards in the list
  ///
  /// In en, this message translates to:
  /// **'No cards to listen to.'**
  String get flashListenEmpty;

  /// View option: cards as a two-column table
  ///
  /// In en, this message translates to:
  /// **'Table'**
  String get flashViewTable;

  /// View option: cards as tiles
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get flashViewCards;

  /// Button: swap the two columns (which side comes first)
  ///
  /// In en, this message translates to:
  /// **'Swap columns'**
  String get flashSwapSides;

  /// Menu: order of the card list
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get flashSort;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Newest first'**
  String get flashSortNewest;

  /// Sort option: alphabetical
  ///
  /// In en, this message translates to:
  /// **'A to Z'**
  String get flashSortAlpha;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Due first'**
  String get flashSortDue;

  /// Sort option
  ///
  /// In en, this message translates to:
  /// **'Hardest first'**
  String get flashSortHard;

  /// Menu: create cards from text in the clipboard
  ///
  /// In en, this message translates to:
  /// **'Paste cards'**
  String get flashPasteCards;

  /// Message: nothing to paste
  ///
  /// In en, this message translates to:
  /// **'The clipboard has no text.'**
  String get flashClipboardEmpty;

  /// Deck menu section title
  ///
  /// In en, this message translates to:
  /// **'Add cards'**
  String get flashMenuAdd;

  /// Deck menu section title: settings of this deck
  ///
  /// In en, this message translates to:
  /// **'Deck'**
  String get flashMenuDeck;

  /// Title of today's study activity card
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get flashToday;

  /// Button on a deck: start studying it
  ///
  /// In en, this message translates to:
  /// **'Study'**
  String get flashStudyNow;

  /// Cards answered today
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards answered} =1{1 card answered} other{{count} cards answered}}'**
  String flashTodayAnswered(int count);

  /// Sound name: rain falling in a forest
  ///
  /// In en, this message translates to:
  /// **'Rain in the forest'**
  String get soundForestRain;

  /// Settings row and sheet title
  ///
  /// In en, this message translates to:
  /// **'Automatic backups'**
  String get autoBackupTitle;

  /// Settings row subtitle
  ///
  /// In en, this message translates to:
  /// **'Every day on this phone; the last 7 are kept'**
  String get autoBackupDesc;

  /// Explains where automatic backups live
  ///
  /// In en, this message translates to:
  /// **'These copies stay on this phone and are removed if the app is uninstalled. To move to a new phone, use “Back up” to save a file.'**
  String get autoBackupHint;

  /// No automatic backup exists yet
  ///
  /// In en, this message translates to:
  /// **'No automatic backup yet. The first one is made today.'**
  String get autoBackupNone;

  /// Button: restore this automatic backup
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get autoBackupRestore;

  /// Confirm restoring an automatic backup
  ///
  /// In en, this message translates to:
  /// **'Replace all current data with the backup from {date}?'**
  String autoBackupConfirm(String date);

  /// Message after restoring
  ///
  /// In en, this message translates to:
  /// **'Restored.'**
  String get autoBackupRestored;

  /// Settings row and sheet title: list of app errors
  ///
  /// In en, this message translates to:
  /// **'Error log'**
  String get errorLogTitle;

  /// Explains the error log and its privacy
  ///
  /// In en, this message translates to:
  /// **'If something goes wrong, it is noted here: only the kind of error and where in the code, never your content. Share it to help fix the problem.'**
  String get errorLogHint;

  /// No errors recorded
  ///
  /// In en, this message translates to:
  /// **'No errors recorded.'**
  String get errorLogEmpty;

  /// Button: empty the error log
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get errorLogClear;

  /// Switch: play sounds during focus sessions
  ///
  /// In en, this message translates to:
  /// **'Play with focus sessions'**
  String get soundsWithFocus;

  /// Explains the focus link
  ///
  /// In en, this message translates to:
  /// **'Your mix starts with a focus session and pauses at breaks.'**
  String get soundsWithFocusHint;

  /// Section title: saved sound mixes
  ///
  /// In en, this message translates to:
  /// **'Saved mixes'**
  String get soundsSavedMixes;

  /// Button/dialog title: save the current mix
  ///
  /// In en, this message translates to:
  /// **'Save this mix'**
  String get soundsSaveMix;

  /// Hint for the mix name
  ///
  /// In en, this message translates to:
  /// **'Name, e.g. Rainy library'**
  String get soundsMixNameHint;

  /// Confirm deleting a saved mix
  ///
  /// In en, this message translates to:
  /// **'Delete the mix “{name}”?'**
  String soundsDeleteMix(String name);

  /// Subtitle of the daily review reminder switch
  ///
  /// In en, this message translates to:
  /// **'Once a day, only when cards are due'**
  String get settingsReviewReminderHint;

  /// Row: time of the daily review reminder
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get settingsReviewTime;

  /// App icon long-press shortcut: open the focus timer. Max ~20 chars
  ///
  /// In en, this message translates to:
  /// **'Focus'**
  String get shortcutFocus;

  /// App icon shortcut: new task. Max ~20 chars
  ///
  /// In en, this message translates to:
  /// **'New task'**
  String get shortcutNewTask;

  /// App icon shortcut: open flashcards to review. Max ~20 chars
  ///
  /// In en, this message translates to:
  /// **'Review cards'**
  String get shortcutReview;

  /// App icon shortcut: nature sounds. Max ~20 chars
  ///
  /// In en, this message translates to:
  /// **'Nature sounds'**
  String get shortcutSounds;

  /// Dashboard card and sheet: begin the day
  ///
  /// In en, this message translates to:
  /// **'Start my day'**
  String get myDayTitle;

  /// Subtitle of the Start my day card
  ///
  /// In en, this message translates to:
  /// **'Your day at a glance, then one tap to focus'**
  String get myDayHint;

  /// Tasks due today
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No tasks for today} =1{1 task for today} other{{count} tasks for today}}'**
  String myDayTasks(int count);

  /// No more events today
  ///
  /// In en, this message translates to:
  /// **'No more events today'**
  String get myDayNoEvents;

  /// Next event today
  ///
  /// In en, this message translates to:
  /// **'Next: {title} at {time}'**
  String myDayNextEvent(String title, String time);

  /// Habits still to do today
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{All habits done} =1{1 habit left} other{{count} habits left}}'**
  String myDayHabits(int count);

  /// Primary button: start a focus session now
  ///
  /// In en, this message translates to:
  /// **'Begin with a focus session'**
  String get myDayBeginFocus;

  /// Hijri month 1
  ///
  /// In en, this message translates to:
  /// **'Muharram'**
  String get hijriMonth1;

  /// Hijri month 2
  ///
  /// In en, this message translates to:
  /// **'Safar'**
  String get hijriMonth2;

  /// Hijri month 3
  ///
  /// In en, this message translates to:
  /// **'Rabi al-Awwal'**
  String get hijriMonth3;

  /// Hijri month 4
  ///
  /// In en, this message translates to:
  /// **'Rabi al-Thani'**
  String get hijriMonth4;

  /// Hijri month 5
  ///
  /// In en, this message translates to:
  /// **'Jumada al-Ula'**
  String get hijriMonth5;

  /// Hijri month 6
  ///
  /// In en, this message translates to:
  /// **'Jumada al-Akhirah'**
  String get hijriMonth6;

  /// Hijri month 7
  ///
  /// In en, this message translates to:
  /// **'Rajab'**
  String get hijriMonth7;

  /// Hijri month 8
  ///
  /// In en, this message translates to:
  /// **'Shaban'**
  String get hijriMonth8;

  /// Hijri month 9
  ///
  /// In en, this message translates to:
  /// **'Ramadan'**
  String get hijriMonth9;

  /// Hijri month 10
  ///
  /// In en, this message translates to:
  /// **'Shawwal'**
  String get hijriMonth10;

  /// Hijri month 11
  ///
  /// In en, this message translates to:
  /// **'Dhu al-Qadah'**
  String get hijriMonth11;

  /// Hijri month 12
  ///
  /// In en, this message translates to:
  /// **'Dhu al-Hijjah'**
  String get hijriMonth12;

  /// Hijri date: day, month name, year (AH)
  ///
  /// In en, this message translates to:
  /// **'{day} {month} {year} AH'**
  String hijriDate(int day, String month, int year);

  /// Settings switch: show Hijri dates in the calendar
  ///
  /// In en, this message translates to:
  /// **'Hijri dates'**
  String get settingsHijri;

  /// Subtitle of the Hijri switch
  ///
  /// In en, this message translates to:
  /// **'Shown in the calendar and on the home screen (Umm al-Qura)'**
  String get settingsHijriHint;

  /// Streak chip: consecutive study days
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 day} other{{count} days}}'**
  String studyStreakDays(int count);

  /// Daily card goal progress
  ///
  /// In en, this message translates to:
  /// **'{done} of {goal} cards today'**
  String studyGoalProgress(int done, int goal);

  /// Daily card goal reached
  ///
  /// In en, this message translates to:
  /// **'Daily goal reached. Well done!'**
  String get studyGoalReached;

  /// Sheet title: the last 7 days of study
  ///
  /// In en, this message translates to:
  /// **'Your week'**
  String get studyWeekTitle;

  /// Cards answered in the last 7 days
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards answered in 7 days} =1{1 card answered in 7 days} other{{count} cards answered in 7 days}}'**
  String studyWeekCards(int count);

  /// Focus time in the last 7 days
  ///
  /// In en, this message translates to:
  /// **'{duration} of focus in 7 days'**
  String studyWeekFocus(String duration);

  /// Current and best streak
  ///
  /// In en, this message translates to:
  /// **'Streak: {current} · Best: {best}'**
  String studyStreakLine(int current, int best);

  /// Choose the daily card goal
  ///
  /// In en, this message translates to:
  /// **'Daily goal (cards)'**
  String get studyGoalTitle;

  /// No daily goal
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get studyGoalOff;

  /// Settings switch: Do Not Disturb during focus sessions
  ///
  /// In en, this message translates to:
  /// **'Do Not Disturb while focusing'**
  String get focusDndTitle;

  /// Subtitle of the DND switch
  ///
  /// In en, this message translates to:
  /// **'Turns on for each focus session and back off at the break'**
  String get focusDndHint;

  /// DND switch: system access still missing
  ///
  /// In en, this message translates to:
  /// **'Allow access in the phone settings to use this'**
  String get focusDndNeedsAccess;

  /// Tooltip of the microphone button in text fields
  ///
  /// In en, this message translates to:
  /// **'Speak to type'**
  String get voiceInput;

  /// Shown on the phone's speech screen
  ///
  /// In en, this message translates to:
  /// **'Speak now'**
  String get voiceInputPrompt;

  /// No speech recognizer on the phone
  ///
  /// In en, this message translates to:
  /// **'Voice typing isn’t available on this phone. Install or turn on a speech service (for example Speech Recognition & Synthesis by Google).'**
  String get voiceInputUnavailable;

  /// Prayer name
  ///
  /// In en, this message translates to:
  /// **'Fajr'**
  String get prayerFajr;

  /// Sunrise (not a prayer)
  ///
  /// In en, this message translates to:
  /// **'Sunrise'**
  String get prayerSunrise;

  /// Prayer name
  ///
  /// In en, this message translates to:
  /// **'Dhuhr'**
  String get prayerDhuhr;

  /// Prayer name
  ///
  /// In en, this message translates to:
  /// **'Asr'**
  String get prayerAsr;

  /// Prayer name
  ///
  /// In en, this message translates to:
  /// **'Maghrib'**
  String get prayerMaghrib;

  /// Prayer name
  ///
  /// In en, this message translates to:
  /// **'Isha'**
  String get prayerIsha;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Muslim World League'**
  String get prayerMethodMwl;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Umm al-Qura, Makkah'**
  String get prayerMethodUmmAlQura;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Egyptian General Authority'**
  String get prayerMethodEgypt;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Jordan, Ministry of Awqaf'**
  String get prayerMethodJordan;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'University of Islamic Sciences, Karachi'**
  String get prayerMethodKarachi;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Islamic Society of North America'**
  String get prayerMethodIsna;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Gulf region'**
  String get prayerMethodGulf;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get prayerMethodKuwait;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Qatar'**
  String get prayerMethodQatar;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Türkiye, Diyanet'**
  String get prayerMethodTurkey;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Singapore, Malaysia, Indonesia'**
  String get prayerMethodSingapore;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'France (12°)'**
  String get prayerMethodFrance;

  /// Prayer calculation method
  ///
  /// In en, this message translates to:
  /// **'Russia, Spiritual Administration'**
  String get prayerMethodRussia;

  /// Notification title at prayer time
  ///
  /// In en, this message translates to:
  /// **'Time for {name}'**
  String prayerNotifTitle(String name);

  /// Notification text at prayer time
  ///
  /// In en, this message translates to:
  /// **'Prayer time · {time}'**
  String prayerNotifBody(String time);

  /// Prayer times sheet/row title
  ///
  /// In en, this message translates to:
  /// **'Prayer times'**
  String get prayerTitle;

  /// Prayer times are off
  ///
  /// In en, this message translates to:
  /// **'Choose your city to see prayer times. They are calculated on the phone; no location access is needed.'**
  String get prayerOffHint;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Choose city'**
  String get prayerChooseCity;

  /// Row label
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get prayerCity;

  /// Search hint
  ///
  /// In en, this message translates to:
  /// **'Search for a city'**
  String get prayerCitySearch;

  /// Row label
  ///
  /// In en, this message translates to:
  /// **'Calculation method'**
  String get prayerMethod;

  /// Switch
  ///
  /// In en, this message translates to:
  /// **'Hanafi Asr (later time)'**
  String get prayerHanafiAsr;

  /// Switch
  ///
  /// In en, this message translates to:
  /// **'Notify at each prayer time'**
  String get prayerReminders;

  /// Switch
  ///
  /// In en, this message translates to:
  /// **'Pause focus at prayer time'**
  String get prayerPauseFocus;

  /// Switch subtitle
  ///
  /// In en, this message translates to:
  /// **'A running session pauses; continue after the prayer'**
  String get prayerPauseFocusHint;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Turn off prayer times'**
  String get prayerTurnOff;

  /// Footnote
  ///
  /// In en, this message translates to:
  /// **'Calculated times can differ by a few minutes from your local mosque.'**
  String get prayerAccuracyNote;

  /// Dashboard line: next prayer
  ///
  /// In en, this message translates to:
  /// **'{name} at {time}'**
  String prayerNext(String name, String time);

  /// Anki file in the newest format only
  ///
  /// In en, this message translates to:
  /// **'This Anki file uses the newest format. In Anki, export again with “Support older Anki versions” turned on, then import that file.'**
  String get importAnkiNewFormat;

  /// Button: get a spreadsheet template to fill on a computer
  ///
  /// In en, this message translates to:
  /// **'Spreadsheet template'**
  String get importTemplate;

  /// Sample front in the template
  ///
  /// In en, this message translates to:
  /// **'apple'**
  String get importTemplateFront;

  /// Sample back in the template
  ///
  /// In en, this message translates to:
  /// **'a round fruit'**
  String get importTemplateBack;

  /// Sample example sentence in the template
  ///
  /// In en, this message translates to:
  /// **'I eat an apple every day.'**
  String get importTemplateExample;

  /// Sample tag in the template
  ///
  /// In en, this message translates to:
  /// **'food'**
  String get importTemplateTag;

  /// Sheet: ready-made decks
  ///
  /// In en, this message translates to:
  /// **'Starter decks'**
  String get starterTitle;

  /// Sheet subtitle
  ///
  /// In en, this message translates to:
  /// **'Add one to try studying right away. You can edit or delete it later.'**
  String get starterHint;

  /// Button: add this starter deck
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get starterAdd;

  /// Starter deck name: everyday English words with Arabic meanings
  ///
  /// In en, this message translates to:
  /// **'Everyday English words (Arabic)'**
  String get starterWords;

  /// Starter deck name
  ///
  /// In en, this message translates to:
  /// **'World capitals'**
  String get starterCapitals;

  /// Starter deck name: chemical element symbols
  ///
  /// In en, this message translates to:
  /// **'Chemical elements'**
  String get starterElements;

  /// Settings: accent colour
  ///
  /// In en, this message translates to:
  /// **'Accent colour'**
  String get settingsAccent;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Violet'**
  String get accentViolet;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get accentBlue;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Teal'**
  String get accentTeal;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Green'**
  String get accentGreen;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Rose'**
  String get accentRose;

  /// Accent colour name
  ///
  /// In en, this message translates to:
  /// **'Amber'**
  String get accentAmber;

  /// Settings: text size on flashcards during review
  ///
  /// In en, this message translates to:
  /// **'Flashcard text size'**
  String get settingsFlashTextSize;

  /// Sample word to preview the flashcard text size
  ///
  /// In en, this message translates to:
  /// **'Example'**
  String get settingsFlashTextSample;

  /// Home screen widget: no session running
  ///
  /// In en, this message translates to:
  /// **'Tap to focus'**
  String get widgetStartFocus;

  /// Home screen widget: focus running until a time
  ///
  /// In en, this message translates to:
  /// **'Focus until {time}'**
  String widgetFocusUntil(String time);

  /// Home screen widget: no flashcards due
  ///
  /// In en, this message translates to:
  /// **'Cards: all done'**
  String get widgetNoCardsDue;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'What does “Start my day” do?'**
  String get faqMyDayQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Once a day the home screen offers it: see today’s tasks, the next event, habits left and cards due, then begin a focus session with one tap. Long-press the app icon for quick actions, or add the home screen widget to see focus time and cards due.'**
  String get faqMyDayA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How do I add a task with a reminder?'**
  String get faqTasksQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Tap New task on Home or + in Tasks. Type the title or speak it with the microphone, then set a due date, a time and a reminder. Overdue tasks are listed first.'**
  String get faqTasksA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How does the focus timer work?'**
  String get faqFocusQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Choose Pomodoro, a countdown or open time and press Start; breaks can follow automatically. In Settings you can pick the end sound, turn on Do Not Disturb while focusing, and play your nature sounds with each session.'**
  String get faqFocusA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Can I mix nature sounds?'**
  String get faqSoundsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Turn on up to six real recordings, set each volume and save the mix by name. They keep playing in the background, and a sleep timer can stop them. No music is used.'**
  String get faqSoundsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Can the calendar show Hijri dates?'**
  String get faqCalendarQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Yes. Hijri dates (Umm al-Qura) show automatically in Arabic and can be turned on in Settings for any language. Events, tasks with due dates and project milestones appear together.'**
  String get faqCalendarA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How does review decide which cards I see?'**
  String get faqFlashcardsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Cards you know well come back after longer gaps and cards you miss come back soon (spaced repetition). Rate each answer Again, Hard, Good or Easy. Set a daily goal and keep your streak on the Today card. Set an exam date in a deck to see the days left and how many new cards to learn each day. Sort by \"My order\" to drag cards into place, tap the speaker on either side to hear it, and set speed and repeats in the Speech menu.'**
  String get faqFlashcardsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Can I bring cards from Anki or Excel?'**
  String get faqImportQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Yes. In a deck choose Import, then pick a file: Anki (.apkg), Excel (.xlsx) or CSV, and match the columns. Use “Spreadsheet template” to write cards on a computer. Pictures and sounds inside Anki files are not imported.'**
  String get faqImportA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'What can notes do?'**
  String get faqNotesQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Write freely with checklists and formatting, pin or favourite important notes, add tags and link notes to tasks. The microphone button lets you dictate. A new note can start from a template (lecture, book summary, journal, weekly plan), and the picture button adds photos.'**
  String get faqNotesA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How are habit streaks counted?'**
  String get faqHabitsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'A day counts when you reach the habit’s target on a scheduled day. Pausing a habit keeps the streak safe. Each habit can have its own reminder time.'**
  String get faqHabitsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How do goals track progress?'**
  String get faqGoalsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Give a goal a target amount and unit, then log progress. Its card shows how far you are and how much is left before the deadline.'**
  String get faqGoalsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'What are projects for?'**
  String get faqProjectsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Group tasks under a project, add milestones with dates and follow overall progress. Milestones also appear in the calendar.'**
  String get faqProjectsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'What does Insights show?'**
  String get faqInsightsQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Your focus time, finished tasks and study over days and weeks, with gentle suggestions. Everything is calculated on your phone.'**
  String get faqInsightsA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Where are all the sections?'**
  String get faqSpacesQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Spaces lists every part of the app (notes, decks, habits, goals, projects, sounds and more) so the main bar stays simple.'**
  String get faqSpacesA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How are my data backed up?'**
  String get faqBackupQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Every day the app quietly keeps an encrypted copy on this phone and keeps the last 7. In Settings you can also export a password-protected backup file and restore it on another phone.'**
  String get faqBackupA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'How do prayer times work?'**
  String get faqPrayerQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Choose your city in Settings → Prayer times. Times are calculated on the phone with the method used there, and you can change the method and the Asr school. You can be notified at each prayer, and a running focus session pauses.'**
  String get faqPrayerA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Where are my data stored?'**
  String get faqPrivacyQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'On your phone only, in an encrypted database. There is no account and no tracking. The internet is used only by features you turn on yourself, such as the optional assistant.'**
  String get faqPrivacyA;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'What is the assistant?'**
  String get faqAssistantQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'An optional helper you connect to your own AI service in Settings. It is off by default and asks before sending any note text.'**
  String get faqAssistantA;

  /// Tour page 1 title
  ///
  /// In en, this message translates to:
  /// **'Plan your day'**
  String get tourPlanTitle;

  /// Tour page 1
  ///
  /// In en, this message translates to:
  /// **'Tasks, calendar and habits in one calm place. Begin each morning with “Start my day”.'**
  String get tourPlanBody;

  /// Tour page 2 title
  ///
  /// In en, this message translates to:
  /// **'Focus deeply'**
  String get tourFocusTitle;

  /// Tour page 2
  ///
  /// In en, this message translates to:
  /// **'Timed sessions with real nature sounds, Do Not Disturb and gentle end tones.'**
  String get tourFocusBody;

  /// Tour page 3 title
  ///
  /// In en, this message translates to:
  /// **'Learn for good'**
  String get tourLearnTitle;

  /// Tour page 3
  ///
  /// In en, this message translates to:
  /// **'Flashcards with spaced repetition, speech in many languages, and imports from Anki or Excel.'**
  String get tourLearnBody;

  /// Help screen title / settings row
  ///
  /// In en, this message translates to:
  /// **'Help & questions'**
  String get helpTitle;

  /// Button: open the screen an answer is about
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get helpOpen;

  /// Button: show the 3-page tour again
  ///
  /// In en, this message translates to:
  /// **'Take the tour'**
  String get helpTour;

  /// Tour: next page
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get tourNext;

  /// Tour: finish
  ///
  /// In en, this message translates to:
  /// **'Let’s begin'**
  String get tourDone;

  /// File column header
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get transferColTitle;

  /// File column header: task notes
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get transferColNotes;

  /// File column header: note text
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get transferColBody;

  /// File column header: due date (YYYY-MM-DD)
  ///
  /// In en, this message translates to:
  /// **'Due date'**
  String get transferColDue;

  /// File column header: 0–3
  ///
  /// In en, this message translates to:
  /// **'Priority (0-3)'**
  String get transferColPriority;

  /// File column header
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get transferColDone;

  /// File column header
  ///
  /// In en, this message translates to:
  /// **'Project'**
  String get transferColProject;

  /// File column header
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get transferColCategory;

  /// Sheet title / menu item
  ///
  /// In en, this message translates to:
  /// **'Import and export'**
  String get transferTitle;

  /// Section: export formats
  ///
  /// In en, this message translates to:
  /// **'Save as'**
  String get transferSaveAs;

  /// Button: import a file
  ///
  /// In en, this message translates to:
  /// **'Import from a file'**
  String get transferImport;

  /// Hint under import
  ///
  /// In en, this message translates to:
  /// **'Excel, CSV or a table in Word. Columns: title, due date (2026-12-31), priority 0-3, done, project, notes. Tasks already in the app are skipped.'**
  String get transferImportTasksHint;

  /// Hint under import
  ///
  /// In en, this message translates to:
  /// **'Word, Markdown or text files become a note. Excel or CSV: one note per row (title, text).'**
  String get transferImportNotesHint;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'File saved'**
  String get transferSaved;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'The file could not be made. Nothing was changed.'**
  String get transferFailed;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'This file can’t be read here. Use Excel, CSV, Word, Markdown or text.'**
  String get transferUnsupported;

  /// Snackbar after import
  ///
  /// In en, this message translates to:
  /// **'{added, plural, =0{Nothing new to add} =1{1 added} other{{added} added}}'**
  String transferImported(int added);

  /// Format name: plain text
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get transferFormatText;

  /// Section: export every note
  ///
  /// In en, this message translates to:
  /// **'All notes'**
  String get transferAllNotes;

  /// Section: export the open note
  ///
  /// In en, this message translates to:
  /// **'This note'**
  String get transferThisNote;

  /// Deck menu: save the deck as Excel, Word or PDF
  ///
  /// In en, this message translates to:
  /// **'Save as Excel, Word or PDF'**
  String get transferDeckFormats;

  /// FAQ question
  ///
  /// In en, this message translates to:
  /// **'Can I use Excel, Word or PDF files?'**
  String get faqFilesQ;

  /// FAQ answer
  ///
  /// In en, this message translates to:
  /// **'Yes. Tasks and Notes have an import and export button (two arrows) at the top, and every deck has it in its menu. Save as Excel, CSV, Word or PDF, or bring in Excel, CSV, Word, Markdown or text files. Column names can be in any of the app’s languages, and files you saved can always be imported again.'**
  String get faqFilesA;

  /// Note template name
  ///
  /// In en, this message translates to:
  /// **'Lecture'**
  String get tplLecture;

  /// Note template name
  ///
  /// In en, this message translates to:
  /// **'Book summary'**
  String get tplBook;

  /// Note template name
  ///
  /// In en, this message translates to:
  /// **'Journal'**
  String get tplJournal;

  /// Note template name
  ///
  /// In en, this message translates to:
  /// **'Weekly plan'**
  String get tplWeek;

  /// Template body: markdown headings (#) and checklist (- [ ]); keep the symbols
  ///
  /// In en, this message translates to:
  /// **'## Key points\n- \n\n## Questions\n- [ ] \n\n## Summary\n'**
  String get tplLectureBody;

  /// Template body: markdown; keep the symbols
  ///
  /// In en, this message translates to:
  /// **'## Main idea\n\n## What I learned\n- \n\n## Quotes\n> \n\n## To apply\n- [ ] \n'**
  String get tplBookBody;

  /// Template body: markdown; keep the symbols
  ///
  /// In en, this message translates to:
  /// **'## Grateful for\n- \n\n## Today’s focus\n- [ ] \n\n## Notes\n'**
  String get tplJournalBody;

  /// Template body: markdown; keep the symbols
  ///
  /// In en, this message translates to:
  /// **'## Goals this week\n- [ ] \n\n### Saturday\n- [ ] \n\n### Sunday\n- [ ] \n\n### Monday\n- [ ] \n\n### Tuesday\n- [ ] \n\n### Wednesday\n- [ ] \n\n### Thursday\n- [ ] \n\n### Friday\n- [ ] \n'**
  String get tplWeekBody;

  /// Shown above template chips
  ///
  /// In en, this message translates to:
  /// **'Start from a template'**
  String get tplHint;

  /// Accessibility label of a picture in a note
  ///
  /// In en, this message translates to:
  /// **'Picture'**
  String get noteImage;

  /// Toolbar: add a picture to the note
  ///
  /// In en, this message translates to:
  /// **'Add picture'**
  String get noteAddImage;

  /// Picked file is not a picture
  ///
  /// In en, this message translates to:
  /// **'This file isn’t a picture the app can read.'**
  String get noteImageUnreadable;

  /// Picture too large even after shrinking
  ///
  /// In en, this message translates to:
  /// **'This picture is too large.'**
  String get noteImageTooLarge;

  /// Deck: button to set the exam date
  ///
  /// In en, this message translates to:
  /// **'Set exam date'**
  String get examSet;

  /// Date picker title
  ///
  /// In en, this message translates to:
  /// **'Exam date'**
  String get examDate;

  /// Exam is today
  ///
  /// In en, this message translates to:
  /// **'Exam today. Good luck!'**
  String get examToday;

  /// Days until the exam
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Exam tomorrow} other{Exam in {count} days}}'**
  String examInDays(int count);

  /// New cards to learn per day before the exam
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{learn 1 new card a day} other{learn {count} new cards a day}}'**
  String examNewPerDay(int count);

  /// All cards learnt before the exam
  ///
  /// In en, this message translates to:
  /// **'all cards learnt, keep reviewing'**
  String get examAllLearnt;

  /// Button: raise the deck's daily new-card limit to the plan
  ///
  /// In en, this message translates to:
  /// **'Show {count} new cards a day'**
  String examRaiseLimit(int count);

  /// Backup dialog: how to keep a copy in Google Drive
  ///
  /// In en, this message translates to:
  /// **'To keep a copy online, choose Google Drive (or another cloud app) on the save screen that opens next.'**
  String get backupDriveHint;

  /// Deck menu: share the whole deck as a file a friend can import
  ///
  /// In en, this message translates to:
  /// **'Share deck with a friend'**
  String get flashShareDeck;

  /// Sort option: my own order (drag)
  ///
  /// In en, this message translates to:
  /// **'My order (drag)'**
  String get flashSortManual;

  /// Hint above the draggable card list
  ///
  /// In en, this message translates to:
  /// **'Hold the handle and drag a card to move it.'**
  String get flashReorderHint;

  /// Shown when my-order sort is on but a filter/search hides cards
  ///
  /// In en, this message translates to:
  /// **'Clear the search and filters to drag cards.'**
  String get flashReorderNeedsAll;

  /// Tooltip of the drag handle
  ///
  /// In en, this message translates to:
  /// **'Drag to move'**
  String get flashDragHandle;

  /// Monthly report title / menu item
  ///
  /// In en, this message translates to:
  /// **'Monthly report'**
  String get reportTitle;

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'Focus time'**
  String get reportFocus;

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'{count} sessions'**
  String reportSessions(int count);

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'Best day: {day} ({time})'**
  String reportBestDay(String day, String time);

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'{count} active days'**
  String reportActiveDays(int count);

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'Cards reviewed'**
  String get reportCards;

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'{percent} remembered'**
  String reportCardsKnown(String percent);

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'Tasks completed'**
  String get reportTasks;

  /// Report row
  ///
  /// In en, this message translates to:
  /// **'Habit check-ins'**
  String get reportHabits;

  /// Empty month
  ///
  /// In en, this message translates to:
  /// **'Nothing recorded this month yet.'**
  String get reportEmpty;

  /// Button: save report as file
  ///
  /// In en, this message translates to:
  /// **'Save as PDF or Word'**
  String get reportSave;

  /// Tooltip
  ///
  /// In en, this message translates to:
  /// **'Previous month'**
  String get reportPrevMonth;

  /// Tooltip
  ///
  /// In en, this message translates to:
  /// **'Next month'**
  String get reportNextMonth;

  /// Settings section title
  ///
  /// In en, this message translates to:
  /// **'Care of your phone and data'**
  String get careTitle;

  /// Storage sheet title
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get storageTitle;

  /// Row subtitle
  ///
  /// In en, this message translates to:
  /// **'What takes space and a clean-up of unused pictures'**
  String get storageSubtitle;

  /// Storage row
  ///
  /// In en, this message translates to:
  /// **'Pictures in notes'**
  String get storagePictures;

  /// Storage row
  ///
  /// In en, this message translates to:
  /// **'Images and audio in cards'**
  String get storageCardMedia;

  /// Storage row
  ///
  /// In en, this message translates to:
  /// **'Notes text'**
  String get storageText;

  /// Storage row: free space on phone
  ///
  /// In en, this message translates to:
  /// **'Free on your phone'**
  String get storageFree;

  /// Warning when phone is almost full
  ///
  /// In en, this message translates to:
  /// **'Your phone is almost full. Free some space so backups and reminders keep working.'**
  String get storageLow;

  /// Unused pictures summary
  ///
  /// In en, this message translates to:
  /// **'{count} unused pictures ({size})'**
  String storageUnused(int count, String size);

  /// No unused pictures
  ///
  /// In en, this message translates to:
  /// **'No unused pictures. Everything is tidy.'**
  String get storageNoUnused;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Remove unused pictures'**
  String get storageClean;

  /// Snackbar
  ///
  /// In en, this message translates to:
  /// **'{count} pictures removed'**
  String storageCleaned(int count);

  /// Hint under storage
  ///
  /// In en, this message translates to:
  /// **'Pictures only count as unused when no note shows them, including notes in the trash.'**
  String get storageHint;

  /// Battery guide title
  ///
  /// In en, this message translates to:
  /// **'Keep reminders working'**
  String get batteryTitle;

  /// Row subtitle
  ///
  /// In en, this message translates to:
  /// **'Some phones stop apps in the background. Check yours.'**
  String get batterySubtitle;

  /// Status
  ///
  /// In en, this message translates to:
  /// **'Battery saving does not limit this app. Reminders and sounds should arrive on time.'**
  String get batteryStatusOk;

  /// Status
  ///
  /// In en, this message translates to:
  /// **'Battery saving may stop this app in the background, so reminders and sounds can be late or missing.'**
  String get batteryStatusLimited;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Open battery settings'**
  String get batteryOpen;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Open app settings'**
  String get batteryOpenApp;

  /// Generic steps
  ///
  /// In en, this message translates to:
  /// **'In the battery settings choose this app and set it to Unrestricted (or Don\'t optimize).'**
  String get batteryGeneric;

  /// Brand tip
  ///
  /// In en, this message translates to:
  /// **'Xiaomi / Redmi / POCO: also open Security › Permissions › Autostart and switch this app on, and set Battery saver to No restrictions.'**
  String get batteryXiaomi;

  /// Brand tip
  ///
  /// In en, this message translates to:
  /// **'Oppo / Realme / OnePlus: open Battery › this app and allow background activity and auto-launch; lock the app in the recent apps list.'**
  String get batteryOppo;

  /// Brand tip
  ///
  /// In en, this message translates to:
  /// **'Samsung: Battery › Background usage limits: remove this app from Sleeping apps and Deep sleeping apps.'**
  String get batterySamsung;

  /// Brand tip
  ///
  /// In en, this message translates to:
  /// **'Huawei / Honor: App launch › this app › manage manually, and allow auto-launch, secondary launch and run in background.'**
  String get batteryHuawei;

  /// Brand tip
  ///
  /// In en, this message translates to:
  /// **'Vivo / iQOO: Battery › Background power consumption › allow this app, and enable auto-start in the permissions.'**
  String get batteryVivo;

  /// What's new title
  ///
  /// In en, this message translates to:
  /// **'What\'s new'**
  String get whatsNewTitle;

  /// Row subtitle
  ///
  /// In en, this message translates to:
  /// **'The latest changes in a few lines'**
  String get whatsNewSubtitle;

  /// Button
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get whatsNewDone;

  /// Item title
  ///
  /// In en, this message translates to:
  /// **'Drag cards into your own order'**
  String get whatsNewOrderTitle;

  /// Item body
  ///
  /// In en, this message translates to:
  /// **'In a deck choose Sort › My order, then hold the handle and drag.'**
  String get whatsNewOrderBody;

  /// Item title
  ///
  /// In en, this message translates to:
  /// **'A speaker on every card side'**
  String get whatsNewSpeechTitle;

  /// Item body
  ///
  /// In en, this message translates to:
  /// **'Tap it to hear the word or the translation. Speed, repeats and voice are in the review menu. Language is detected from the text.'**
  String get whatsNewSpeechBody;

  /// Item title
  ///
  /// In en, this message translates to:
  /// **'Monthly report'**
  String get whatsNewReportTitle;

  /// Item body
  ///
  /// In en, this message translates to:
  /// **'In Insights tap the report icon to see the month and save it as PDF or Word.'**
  String get whatsNewReportBody;

  /// Item title
  ///
  /// In en, this message translates to:
  /// **'Care of your phone and data'**
  String get whatsNewCareTitle;

  /// Item body
  ///
  /// In en, this message translates to:
  /// **'Settings now has a storage page with picture clean-up and a battery guide for your phone brand.'**
  String get whatsNewCareBody;

  /// Item title
  ///
  /// In en, this message translates to:
  /// **'Calmer sounds'**
  String get whatsNewSoundTitle;

  /// Item body
  ///
  /// In en, this message translates to:
  /// **'Nature sounds are softer and quieter, and the picture cards are nicer.'**
  String get whatsNewSoundBody;

  /// Weekly check result
  ///
  /// In en, this message translates to:
  /// **'Checked {date}: the latest backup opens correctly.'**
  String autoBackupCheckOk(String date);

  /// Weekly check result
  ///
  /// In en, this message translates to:
  /// **'Checked {date}: a damaged backup was found and replaced with a new one.'**
  String autoBackupCheckFixed(String date);

  /// Weekly check result
  ///
  /// In en, this message translates to:
  /// **'Checked {date}: the latest backup could not be opened. Save a backup file yourself from Settings.'**
  String autoBackupCheckFailed(String date);

  /// Suggestion in settings
  ///
  /// In en, this message translates to:
  /// **'You usually study around {time}'**
  String smartReviewTimeTitle(String time);

  /// Button: use the suggested time
  ///
  /// In en, this message translates to:
  /// **'Use it'**
  String get smartReviewTimeUse;

  /// Quick-add widget button: new note
  ///
  /// In en, this message translates to:
  /// **'New note'**
  String get widgetNewNote;

  /// Folded section of the note editor holding tags, backlinks and linked tasks
  ///
  /// In en, this message translates to:
  /// **'Tags, links and tasks'**
  String get noteConnections;

  /// Bottom navigation tab: flashcards (keep very short)
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get navCards;

  /// Study sheet: label above the answer modes
  ///
  /// In en, this message translates to:
  /// **'How to answer'**
  String get studyAnswerWay;

  /// Study sheet: folded group of practice rounds that do not change the schedule
  ///
  /// In en, this message translates to:
  /// **'Extra practice'**
  String get studyMorePractice;

  /// Study sheet: folded group with session size and order
  ///
  /// In en, this message translates to:
  /// **'Session settings'**
  String get studySessionSettings;

  /// Sheet title: adjust the focus session
  ///
  /// In en, this message translates to:
  /// **'Your session'**
  String get focusAdjustTitle;

  /// Label above ready-made session kinds
  ///
  /// In en, this message translates to:
  /// **'Ready-made'**
  String get focusPresetsTitle;

  /// Preset: study
  ///
  /// In en, this message translates to:
  /// **'Study'**
  String get focusPresetStudy;

  /// Preset: deep work
  ///
  /// In en, this message translates to:
  /// **'Deep work'**
  String get focusPresetDeep;

  /// Preset: short sprint
  ///
  /// In en, this message translates to:
  /// **'Quick sprint'**
  String get focusPresetQuick;

  /// Preset: reading
  ///
  /// In en, this message translates to:
  /// **'Reading'**
  String get focusPresetReading;

  /// Preset: exercise rounds
  ///
  /// In en, this message translates to:
  /// **'Workout rounds'**
  String get focusPresetWorkout;

  /// Slider: focus length
  ///
  /// In en, this message translates to:
  /// **'Focus length'**
  String get focusAdjustMinutes;

  /// Slider: break length
  ///
  /// In en, this message translates to:
  /// **'Break length'**
  String get focusAdjustBreak;

  /// Slider: number of rounds
  ///
  /// In en, this message translates to:
  /// **'Rounds'**
  String get focusAdjustRounds;

  /// Rounds value 0: no limit
  ///
  /// In en, this message translates to:
  /// **'No limit'**
  String get focusRoundsOpen;

  /// Minutes value, e.g. 25 min
  ///
  /// In en, this message translates to:
  /// **'{n} min'**
  String focusMinutesShort(String n);

  /// Hint under the idle timer
  ///
  /// In en, this message translates to:
  /// **'Tap to change the time'**
  String get focusTapToAdjust;

  /// Action/sheet title: drag decks into order
  ///
  /// In en, this message translates to:
  /// **'Arrange decks'**
  String get flashArrangeDecks;

  /// Tooltip: actions for one deck in the list
  ///
  /// In en, this message translates to:
  /// **'Deck options'**
  String get flashDeckActions;

  /// Decks list: card inviting to add a ready-made deck
  ///
  /// In en, this message translates to:
  /// **'Ready-made decks'**
  String get starterBrowse;

  /// Decks list: subtitle of the ready-made decks card
  ///
  /// In en, this message translates to:
  /// **'Add one in a tap and start learning'**
  String get starterBrowseHint;

  /// Home review card when nothing is due: invites to open the decks
  ///
  /// In en, this message translates to:
  /// **'Open your cards'**
  String get dashOpenDecks;

  /// Name shown for a phone voice instead of its technical id, e.g. Voice 2
  ///
  /// In en, this message translates to:
  /// **'Voice {n}'**
  String speechVoiceNumber(String n);

  /// After a flow (count-up) session: suggested break
  ///
  /// In en, this message translates to:
  /// **'Good flow. Rest {m} min?'**
  String focusFlowBreakOffer(String m);

  /// Action: start the suggested flow break
  ///
  /// In en, this message translates to:
  /// **'Start break'**
  String get focusFlowBreakStart;

  /// Tasks today: when all of today's open tasks would be finished if started now
  ///
  /// In en, this message translates to:
  /// **'Start now and you finish everything by {time}'**
  String tasksFinishAt(String time);

  /// Switch: calm pacing, hide seconds
  ///
  /// In en, this message translates to:
  /// **'Calm pacing'**
  String get focusCalmPacing;

  /// Calm pacing explanation
  ///
  /// In en, this message translates to:
  /// **'Whole minutes and the ring only, no ticking seconds'**
  String get focusCalmPacingHint;

  /// Immersive focus: hint to put the phone face down to start
  ///
  /// In en, this message translates to:
  /// **'Turn the phone face down to start'**
  String get focusFlipHint;

  /// Button/title: immersive full-screen focus mode
  ///
  /// In en, this message translates to:
  /// **'Immersive mode'**
  String get focusImmersive;

  /// Switch: immersive mode on pure black (saves battery on AMOLED)
  ///
  /// In en, this message translates to:
  /// **'Pure black (saves battery)'**
  String get focusImmersiveBlack;

  /// Switch: start by turning the phone face down
  ///
  /// In en, this message translates to:
  /// **'Flip to focus'**
  String get focusFlipToFocus;

  /// Flip to focus explanation
  ///
  /// In en, this message translates to:
  /// **'In immersive mode: face down starts, picking it up pauses'**
  String get focusFlipToFocusHint;

  /// Distraction guard title
  ///
  /// In en, this message translates to:
  /// **'Distraction guard'**
  String get guardTitle;

  /// Entry subtitle
  ///
  /// In en, this message translates to:
  /// **'Pause distracting apps while you focus'**
  String get guardSubtitle;

  /// Main switch
  ///
  /// In en, this message translates to:
  /// **'Pause distracting apps'**
  String get guardSwitch;

  /// Main switch hint
  ///
  /// In en, this message translates to:
  /// **'During focus sessions and your Time Guard hours'**
  String get guardSwitchHint;

  /// Service not on yet
  ///
  /// In en, this message translates to:
  /// **'Needs the accessibility switch: tap to turn it on'**
  String get guardNeedsAccess;

  /// Disclosure dialog title
  ///
  /// In en, this message translates to:
  /// **'How the guard works'**
  String get guardDisclosureTitle;

  /// Prominent disclosure before opening accessibility settings
  ///
  /// In en, this message translates to:
  /// **'To pause the apps you choose, Deep Focus uses Android\'s accessibility service to see which app is open. With \"Close Shorts and Reels\" on, it also checks whether a short-video player is on screen.\n\nIt reads no text, stores nothing it sees and sends nothing anywhere: everything stays on your phone. You can turn it off at any time in Accessibility settings.'**
  String get guardDisclosureBody;

  /// Disclosure accept button
  ///
  /// In en, this message translates to:
  /// **'Agree and open settings'**
  String get guardAgree;

  /// Mode: gentle
  ///
  /// In en, this message translates to:
  /// **'Gentle'**
  String get guardModeGentle;

  /// Mode: strict
  ///
  /// In en, this message translates to:
  /// **'Strict'**
  String get guardModeStrict;

  /// Gentle mode hint
  ///
  /// In en, this message translates to:
  /// **'A 5-second breathing pause, then you choose'**
  String get guardGentleHint;

  /// Strict mode hint
  ///
  /// In en, this message translates to:
  /// **'Chosen apps stay closed until focus time ends'**
  String get guardStrictHint;

  /// Apps list tile
  ///
  /// In en, this message translates to:
  /// **'Apps to pause'**
  String get guardApps;

  /// Apps list tile in allowlist mode
  ///
  /// In en, this message translates to:
  /// **'Allowed apps'**
  String get guardAppsAllowed;

  /// Number of apps chosen
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{None chosen yet} =1{1 app} other{{count} apps}}'**
  String guardAppsCount(int count);

  /// Allowlist switch
  ///
  /// In en, this message translates to:
  /// **'Allow only chosen apps'**
  String get guardAllowlist;

  /// Allowlist hint
  ///
  /// In en, this message translates to:
  /// **'Every other app is paused; calls, settings and the keyboard always work'**
  String get guardAllowlistHint;

  /// Shorts switch
  ///
  /// In en, this message translates to:
  /// **'Close Shorts and Reels'**
  String get guardShorts;

  /// Shorts hint
  ///
  /// In en, this message translates to:
  /// **'Any time the guard is on. Best effort: these apps change often'**
  String get guardShortsHint;

  /// Time Guard switch
  ///
  /// In en, this message translates to:
  /// **'Time Guard'**
  String get guardSchedule;

  /// Time Guard hint
  ///
  /// In en, this message translates to:
  /// **'Also guard on set days and hours, like school or work'**
  String get guardScheduleHint;

  /// Schedule start
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get guardFrom;

  /// Schedule end
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get guardTo;

  /// Search apps field
  ///
  /// In en, this message translates to:
  /// **'Search apps'**
  String get guardSearchApps;

  /// No apps found
  ///
  /// In en, this message translates to:
  /// **'No apps found'**
  String get guardNoApps;

  /// Privacy footnote
  ///
  /// In en, this message translates to:
  /// **'Works on your phone only: the guard sees which app is open, never what is in it, and sends nothing.'**
  String get guardPrivacy;

  /// Pause screen title
  ///
  /// In en, this message translates to:
  /// **'Breathe in… and out'**
  String get guardBreathe;

  /// Pause screen question
  ///
  /// In en, this message translates to:
  /// **'Do you need this app now?'**
  String get guardQuestion;

  /// Pause screen: return
  ///
  /// In en, this message translates to:
  /// **'Back to focus'**
  String get guardBackToFocus;

  /// Pause screen: open anyway
  ///
  /// In en, this message translates to:
  /// **'Open for 5 minutes'**
  String get guardOpenFive;

  /// Strict pause body
  ///
  /// In en, this message translates to:
  /// **'This app is paused until your focus time ends.'**
  String get guardStrictBody;

  /// Toast after closing a short video
  ///
  /// In en, this message translates to:
  /// **'Short videos are closed while the guard is on'**
  String get guardShortsClosed;

  /// FAQ question: distraction guard
  ///
  /// In en, this message translates to:
  /// **'How do I stop distracting apps while I focus?'**
  String get faqGuardQ;

  /// FAQ answer: distraction guard
  ///
  /// In en, this message translates to:
  /// **'Open Focus → the timer settings → Distraction guard. Choose the apps, then Gentle (a 5-second breath and the question \"Do you need this app now?\") or Strict (they stay closed). It works during focus sessions and, with Time Guard, on the days and hours you set. \"Allow only chosen apps\" pauses everything else; calls, settings and the keyboard always work. Android asks you once to turn the guard on in Accessibility settings. It only sees which app is open and sends nothing.'**
  String get faqGuardA;

  /// Snack after dragging a note onto a notebook
  ///
  /// In en, this message translates to:
  /// **'Moved to {name}'**
  String notesMovedToNotebook(String name);

  /// Shown on notebook chips while dragging a note
  ///
  /// In en, this message translates to:
  /// **'Hold a note and drag it onto a notebook'**
  String get notesDragHint;

  /// Pause screen: review flashcards instead
  ///
  /// In en, this message translates to:
  /// **'Review cards instead'**
  String get guardReviewCards;

  /// Pause screen: cards due
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 card is waiting for you} other{{count} cards are waiting for you}}'**
  String guardDueNudge(int count);

  /// Strict pause: emergency unlock button
  ///
  /// In en, this message translates to:
  /// **'Emergency: hold 10 seconds'**
  String get guardEmergencyHold;

  /// Strict pause: countdown while holding; keep {n} literally
  ///
  /// In en, this message translates to:
  /// **'Keep holding… {n}'**
  String guardEmergencyHolding(Object n);

  /// Guard stats card title
  ///
  /// In en, this message translates to:
  /// **'This week'**
  String get guardWeekTitle;

  /// Stat: times the guard paused an app
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 pause} other{{count} pauses}}'**
  String guardWeekPaused(int count);

  /// Stat: times the user went back to focus
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{back to focus once} other{back to focus {count} times}}'**
  String guardWeekReturned(int count);

  /// Screen: rename any app text
  ///
  /// In en, this message translates to:
  /// **'Rename words'**
  String get wordsTitle;

  /// Settings row subtitle
  ///
  /// In en, this message translates to:
  /// **'Use your own word for any text in the app'**
  String get wordsSubtitle;

  /// Intro on the rename screen
  ///
  /// In en, this message translates to:
  /// **'Tap a text to change it. Your words apply to this language only and are kept in backups.'**
  String get wordsHint;

  /// Search field
  ///
  /// In en, this message translates to:
  /// **'Search texts'**
  String get wordsSearch;

  /// Filter chip
  ///
  /// In en, this message translates to:
  /// **'Changed only'**
  String get wordsChangedOnly;

  /// Subtitle under a renamed text
  ///
  /// In en, this message translates to:
  /// **'Original: {text}'**
  String wordsOriginal(String text);

  /// Button: back to the original text
  ///
  /// In en, this message translates to:
  /// **'Use original'**
  String get wordsReset;

  /// Menu: reset all renamed texts
  ///
  /// In en, this message translates to:
  /// **'Reset all words'**
  String get wordsResetAll;

  /// Confirm reset all
  ///
  /// In en, this message translates to:
  /// **'Every text in this language goes back to the original.'**
  String get wordsResetAllConfirm;

  /// No search result
  ///
  /// In en, this message translates to:
  /// **'No text found'**
  String get wordsNone;

  /// Hint of the search field in the language list
  ///
  /// In en, this message translates to:
  /// **'Search languages'**
  String get settingsLanguageSearch;

  /// Shown when no language matches the search
  ///
  /// In en, this message translates to:
  /// **'No language matches'**
  String get settingsLanguageNoMatch;

  /// Card title on the sounds screen: play the person's own audio file (avoid the word music)
  ///
  /// In en, this message translates to:
  /// **'Your audio'**
  String get soundsMyMusic;

  /// Hint under the own-music card
  ///
  /// In en, this message translates to:
  /// **'Play an audio file from your phone. Nothing is copied or uploaded.'**
  String get soundsMusicHint;

  /// Button: open the phone's file picker for an audio file
  ///
  /// In en, this message translates to:
  /// **'Choose audio'**
  String get soundsChooseMusic;

  /// Tooltip: stop using the chosen audio file (avoid the word music)
  ///
  /// In en, this message translates to:
  /// **'Remove audio'**
  String get soundsRemoveMusic;

  /// Flashcards: downloadable word lists by topic
  ///
  /// In en, this message translates to:
  /// **'Word packs'**
  String get wordPacksTitle;

  /// Under the word-packs title
  ///
  /// In en, this message translates to:
  /// **'Word lists by topic. Download only the language you want, then edit or delete the cards freely.'**
  String get wordPacksHint;

  /// Download failed
  ///
  /// In en, this message translates to:
  /// **'Could not download. Check the connection.'**
  String get wordPacksFailed;

  /// No words yet for this language
  ///
  /// In en, this message translates to:
  /// **'Words for this language are still being prepared.'**
  String get wordPacksEmpty;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'ar',
    'az',
    'be',
    'bg',
    'bn',
    'bs',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'eu',
    'fa',
    'fi',
    'fil',
    'fr',
    'gl',
    'gu',
    'hi',
    'hr',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'kn',
    'ko',
    'ky',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'nb',
    'ne',
    'nl',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'uz',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'en':
      {
        switch (locale.countryCode) {
          case 'GB':
            return AppLocalizationsEnGb();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return AppLocalizationsEs419();
        }
        break;
      }
    case 'fr':
      {
        switch (locale.countryCode) {
          case 'CA':
            return AppLocalizationsFrCa();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
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
