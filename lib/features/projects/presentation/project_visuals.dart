import 'package:material_ui/material_ui.dart';

/// Icon keys persisted in `projects.icon`. Unknown keys fall back to spark.
const projectIcons = <String, IconData>{
  'spark': Icons.auto_awesome_rounded,
  'rocket': Icons.rocket_launch_rounded,
  'book': Icons.menu_book_rounded,
  'work': Icons.work_outline_rounded,
  'home': Icons.home_rounded,
  'heart': Icons.favorite_rounded,
  'code': Icons.code_rounded,
  'palette': Icons.palette_outlined,
  'fitness': Icons.fitness_center_rounded,
  'school': Icons.school_outlined,
  'travel': Icons.flight_takeoff_rounded,
  'money': Icons.savings_outlined,
};

IconData projectIcon(String key) => projectIcons[key] ?? Icons.auto_awesome_rounded;
