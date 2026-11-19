// ignore_for_file: recursive_getters
// Drift column checks reference the column itself by design.

import 'package:drift/drift.dart';

part 'tables/projects.dart';
part 'tables/goals.dart';

/// All primary keys are client-generated UUID v4 strings so that records
/// remain globally unique if optional synchronization is added later.
///
/// Soft deletion (`deletedAt`) is used for user content so that deletes are
/// recoverable from the trash. Hard deletion happens only when the user
/// empties the trash or erases all data.

mixin Timestamps on Table {
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}
