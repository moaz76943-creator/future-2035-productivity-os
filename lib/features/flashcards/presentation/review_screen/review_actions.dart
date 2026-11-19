part of '../review_screen.dart';

extension _ReviewActions on _ReviewScreenState {
  Future<void> _load() async {
    final repo = ref.read(flashcardsRepositoryProvider);
    try {
      final settings = ref.read(settingsProvider);
      PracticeFilter? filter(StudyScope s) => switch (s) {
        StudyScope.scheduled => null,
        StudyScope.practiceAll => PracticeFilter.all,
        StudyScope.practiceMistakes => PracticeFilter.mistakes,
        StudyScope.practiceNew => PracticeFilter.newOnly,
        StudyScope.practiceHard => PracticeFilter.hard,
        StudyScope.practiceFavorites => PracticeFilter.favorites,
      };
      final f = filter(widget.scope);
      var q = widget.cards != null
          ? [...widget.cards!]
          : f == null
          ? await repo.reviewQueue(widget.deckId)
          : await repo.practiceCards(widget.deckId, filter: f);
      if (widget.cards == null) {
        // User-chosen order and session size (0 = everything available).
        switch (studyOrderFromName(settings.flashOrder)) {
          case StudyOrder.random:
            q.shuffle(_random);
          case StudyOrder.hardest:
            q.sort((a, b) => b.difficulty.compareTo(a.difficulty));
          case StudyOrder.due:
            break;
        }
        if (settings.flashSessionSize > 0 && q.length > settings.flashSessionSize) {
          q = q.take(settings.flashSessionSize).toList();
        }
      }
      List<CardRow> all = const [];
      if (_mode == StudyMode.choice) all = await repo.watchCards(widget.deckId).first;
      if (!mounted) return;
      _update(() {
        _queue = q;
        _pool = [for (final c in all) c.back];
        _poolFronts = [for (final c in all) c.front];
      });
      _onCardShown();
    } catch (_) {
      if (mounted) _update(() => _failed = true);
    }
  }

  void _onCardShown() {
    final card = _currentCard;
    if (card == null) return;
    _typed.clear();
    _revealed = 0;
    _match = null;
    _picked = null;
    _questionShown = _mode != StudyMode.listening;
    _options = _mode == StudyMode.choice
        ? StudyRules.choices(_answer(card), _reversed(card) ? _poolFronts : _pool, _random)
        : null;
    final auto = _mode == StudyMode.listening || ref.read(settingsProvider).flashAutoSpeak;
    if (auto) unawaited(_speak(card, question: true));
  }

  /// Speaks one side in the deck's language for that side. Text-to-speech is
  /// optional: when the device has no engine or voice the user is told so
  /// and the session goes on.
  Future<void> _speak(CardRow card, {required bool question}) async {
    final frontSide = question != _reversed(card);
    final example = question || !ref.read(settingsProvider).flashSpeakExample
        ? ''
        : (CardExtras.decode(card.extra)[CardField.example] ?? '').trim();
    await _say(
      frontSide ? card.front : card.back,
      _langTag(front: frontSide),
      awaitDone: example.isNotEmpty,
    );
    // The example (in the front language) follows the answer when asked for.
    if (example.isNotEmpty && mounted && _currentCard?.id == card.id) {
      await _say(example, _langTag(front: true));
    }
  }

  /// Answer revealed: read it aloud when auto-reading is on.
  void _answerShown(CardRow card) {
    if (ref.read(settingsProvider).flashAutoSpeak) unawaited(_speak(card, question: false));
  }

  /// Speech language of a side: the deck setting, else the app language.
  String _langTag({required bool front}) {
    final deck = ref.read(deckProvider(widget.deckId)).value;
    final lang = front ? deck?.frontLang : deck?.backLang;
    return (lang == null || lang.isEmpty) ? Localizations.localeOf(context).toLanguageTag() : lang;
  }

  CardSide _questionSide(CardRow card) => _reversed(card) ? CardSide.back : CardSide.front;

  /// Custom fields of one face: the question face or the answer face.
  List<FieldItem> _sideItems(CardRow card, CardLayout layout, {required bool question}) {
    final qSide = _questionSide(card);
    final side = question ? qSide : (qSide == CardSide.front ? CardSide.back : CardSide.front);
    final values = CardCustom.decode(card.custom);
    return [
      for (final f in layout.customFields)
        if (f.side == side && values[f.id] != null)
          FieldItem(
            key: f.id,
            label: f.name,
            value: values[f.id]!,
            speak: () => _say(
              values[f.id]!,
              f.lang.isNotEmpty ? f.lang : _langTag(front: f.side == CardSide.front),
            ),
          ),
    ];
  }

  /// Answer side: built-in fields in layout order, then custom answer fields.
  List<FieldItem> _answerItems(CardRow card, CardLayout layout) {
    final l10n = context.l10n;
    final extras = CardExtras.decode(card.extra);
    return [
      for (final f in layout.visible)
        if (extras[f] case final v?)
          FieldItem(
            key: f.name,
            label: layout.labelOf(f) ?? cardFieldLabel(l10n, f),
            value: v,
            speak: () {
              final lang = layout.fieldLangs[f];
              if (lang != null && lang.isNotEmpty) {
                _say(v, lang);
              } else {
                _speakField(f, v);
              }
            },
          ),
      ..._sideItems(card, layout, question: false),
    ];
  }

  Uint8List? _image(List<CardMediaRow> media, {required bool question, required CardRow card}) {
    final front = question != _reversed(card);
    return media
        .where((m) => m.kind == 'image' && m.side == (front ? 'front' : 'back'))
        .firstOrNull
        ?.bytes;
  }

  VoidCallback? _audioOf(
    List<CardMediaRow> media, {
    required bool question,
    required CardRow card,
  }) {
    final front = question != _reversed(card);
    final clip = media
        .where((m) => m.kind == 'audio' && m.side == (front ? 'front' : 'back'))
        .firstOrNull;
    if (clip == null) return null;
    return () async {
      final messenger = ScaffoldMessenger.of(context);
      final l10n = context.l10n;
      await _tts.stop();
      final dot = clip.name.lastIndexOf('.');
      final ok = await ref
          .read(audioClipPlayerProvider)
          .play(
            clip.bytes,
            extension: dot < 0 ? 'm4a' : clip.name.substring(dot + 1).toLowerCase(),
          );
      if (!ok && mounted) {
        messenger.showSnackBar(SnackBar(content: Text(l10n.flashcardsAudioUnavailable)));
      }
    };
  }

  /// Optional fields are spoken on their own: the example in the front
  /// language (it usually illustrates the word), the rest in the back language.
  Future<void> _speakField(CardField f, String text) =>
      _say(text, _langTag(front: f == CardField.example || f == CardField.pronunciation));

  /// Speaks [text] in [tag] with the user's speed, repetitions and voice.
  Future<void> _say(String text, String tag, {bool awaitDone = false}) async {
    final messenger = ScaffoldMessenger.of(context);
    final l10n = context.l10n;
    final settings = ref.read(settingsProvider);
    final result = await _tts.speak(
      text,
      languageTag: tag,
      rate: settings.flashSpeechRatePercent / 100,
      repeat: settings.flashSpeechRepeat,
      voice: settings.flashVoices[tag.split(RegExp('[-_]')).first.toLowerCase()],
      pauseMs: settings.flashSpeechPauseTenths * 100,
      awaitDone: awaitDone,
    );
    if (!mounted) return;
    final message = switch (result) {
      TtsResult.ok || TtsResult.empty => null,
      TtsResult.languageUnavailable => l10n.flashcardsTtsLanguageUnavailable,
      TtsResult.unavailable => l10n.flashcardsTtsUnavailable,
    };
    if (message != null) {
      messenger
        ..hideCurrentSnackBar()
        // Floats above the answer / rating bar so the message never covers them.
        ..showSnackBar(
          SnackBar(
            content: Text(message),
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, 52 + Space.lg + Space.md),
          ),
        );
    }
  }

  void _next() {
    _update(() {
      _index++;
      _flipped = false;
      _busy = false;
    });
    _onCardShown();
  }

  void _checkTyped(CardRow card) {
    if (_typed.text.trim().isEmpty) return;
    _update(() {
      _match = StudyRules.check(_typed.text, _answer(card));
      _flipped = true;
    });
    _answerShown(card);
  }

  void _pick(CardRow card, String option) {
    if (_picked != null) return;
    _update(() {
      _picked = option;
      _match = option == _answer(card) ? AnswerMatch.exact : AnswerMatch.wrong;
      _flipped = true;
    });
    _answerShown(card);
  }

  /// Practice: no scheduling, only right / wrong.
  void _practiceResult(CardRow card, bool knew) {
    if (!knew) _mistakes.add(card);
    if (knew) _right++;
    _next();
  }

  Future<void> _rate(CardRow card, ReviewRating rating) async {
    if (_busy) return;
    _update(() => _busy = true);
    final repo = ref.read(flashcardsRepositoryProvider);
    final clock = ref.read(clockProvider);
    try {
      final after = await repo.recordReview(card.id, rating);
      CardRow? again;
      final due = after.dueAt;
      if (after.state != CardState.review &&
          due != null &&
          !due.difference(clock.now()).isNegative &&
          due.difference(clock.now()) <= _sameSessionWindow) {
        again = await repo.getCard(card.id);
      }
      if (!mounted) return;
      _counts[rating] = _counts[rating]! + 1;
      if (rating == ReviewRating.again && !_mistakes.any((c) => c.id == card.id)) {
        _mistakes.add(card);
      }
      if (again != null) _queue!.add(again);
      _next();
    } catch (_) {
      if (!mounted) return;
      _update(() => _busy = false);
      ScaffoldMessenger.maybeOf(context)
          ?.showSnackBar(SnackBar(content: Text(context.l10n.errorSaveFailed)));
    }
  }

  Future<void> _edit(CardRow card) async {
    await showCardForm(context, deckId: widget.deckId, initial: card);
    final fresh = await ref.read(flashcardsRepositoryProvider).getCard(card.id);
    if (!mounted || fresh == null || _queue == null) return;
    _update(() => _queue![_index] = fresh);
  }

  Future<void> _suspend(CardRow card) async {
    await ref.read(flashcardsRepositoryProvider).setSuspended(card.id, true);
    if (!mounted) return;
    final repo = ref.read(flashcardsRepositoryProvider);
    showUndoSnackBar(
      context,
      context.l10n.flashcardsSuspended,
      () => repo.setSuspended(card.id, false),
    );
    _update(() => _queue!.removeAt(_index));
    _onCardShown();
  }
}
