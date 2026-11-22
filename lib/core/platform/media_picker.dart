import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A picked file: content plus its name (for the extension and display).
class PickedMedia {
  const PickedMedia(this.bytes, this.name);
  final List<int> bytes;
  final String name;

  String get extension {
    final i = name.lastIndexOf('.');
    return i < 0 ? '' : name.substring(i + 1).toLowerCase();
  }
}

/// System file picker for card images and audio (no storage permission:
/// the system picker grants access to the chosen file only).
abstract interface class MediaPicker {
  Future<PickedMedia?> pick({required bool image});
}

class PlatformMediaPicker implements MediaPicker {
  const PlatformMediaPicker();

  @override
  Future<PickedMedia?> pick({required bool image}) async {
    final files = await FilePicker.pickFiles(type: image ? FileType.image : FileType.audio);
    if (files.isEmpty) return null;
    final f = files.first;
    return PickedMedia(await f.xFile.readAsBytes(), f.name);
  }
}

final mediaPickerProvider = Provider<MediaPicker>((ref) => const PlatformMediaPicker());
