import 'package:uuid/uuid.dart';

const _uuid = Uuid();

/// Generates a new random (v4) identifier for any stored entity.
String newId() => _uuid.v4();
