part of '../tasks_repository.dart';

/// Workflow status of an open task. Completion stays in `done`; archived
/// tasks are hidden from every view except [TaskView.archived].
abstract final class TaskStatus {
  static const notStarted = 'notStarted';
  static const inProgress = 'inProgress';
}

class TaskFilter {
  const TaskFilter({
    this.view = TaskView.all,
    this.projectId,
    this.minPriority,
    this.category,
    this.labelId,
    this.sort = TaskSort.smart,
  });
  final TaskView view;
  final String? projectId;
  final int? minPriority;
  final String? category;
  final String? labelId;
  final TaskSort sort;

  TaskFilter copyWith({
    TaskView? view,
    String? projectId,
    bool clearProject = false,
    int? minPriority,
    bool clearPriority = false,
    TaskSort? sort,
  }) => TaskFilter(
    view: view ?? this.view,
    projectId: clearProject ? null : (projectId ?? this.projectId),
    minPriority: clearPriority ? null : (minPriority ?? this.minPriority),
    category: category,
    labelId: labelId,
    sort: sort ?? this.sort,
  );

  // Value equality so the filter can key a provider family.
  @override
  bool operator ==(Object other) =>
      other is TaskFilter &&
      other.view == view &&
      other.projectId == projectId &&
      other.minPriority == minPriority &&
      other.category == category &&
      other.labelId == labelId &&
      other.sort == sort;

  @override
  int get hashCode => Object.hash(view, projectId, minPriority, category, labelId, sort);
}

class TaskDraft {
  const TaskDraft({
    required this.title,
    this.description = '',
    this.notes = '',
    this.projectId,
    this.parentId,
    this.category = '',
    this.priority = 0,
    this.startAt,
    this.dueAt,
    this.dueHasTime = false,
    this.reminderAt,
    this.recurrence,
    this.estimateMinutes,
  });
  final String title;
  final String description;
  final String notes;
  final String? projectId;
  final String? parentId;
  final String category;
  final int priority;
  final DateTime? startAt;
  final DateTime? dueAt;
  final bool dueHasTime;
  final DateTime? reminderAt;
  final String? recurrence;
  final int? estimateMinutes;
}

class TaskValidationException implements Exception {
  const TaskValidationException(this.code);

  /// `titleRequired`, `titleTooLong`, `startAfterDue`, `invalidRecurrence`,
  /// `dependencyCycle`.
  final String code;
  @override
  String toString() => 'TaskValidationException($code)';
}
