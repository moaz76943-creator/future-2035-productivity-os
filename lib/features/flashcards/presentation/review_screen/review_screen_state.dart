part of '../review_screen.dart';

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  /// setState for the extension parts (keeps setState protected).
  void _update(VoidCallback fn) => setState(fn);

  List<CardRow>? _queue;
  List<String> _pool = const [];
  List<String> _poolFronts = const [];
  bool _failed = false;
  int _index = 0;
  bool _flipped = false;
  bool _busy = false;
  bool _questionShown = false;

  /// Optional fields revealed so far when the deck reveals them step by step.
  int _revealed = 0;
  AnswerMatch? _match;
  String? _picked;
  List<String>? _options;
  final _typed = TextEditingController();
  final _random = math.Random();
  final Map<ReviewRating, int> _counts = {for (final r in ReviewRating.values) r: 0};
  int _right = 0;
  final List<CardRow> _mistakes = [];

  late final StudyMode _mode =
      widget.mode ??
      studyModeFromName(ref.read(settingsProvider).flashStudyMode) ??
      StudyMode.classic;
  bool get _practice => widget.scope != StudyScope.scheduled;
  int get _done => _practice ? _right + _mistakes.length : _counts.values.fold(0, (a, b) => a + b);

  CardRow? get _currentCard {
    final q = _queue;
    return q != null && _index < q.length ? q[_index] : null;
  }

  bool _reversed(CardRow c) => StudyRules.reversed(_mode, c.id);
  String _question(CardRow c) => _reversed(c) ? c.back : c.front;
  String _answer(CardRow c) => _reversed(c) ? c.front : c.back;

  // Read once while the element is alive; `ref` must not be used in dispose().
  late final TtsService _tts = ref.read(ttsServiceProvider);

  /// Time spent in this session, added to today's study time on leaving.
  final _session = Stopwatch()..start();
  late final FlashcardsRepository _repoForTime = ref.read(flashcardsRepositoryProvider);

  @override
  void initState() {
    super.initState();
    _tts;
    _repoForTime;
    _load();
  }

  @override
  void dispose() {
    _typed.dispose();
    _tts.stop();
    _session.stop();
    unawaited(_repoForTime.addStudyTime(_session.elapsed).catchError((Object _) {}));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final deck = ref.watch(deckProvider(widget.deckId)).value;
    final card = _currentCard;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(deck?.name ?? l10n.flashTitle, maxLines: 1, overflow: TextOverflow.ellipsis),
            Text(
              _practice
                  ? '${studyModeLabel(l10n, _mode)} · ${l10n.studyPractice}'
                  : studyModeLabel(l10n, _mode),
              style: context.text.labelMedium?.copyWith(color: context.lux.ink2),
            ),
          ],
        ),
        actions: [
          if (card != null) ...[
            IconButton(
              key: const Key('reviewSpeakButton'),
              tooltip: l10n.flashcardsReadAloud,
              icon: const Icon(Icons.volume_up_rounded),
              onPressed: () => _speak(card, question: !_flipped),
            ),
            PopupMenuButton<String>(
              key: const Key('reviewMenu'),
              tooltip: l10n.actionMore,
              onSelected: (v) => v == 'edit' ? _edit(card) : _suspend(card),
              itemBuilder: (_) => [
                PopupMenuItem(value: 'edit', child: Text(l10n.cardEdit)),
                PopupMenuItem(value: 'suspend', child: Text(l10n.flashcardsSuspend)),
              ],
            ),
          ],
        ],
      ),
      body: AuroraBackground(
        hue: _hue,
        intensity: 0.5,
        child: SafeArea(child: _body(context)),
      ),
    );
  }
}
