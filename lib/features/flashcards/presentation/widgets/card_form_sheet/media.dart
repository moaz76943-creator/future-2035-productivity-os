part of '../card_form_sheet.dart';

extension _CardFormMedia on _CardFormSheetState {
  Future<void> _pickMedia(String side, String kind) async {
    final l10n = context.l10n;
    _update(() {
      _mediaError = null;
      _mediaErrorSide = side;
    });
    try {
      final picked = await ref.read(mediaPickerProvider).pick(image: kind == 'image');
      if (picked == null || !mounted) return;
      final limit = kind == 'image'
          ? FlashcardsRepository.maxImageBytes
          : FlashcardsRepository.maxAudioBytes;
      if (picked.bytes.length > limit) {
        _update(() => _mediaError = l10n.flashcardsMediaTooLarge(limit ~/ (1024 * 1024)));
        return;
      }
      _update(() => _media['$side:$kind'] = picked);
    } catch (_) {
      if (mounted) _update(() => _mediaError = l10n.flashcardsImportFileFailed);
    }
  }

  /// Records a clip with the microphone into the side's audio slot.
  Future<void> _record(String side) async {
    final l10n = context.l10n;
    _update(() {
      _mediaError = null;
      _mediaErrorSide = side;
    });
    final recorder = ref.read(audioRecorderProvider);
    final started = await recorder.start();
    if (!mounted) {
      if (started == RecordStart.ok) await recorder.cancel();
      return;
    }
    if (started != RecordStart.ok) {
      _update(
        () => _mediaError = started == RecordStart.denied
            ? l10n.flashcardsMicDenied
            : l10n.flashcardsRecordFailed,
      );
      return;
    }
    final bytes = await showRecordSheet(context, recorder);
    if (!mounted || bytes == null) return;
    if (bytes.length > FlashcardsRepository.maxAudioBytes) {
      _update(
        () => _mediaError = l10n.flashcardsMediaTooLarge(
          FlashcardsRepository.maxAudioBytes ~/ (1024 * 1024),
        ),
      );
      return;
    }
    _update(() => _media['$side:audio'] = PickedMedia(bytes, 'recording.m4a'));
  }

  /// Applies picked / removed media to [cardId].
  Future<void> _saveMedia(String cardId) async {
    final repo = ref.read(flashcardsRepositoryProvider);
    for (final e in _media.entries) {
      final [side, kind] = e.key.split(':');
      final picked = e.value;
      if (picked == null) {
        for (final m in _existing.where((m) => m.side == side && m.kind == kind)) {
          await repo.removeMedia(m.id);
        }
      } else {
        await repo.addMedia(
          cardId,
          side: side,
          kind: kind,
          bytes: picked.bytes,
          name: picked.name,
          mime: kind == 'image' ? 'image/${picked.extension}' : 'audio/${picked.extension}',
        );
      }
    }
  }

  Widget _mediaRow(String side) {
    final l10n = context.l10n;
    Widget slot(String kind) {
      final key = '$side:$kind';
      final picked = _media[key];
      final existing = _existing.where((m) => m.side == side && m.kind == kind).firstOrNull;
      final has = _media.containsKey(key) ? picked != null : existing != null;
      final name = picked?.name ?? existing?.name ?? '';
      final isImage = kind == 'image';
      return InputChip(
        key: Key('media_${side}_$kind'),
        avatar: Icon(isImage ? Icons.image_outlined : Icons.mic_none_rounded, size: 18),
        label: Text(
          has
              ? (name.isEmpty ? (isImage ? l10n.flashcardsImage : l10n.flashcardsAudio) : name)
              : (isImage ? l10n.flashcardsAddImage : l10n.flashcardsAddAudio),
          overflow: TextOverflow.ellipsis,
        ),
        onPressed: () => _pickMedia(side, kind),
        onDeleted: has ? () => _update(() => _media[key] = null) : null,
        deleteButtonTooltipMessage: l10n.actionDelete,
      );
    }

    return Padding(
      padding: const EdgeInsets.only(top: Space.xs),
      child: Wrap(
        spacing: Space.xs,
        runSpacing: Space.xs,
        children: [
          slot('image'),
          slot('audio'),
          ActionChip(
            key: Key('mediaRecord_$side'),
            avatar: const Icon(Icons.fiber_manual_record_rounded, size: 18),
            label: Text(l10n.flashcardsRecord),
            onPressed: () => _record(side),
          ),
          if (_mediaError != null && _mediaErrorSide == side)
            Text(
              _mediaError!,
              key: Key('mediaError_$side'),
              style: context.text.bodySmall?.copyWith(color: context.lux.danger),
            ),
        ],
      ),
    );
  }
}
