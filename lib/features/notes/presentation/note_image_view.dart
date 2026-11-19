import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../data/note_images.dart';

/// A picture inside a note (editor and reading view). Tap to see it full.
class NoteImageView extends ConsumerWidget {
  const NoteImageView({required this.id, this.maxHeight = 260, super.key});
  final String id;
  final double maxHeight;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bytes = ref.watch(noteImageProvider(id)).value;
    final lux = context.lux;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Space.xs),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.md),
        child: bytes == null
            ? _placeholder(lux)
            : Semantics(
                button: true,
                label: context.l10n.noteImage,
                excludeSemantics: true,
                child: GestureDetector(
                  onTap: () => showDialog<void>(
                    context: context,
                    builder: (c) => Dialog.fullscreen(
                      backgroundColor: Colors.black,
                      child: Stack(
                        children: [
                          Positioned.fill(child: InteractiveViewer(child: Image.memory(bytes))),
                          PositionedDirectional(
                            top: Space.sm,
                            end: Space.sm,
                            child: IconButton.filledTonal(
                              tooltip: context.l10n.actionClose,
                              icon: const Icon(Icons.close_rounded),
                              onPressed: () => Navigator.of(c).pop(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: maxHeight),
                    child: Image.memory(
                      bytes,
                      fit: BoxFit.contain,
                      semanticLabel: context.l10n.noteImage,
                      gaplessPlayback: true,
                      // A damaged picture shows a calm placeholder, never an error.
                      errorBuilder: (_, _, _) => _placeholder(lux),
                    ),
                  ),
                ),
              ),
      ),
    );
  }

  static Widget _placeholder(LuxColors lux) => Container(
    height: 80,
    width: double.infinity,
    color: lux.hairline,
    alignment: Alignment.center,
    child: Icon(Icons.image_outlined, color: lux.ink3),
  );
}
