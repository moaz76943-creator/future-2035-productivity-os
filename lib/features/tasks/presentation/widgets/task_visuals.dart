import 'package:material_ui/material_ui.dart';

import '../../../../core/design_system/tokens.dart';
import '../../../../l10n/gen/app_localizations.dart';

/// Visual language for priorities 0 (none) … 4 (urgent).
abstract final class PriorityStyle {
  static Color color(int p) => switch (p) {
    1 => Palette.turquoise,
    2 => Palette.aurora,
    3 => Palette.amber,
    4 => Palette.coral,
    _ => Palette.silver,
  };

  static String label(AppLocalizations l10n, int p) => switch (p) {
    1 => l10n.priorityLow,
    2 => l10n.priorityMedium,
    3 => l10n.priorityHigh,
    4 => l10n.priorityUrgent,
    _ => l10n.priorityNone,
  };

  static IconData icon(int p) => switch (p) {
    4 => Icons.local_fire_department_rounded,
    3 => Icons.keyboard_double_arrow_up_rounded,
    2 => Icons.keyboard_arrow_up_rounded,
    1 => Icons.keyboard_arrow_down_rounded,
    _ => Icons.remove_rounded,
  };
}
