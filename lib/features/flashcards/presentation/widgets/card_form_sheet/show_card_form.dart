part of '../card_form_sheet.dart';

class _CardFormSheet extends ConsumerStatefulWidget {
  const _CardFormSheet({required this.deckId, this.initial});
  final String deckId;
  final CardRow? initial;

  @override
  ConsumerState<_CardFormSheet> createState() => _CardFormSheetState();
}
