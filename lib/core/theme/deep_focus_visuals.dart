import 'package:flutter/material.dart';

/// المسارات الرسمية الموحدة لأصول الهوية البصرية (22 صورة)
abstract final class DeepFocusAssets {
  static const String homeHeaderBg = 'assets/images/ui/home_header_bg.png';
  static const String timerCircleBg = 'assets/images/ui/timer_circle_bg.png';
  static const String quickFocusPlant = 'assets/images/ui/quick_focus_plant.png';
  static const String appMeshBg = 'assets/images/ui/app_mesh_bg.png';
  static const String appLeafMark = 'assets/images/ui/app_leaf_mark.png';
  static const String emptyStateNature = 'assets/images/ui/empty_state_nature.png';
  static const String quickTask = 'assets/images/ui/quick_task.png';
  static const String quickEvent = 'assets/images/ui/quick_event.png';
  static const String quickFocus = 'assets/images/ui/quick_focus.png';
  static const String startMyDay = 'assets/images/ui/start_my_day.png';

  static const String spaceProjects = 'assets/images/spaces/space_projects.png';
  static const String spaceFlashcards = 'assets/images/spaces/space_flashcards.png';
  static const String spaceSounds = 'assets/images/spaces/space_sounds.png';
  static const String spaceNotes = 'assets/images/spaces/space_notes.png';
  static const String spaceGoals = 'assets/images/spaces/space_goals.png';
  static const String spaceHabits = 'assets/images/spaces/space_habits.png';
  static const String spaceInsights = 'assets/images/spaces/space_insights.png';
  static const String spaceSearch = 'assets/images/spaces/space_search.png';
  static const String spaceAssistant = 'assets/images/spaces/space_assistant.png';
  static const String spaceSettings = 'assets/images/spaces/space_settings.png';
  static const String spaceTrash = 'assets/images/spaces/space_trash.png';
  static const String spaceHelp = 'assets/images/spaces/space_help.png';
}

/// ثوابت الألوان والبطاقات الزجاجية (Future 2035 Organic Glass)
abstract final class DeepFocusVisuals {
  static const Color tealPrimary = Color(0xFF0D7A7E);
  static const Color tealBright = Color(0xFF2FA4A9);
  static const Color aquaGlow = Color(0xFF3BC4C0);
  static const Color emeraldAccent = Color(0xFF34B37E);
  static const Color canvasLight = Color(0xFFEEF4FA);
  static const Color canvasSoft = Color(0xFFF5F9FD);
  static const Color textDark = Color(0xFF132A33);
  static const Color textMuted = Color(0xFF5A737E);

  static const double cardRadius = 22.0;
  static const double pillRadius = 999.0;

  static BoxDecoration glassCard({double radius = cardRadius}) {
    return BoxDecoration(
      color: Colors.white.withValues(alpha: 0.78),
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
        color: Colors.white.withValues(alpha: 0.92),
        width: 1.2,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0x140D7A7E),
          blurRadius: 18,
          offset: Offset(0, 8),
        ),
      ],
    );
  }

  static BoxDecoration activePill() {
    return BoxDecoration(
      gradient: const LinearGradient(
        begin: AlignmentDirectional.centerStart,
        end: AlignmentDirectional.centerEnd,
        colors: [tealPrimary, tealBright],
      ),
      borderRadius: BorderRadius.circular(pillRadius),
      boxShadow: const [
        BoxShadow(
          color: Color(0x2E0D7A7E),
          blurRadius: 12,
          offset: Offset(0, 4),
        ),
      ],
    );
  }
}
