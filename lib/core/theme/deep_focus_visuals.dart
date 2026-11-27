import 'dart:convert';

import 'package:material_ui/material_ui.dart';
import 'package:flutter/services.dart';

/// المسارات الرسمية الموحدة لأصول الهوية البصرية.
abstract final class DeepFocusAssets {
  static const String tuningConfig = 'assets/config/ui_tuning.json';
  static const String homeHeaderBg = 'assets/images/ui/home_header_sunrise.webp';
  static const String timerCircleBg = 'assets/images/ui/focus_timer_orb.webp';
  static const String quickFocusPlant = 'assets/images/ui/quick_focus_plant_banner.webp';
  static const String appMeshBg = 'assets/images/ui/app_bg_silk.webp';
  static const String appLeafMark = 'assets/images/ui/app_logo_mark.webp';
  static const String focusFullscreenBg = 'assets/images/ui/focus_fullscreen_bg.webp';

  static const String quickTask = 'assets/images/actions/action_new_task.webp';
  static const String quickNote = 'assets/images/actions/action_new_note.webp';
  static const String quickEvent = 'assets/images/actions/action_new_event.webp';
  static const String quickFocus = 'assets/images/actions/action_focus.webp';
  static const String startMyDay = 'assets/images/actions/action_start_day.webp';

  static const String emptyTasks = 'assets/images/empty/empty_tasks.webp';
  static const String emptyFlashcards = 'assets/images/empty/empty_flashcards.webp';
  static const String emptyFocusHistory = 'assets/images/empty/empty_focus_history.webp';

  static const String spaceProjects = 'assets/images/spaces/space_projects.webp';
  static const String spaceFlashcards = 'assets/images/spaces/space_flashcards.webp';
  static const String spaceSounds = 'assets/images/spaces/space_sounds.webp';
  static const String spaceNotes = 'assets/images/spaces/space_notes.webp';
  static const String spaceGoals = 'assets/images/spaces/space_goals.webp';
  static const String spaceHabits = 'assets/images/spaces/space_habits.webp';
  static const String spaceInsights = 'assets/images/spaces/space_insights.webp';
  static const String spaceSearch = 'assets/images/spaces/space_search.webp';
  static const String spaceAssistant = 'assets/images/spaces/space_assistant.webp';
  static const String spaceSettings = 'assets/images/spaces/space_settings.webp';
  static const String spaceTrash = 'assets/images/spaces/space_trash.webp';
  static const String spaceHelp = 'assets/images/spaces/space_help.webp';
}

/// ثوابت الألوان والبطاقات الزجاجية (Future 2035 Organic Glass)
abstract final class DeepFocusVisuals {
  static const Color tealPrimary = Color(0xFF0D7A7E);
  static const Color tealBright = Color(0xFF14B8A6);
  static const Color aquaGlow = Color(0xFF14B8A6);
  static const Color emeraldAccent = Color(0xFF14B8A6);
  static const Color canvasLight = Color(0xFFF4F8FD);
  static const Color canvasSoft = Color(0xFFDFEBF8);
  static const double glassFillOpacity = 0.78;
  static const double glassBorderOpacity = 0.92;
  static const double glassBorderWidth = 1.2;
  static const Color textDark = Color(0xFF132A33);
  static const Color textMuted = Color(0xFF5A737E);

  static const double cardRadius = 22.0;
  static const double pillRadius = 999.0;

  /// Loads the shared design tuning document for tooling and runtime audits.
  static Future<Map<String, dynamic>> loadTuningConfig() async {
    final source = await rootBundle.loadString(DeepFocusAssets.tuningConfig);
    return jsonDecode(source) as Map<String, dynamic>;
  }

  static BoxDecoration glassCard({double radius = cardRadius}) {
    return BoxDecoration(
      color: Colors.white.withValues(alpha: glassFillOpacity),
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
        color: Colors.white.withValues(alpha: glassBorderOpacity),
        width: glassBorderWidth,
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

  /// Soft aqua edge light for selected/active elements only (never text).
  static List<BoxShadow> edgeGlow({double strength = 1}) => [
    BoxShadow(
      color: aquaGlow.withValues(alpha: 0.38 * strength),
      blurRadius: 14 * strength,
      spreadRadius: 0.5,
    ),
    BoxShadow(
      color: tealBright.withValues(alpha: 0.22 * strength),
      blurRadius: 5 * strength,
    ),
  ];

  /// Aqua glow border + subtle outer glow for a selected/active element.
  static BoxDecoration glowBorder({
    bool circle = false,
    double radius = 14,
    Color? fill,
    double strength = 1,
  }) => BoxDecoration(
    shape: circle ? BoxShape.circle : BoxShape.rectangle,
    borderRadius: circle ? null : BorderRadius.circular(radius),
    color: fill,
    border: Border.all(color: aquaGlow.withValues(alpha: 0.9), width: 1.4),
    boxShadow: edgeGlow(strength: strength),
  );

  static BoxDecoration activePill() {
    return BoxDecoration(
      gradient: const LinearGradient(
        begin: AlignmentDirectional.centerStart,
        end: AlignmentDirectional.centerEnd,
        colors: [tealPrimary, tealBright],
      ),
      borderRadius: BorderRadius.circular(pillRadius),
      boxShadow: [
        ...edgeGlow(strength: 0.8),
        const BoxShadow(color: Color(0x2E0D7A7E), blurRadius: 12, offset: Offset(0, 4)),
      ],
    );
  }
}
