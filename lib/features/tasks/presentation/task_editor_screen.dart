import 'package:material_ui/material_ui.dart';

// TEMPORARY development placeholder; replaced by the owning feature work.
class TaskEditorScreen extends StatelessWidget {
  const TaskEditorScreen({super.key, this.taskId, this.parentId, this.projectId, this.initialDue});
  final String? taskId;
  final String? parentId;
  final String? projectId;
  final DateTime? initialDue;

  @override
  Widget build(BuildContext context) => const Scaffold();
}
