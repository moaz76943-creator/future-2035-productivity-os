import 'package:material_ui/material_ui.dart' show IconData, Icons;

import '../../../app/routing/routes.dart';
import '../../../core/design_system/tokens.dart';
import '../../../l10n/gen/app_localizations.dart';

/// One help entry: a question about a feature, its answer, and the screen it
/// is about. The FAQ, the first-run tour and the help coverage test all read
/// this single list, so a feature change is updated in one place.
class GuideEntry {
  const GuideEntry({
    required this.id,
    required this.route,
    required this.icon,
    required this.hue,
    required this.question,
    required this.answer,
    this.tourTitle,
    this.tourBody,
  });

  final String id;

  /// The screen this entry explains ("Open" goes there).
  final String route;
  final IconData icon;
  final ModuleHue hue;
  final String Function(AppLocalizations) question;
  final String Function(AppLocalizations) answer;

  /// Set for the three entries shown in the first-run tour.
  final String Function(AppLocalizations)? tourTitle;
  final String Function(AppLocalizations)? tourBody;

  bool get inTour => tourTitle != null;
}

final featureGuide = <GuideEntry>[
  GuideEntry(
    id: 'myDay',
    route: Routes.home,
    icon: Icons.wb_twilight_rounded,
    hue: ModuleHue.focus,
    question: (l) => l.faqMyDayQ,
    answer: (l) => l.faqMyDayA,
    tourTitle: (l) => l.tourPlanTitle,
    tourBody: (l) => l.tourPlanBody,
  ),
  GuideEntry(
    id: 'tasks',
    route: Routes.tasks,
    icon: Icons.task_alt_rounded,
    hue: ModuleHue.tasks,
    question: (l) => l.faqTasksQ,
    answer: (l) => l.faqTasksA,
  ),
  GuideEntry(
    id: 'focus',
    route: Routes.focus,
    icon: Icons.timer_outlined,
    hue: ModuleHue.focus,
    question: (l) => l.faqFocusQ,
    answer: (l) => l.faqFocusA,
    tourTitle: (l) => l.tourFocusTitle,
    tourBody: (l) => l.tourFocusBody,
  ),
  GuideEntry(
    id: 'sounds',
    route: Routes.sounds,
    icon: Icons.water_drop_outlined,
    hue: ModuleHue.sounds,
    question: (l) => l.faqSoundsQ,
    answer: (l) => l.faqSoundsA,
  ),
  GuideEntry(
    id: 'calendar',
    route: Routes.calendar,
    icon: Icons.event_rounded,
    hue: ModuleHue.calendar,
    question: (l) => l.faqCalendarQ,
    answer: (l) => l.faqCalendarA,
  ),
  GuideEntry(
    id: 'flashcards',
    route: Routes.flashcards,
    icon: Icons.style_outlined,
    hue: ModuleHue.flashcards,
    question: (l) => l.faqFlashcardsQ,
    answer: (l) => l.faqFlashcardsA,
    tourTitle: (l) => l.tourLearnTitle,
    tourBody: (l) => l.tourLearnBody,
  ),
  GuideEntry(
    id: 'import',
    route: Routes.flashcards,
    icon: Icons.upload_file_rounded,
    hue: ModuleHue.flashcards,
    question: (l) => l.faqImportQ,
    answer: (l) => l.faqImportA,
  ),
  GuideEntry(
    id: 'notes',
    route: Routes.notes,
    icon: Icons.edit_note_rounded,
    hue: ModuleHue.notes,
    question: (l) => l.faqNotesQ,
    answer: (l) => l.faqNotesA,
  ),
  GuideEntry(
    id: 'habits',
    route: Routes.habits,
    icon: Icons.repeat_rounded,
    hue: ModuleHue.habits,
    question: (l) => l.faqHabitsQ,
    answer: (l) => l.faqHabitsA,
  ),
  GuideEntry(
    id: 'goals',
    route: Routes.goals,
    icon: Icons.flag_outlined,
    hue: ModuleHue.goals,
    question: (l) => l.faqGoalsQ,
    answer: (l) => l.faqGoalsA,
  ),
  GuideEntry(
    id: 'projects',
    route: Routes.projects,
    icon: Icons.folder_outlined,
    hue: ModuleHue.projects,
    question: (l) => l.faqProjectsQ,
    answer: (l) => l.faqProjectsA,
  ),
  GuideEntry(
    id: 'insights',
    route: Routes.insights,
    icon: Icons.insights_rounded,
    hue: ModuleHue.analytics,
    question: (l) => l.faqInsightsQ,
    answer: (l) => l.faqInsightsA,
  ),
  GuideEntry(
    id: 'spaces',
    route: Routes.spaces,
    icon: Icons.apps_rounded,
    hue: ModuleHue.projects,
    question: (l) => l.faqSpacesQ,
    answer: (l) => l.faqSpacesA,
  ),
  GuideEntry(
    id: 'backup',
    route: Routes.settings,
    icon: Icons.backup_outlined,
    hue: ModuleHue.analytics,
    question: (l) => l.faqBackupQ,
    answer: (l) => l.faqBackupA,
  ),
  GuideEntry(
    id: 'prayer',
    route: Routes.settings,
    icon: Icons.mosque_outlined,
    hue: ModuleHue.focus,
    question: (l) => l.faqPrayerQ,
    answer: (l) => l.faqPrayerA,
  ),
  GuideEntry(
    id: 'privacy',
    route: Routes.settings,
    icon: Icons.lock_rounded,
    hue: ModuleHue.analytics,
    question: (l) => l.faqPrivacyQ,
    answer: (l) => l.faqPrivacyA,
  ),
  GuideEntry(
    id: 'assistant',
    route: Routes.assistant,
    icon: Icons.auto_awesome_outlined,
    hue: ModuleHue.assistant,
    question: (l) => l.faqAssistantQ,
    answer: (l) => l.faqAssistantA,
  ),
];

/// The three tour pages, in order.
List<GuideEntry> get tourEntries => [
  for (final e in featureGuide)
    if (e.inTour) e,
];
