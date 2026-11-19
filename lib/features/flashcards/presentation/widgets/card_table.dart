import 'package:intl/intl.dart' show Bidi;
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/database/app_database.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/tokens.dart';

/// Column titles above the table, with the button that swaps the columns.
class CardTableHeader extends StatelessWidget {
  const CardTableHeader({
    super.key,
    required this.first,
    required this.second,
    required this.onSwap,
  });

  final String first;
  final String second;
  final VoidCallback onSwap;

  @override
  Widget build(BuildContext context) {
    final style = context.text.labelLarge?.copyWith(color: context.lux.ink2);
    return Padding(
      padding: const EdgeInsets.fromLTRB(Space.page, Space.sm, Space.page, Space.xxs),
      child: Row(
        children: [
          const SizedBox(width: 44),
          Expanded(
            child: Text(first, style: style, maxLines: 1, overflow: TextOverflow.ellipsis),
          ),
          IconButton(
            key: const Key('swapColumns'),
            tooltip: context.l10n.flashSwapSides,
            icon: const Icon(Icons.swap_horiz_rounded),
            onPressed: onSwap,
          ),
          Expanded(
            child: Text(
              second,
              style: style,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

/// One card as a table row: speak button, first column, second column.
/// Each cell follows its own text direction (Arabic right, German left).
class CardTableRow extends StatelessWidget {
  const CardTableRow({
    super.key,
    required this.card,
    required this.swapped,
    required this.onTap,
    required this.onLongPress,
    required this.onSpeak,
    this.selected = false,
    this.current = false,
    this.dimmed = false,
  });

  final CardRow card;
  final bool swapped;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final VoidCallback onSpeak;

  /// Picked for a bulk action.
  final bool selected;

  /// Being read aloud right now.
  final bool current;

  /// Suspended: shown fainter.
  final bool dimmed;

  static Widget _cell(BuildContext context, String text, {required bool strong}) {
    final rtl = Bidi.detectRtlDirectionality(text);
    return Text(
      text,
      textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
      textAlign: TextAlign.start,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: strong
          ? context.text.bodyLarge?.copyWith(fontWeight: FontWeight.w600)
          : context.text.bodyLarge?.copyWith(color: context.lux.ink2),
    );
  }

  @override
  Widget build(BuildContext context) {
    final lux = context.lux;
    final a = swapped ? card.back : card.front;
    final b = swapped ? card.front : card.back;
    final bg = current
        ? ModuleHue.flashcards.a.withValues(alpha: 0.12)
        : selected
        ? ModuleHue.flashcards.b.withValues(alpha: 0.12)
        : Colors.transparent;
    return Material(
      color: bg,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Opacity(
          opacity: dimmed ? 0.5 : 1,
          child: Container(
            constraints: const BoxConstraints(minHeight: 56),
            padding: const EdgeInsets.symmetric(horizontal: Space.sm),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: lux.hairline)),
            ),
            child: Row(
              children: [
                if (selected)
                  Padding(
                    padding: const EdgeInsets.all(Space.sm),
                    child: Icon(Icons.check_circle_rounded, color: ModuleHue.flashcards.b),
                  )
                else
                  IconButton(
                    key: Key('speakRow_${card.id}'),
                    tooltip: context.l10n.speechTest,
                    icon: Icon(
                      current ? Icons.volume_up_rounded : Icons.volume_up_outlined,
                      color: current ? ModuleHue.flashcards.a : lux.ink3,
                    ),
                    onPressed: onSpeak,
                  ),
                Expanded(child: _cell(context, a, strong: true)),
                const SizedBox(width: Space.sm),
                Expanded(child: _cell(context, b, strong: false)),
                if (card.favorite)
                  const Padding(
                    padding: EdgeInsetsDirectional.only(start: Space.xxs),
                    child: Icon(Icons.star_rounded, size: 16, color: Palette.champagne),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
