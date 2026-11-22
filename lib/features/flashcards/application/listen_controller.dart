import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/database/app_database.dart';
import '../../../core/speech/tts_service.dart';
import '../../settings/application/settings_providers.dart';
import '../domain/speech_language.dart';
import '../domain/world_languages.dart';

/// Hands-free listening: reads every card of a list aloud, first column then
/// second column, with short pauses, one card after another.
class ListenState {
  const ListenState({
    this.active = false,
    this.playing = false,
    this.index = 0,
    this.total = 0,
    this.cardId,
    this.problem,
  });

  final bool active;
  final bool playing;
  final int index;
  final int total;

  /// The card being read (highlighted in the list).
  final String? cardId;

  /// Why reading stopped by itself (no engine / language), if it did.
  final TtsResult? problem;

  ListenState copyWith({bool? playing, int? index, String? cardId, TtsResult? problem}) =>
      ListenState(
        active: active,
        playing: playing ?? this.playing,
        index: index ?? this.index,
        total: total,
        cardId: cardId ?? this.cardId,
        problem: problem,
      );
}

final listenControllerProvider = NotifierProvider.autoDispose<ListenController, ListenState>(
  ListenController.new,
);

class ListenController extends Notifier<ListenState> {
  /// Pause after the first column and after each card.
  static const gapInside = Duration(milliseconds: 900);
  static const gapBetween = Duration(milliseconds: 1600);

  List<CardRow> _cards = const [];
  String _first = '', _second = '';
  bool _swapped = false;
  String _appTag = 'en';

  /// Bumped on every change; a running loop stops when it no longer matches.
  int _run = 0;

  TtsService get _tts => ref.read(ttsServiceProvider);

  @override
  ListenState build() {
    final tts = _tts; // ref cannot be used inside onDispose
    ref.onDispose(() {
      _run++;
      if (_reading) unawaited(tts.stop());
    });
    return const ListenState();
  }

  /// True while a list is being read (so leaving stops only our own speech).
  bool _reading = false;

  @override
  set state(ListenState value) {
    _reading = value.active;
    super.state = value;
  }

  /// Starts reading [cards] from the top. Tags are the deck's front and back
  /// speech languages ('' = [appTag]).
  void start(
    List<CardRow> cards, {
    required String frontTag,
    required String backTag,
    required String appTag,
    required bool swapped,
  }) {
    if (cards.isEmpty) return;
    _cards = List.unmodifiable(cards);
    _swapped = swapped;
    _appTag = appTag;
    _first = swapped ? backTag : frontTag;
    _second = swapped ? frontTag : backTag;
    state = ListenState(active: true, playing: true, total: cards.length, cardId: cards.first.id);
    _loop();
  }

  void pause() {
    if (!state.active) return;
    _run++;
    unawaited(_tts.stop());
    state = state.copyWith(playing: false);
  }

  void resume() {
    if (!state.active || state.playing) return;
    state = state.copyWith(playing: true);
    _loop();
  }

  void next() {
    if (!state.active) return;
    _run++;
    unawaited(_tts.stop());
    final i = state.index + 1;
    if (i >= _cards.length) {
      stop();
      return;
    }
    state = state.copyWith(index: i, cardId: _cards[i].id);
    if (state.playing) _loop();
  }

  void stop() {
    _run++;
    unawaited(_tts.stop());
    state = const ListenState();
  }

  void _loop() => unawaited(_read(++_run));

  Future<void> _read(int run) async {
    final s = ref.read(settingsProvider);
    Future<TtsResult> say(String text, String deckTag) {
      final tag = resolveSpeechTag(text, deckTag, _appTag);
      return _tts.speak(
        text,
        languageTag: tag,
        rate: s.flashSpeechRatePercent / 100,
        repeat: s.flashSpeechRepeat,
        voice: s.flashVoices[languageCode(tag)],
        awaitDone: true,
      );
    }

    bool stale() => run != _run || !ref.mounted;

    while (!stale() && state.index < _cards.length) {
      final c = _cards[state.index];
      final a = _swapped ? c.back : c.front;
      final b = _swapped ? c.front : c.back;
      for (final (text, tag, gap) in [(a, _first, gapInside), (b, _second, gapBetween)]) {
        final r = await say(text, tag);
        if (stale()) return;
        if (r == TtsResult.unavailable || r == TtsResult.languageUnavailable) {
          // Without speech the list would race past: stop and say why.
          _run++;
          state = state.copyWith(playing: false, problem: r);
          return;
        }
        await Future<void>.delayed(gap);
        if (stale()) return;
      }
      final i = state.index + 1;
      if (i >= _cards.length) break;
      state = state.copyWith(index: i, cardId: _cards[i].id);
    }
    if (!stale()) stop();
  }
}
