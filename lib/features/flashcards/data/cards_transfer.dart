import 'package:drift/drift.dart';

import '../../../core/database/app_database.dart';
import '../../../core/transfer/transfer_model.dart';
import '../../../core/transfer/transfer_schema.dart';
import '../../../l10n/gen/app_localizations.dart';
import '../domain/card_extras.dart';
import '../domain/card_field_labels.dart';

/// Columns of a cards file: front, back, tags and every optional field.
/// A field added to [CardField] appears in exports (and is read back by the
/// import mapping) without touching this file.
final cardSchema = TransferSchema<CardRow>([
  TransferField('front', (l) => l.cardFront, (c) => c.front),
  TransferField('back', (l) => l.cardBack, (c) => c.back),
  for (final f in CardField.values)
    TransferField(f.name, (l) => cardFieldLabel(l, f), (c) => CardExtras.decode(c.extra)[f] ?? ''),
  TransferField('tags', (l) => l.cardTags, (c) => c.tags),
]);

class CardsTransfer {
  CardsTransfer(this._db);
  final AppDatabase _db;

  /// A deck as a table (cards in the order they were added).
  Future<TransferTable> table(
    String deckId,
    String deckName,
    AppLocalizations l10n, {
    bool rtl = false,
  }) async {
    final cards =
        await (_db.select(_db.flashcards)
              ..where((c) => c.deckId.equals(deckId) & c.deletedAt.isNull())
              ..orderBy([(c) => OrderingTerm.asc(c.createdAt)]))
            .get();
    return cardSchema.table(deckName, cards, l10n, rtl: rtl);
  }
}
