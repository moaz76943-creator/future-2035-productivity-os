import 'dart:convert';

import 'package:http/http.dart' as http;

/// Downloadable word lists by topic, one file per language, built by the helper
/// agents on the repository's `content-packs` branch. Only the chosen language
/// is fetched, on request; nothing about the user is sent and nothing is stored
/// except the cards the user adds.
class WordPack {
  const WordPack({
    required this.names,
    required this.items,
    this.emoji = const {},
    this.pron = const {},
  });

  /// 'home' and 'home.kitchen' -> title.
  final Map<String, String> names;

  /// 'home.kitchen.fridge' -> word.
  final Map<String, String> items;
  final Map<String, String> emoji;

  /// Pronunciation of a word (from the user's own lists), when known.
  final Map<String, String> pron;

  static WordPack parse(String body) {
    final j = jsonDecode(body);
    Map<String, String> m(Object? v) => {
      if (v is Map)
        for (final e in v.entries)
          if (e.value is String && '${e.value}'.trim().isNotEmpty) '${e.key}': '${e.value}'.trim(),
    };
    return j is Map
        ? WordPack(
            names: m(j['names']),
            items: m(j['items']),
            emoji: m(j['emoji']),
            pron: m(j['pron']),
          )
        : const WordPack(names: {}, items: {});
  }

  /// Topic ids in file order ('home'), each with its branch ids ('home.kitchen').
  Map<String, List<String>> tree() {
    final t = <String, List<String>>{};
    for (final k in names.keys.where((k) => k.contains('.'))) {
      t.putIfAbsent(k.split('.').first, () => []).add(k);
    }
    return t;
  }

  /// Words of one branch: concept key -> word.
  Map<String, String> branch(String key) => {
    for (final e in items.entries)
      if (e.key.startsWith('$key.')) e.key: e.value,
  };
}

/// Pack file code for an app language tag (pt-BR -> pt, zh-TW -> zh_Hant).
String packCode(String tag) => tag == 'zh-TW' ? 'zh_Hant' : tag.split('-').first;

abstract interface class WordPackSource {
  Future<WordPack> load(String code);
}

class GithubWordPacks implements WordPackSource {
  GithubWordPacks({http.Client? client}) : _client = client ?? http.Client();

  static const _base =
      'https://raw.githubusercontent.com/moaz76943-creator/future-2035-productivity-os/content-packs/packs';
  final http.Client _client;
  final _cache = <String, WordPack>{};

  @override
  Future<WordPack> load(String code) async {
    if (_cache[code] case final p?) return p;
    final r = await _client
        .get(Uri.parse('$_base/$code.json'))
        .timeout(const Duration(seconds: 20));
    if (r.statusCode == 404) return const WordPack(names: {}, items: {});
    if (r.statusCode != 200) throw http.ClientException('HTTP ${r.statusCode}');
    return _cache[code] = WordPack.parse(utf8.decode(r.bodyBytes));
  }
}
