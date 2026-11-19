/// Languages a card can be in, by ISO 639-1 code, each in its own name
/// (endonym) so the list reads right whatever the app language is.
/// Speech uses the phone's engine: languages with installed voice data are
/// shown first; any other can be downloaded in the phone's speech settings.
const worldLanguages = <String, String>{
  'af': 'Afrikaans',
  'am': 'አማርኛ',
  'ar': 'العربية',
  'as': 'অসমীয়া',
  'az': 'Azərbaycan',
  'be': 'Беларуская',
  'bg': 'Български',
  'bn': 'বাংলা',
  'bo': 'བོད་སྐད་',
  'bs': 'Bosanski',
  'ca': 'Català',
  'ceb': 'Cebuano',
  'cs': 'Čeština',
  'cy': 'Cymraeg',
  'da': 'Dansk',
  'de': 'Deutsch',
  'dv': 'ދިވެހި',
  'el': 'Ελληνικά',
  'en': 'English',
  'eo': 'Esperanto',
  'es': 'Español',
  'et': 'Eesti',
  'eu': 'Euskara',
  'fa': 'فارسی',
  'ff': 'Fulfulde',
  'fi': 'Suomi',
  'fil': 'Filipino',
  'fo': 'Føroyskt',
  'fr': 'Français',
  'fy': 'Frysk',
  'ga': 'Gaeilge',
  'gd': 'Gàidhlig',
  'gl': 'Galego',
  'gn': 'Avañeʼẽ',
  'gu': 'ગુજરાતી',
  'ha': 'Hausa',
  'haw': 'ʻŌlelo Hawaiʻi',
  'hi': 'हिन्दी',
  'hmn': 'Hmoob',
  'hr': 'Hrvatski',
  'ht': 'Kreyòl ayisyen',
  'hu': 'Magyar',
  'hy': 'Հայերեն',
  'id': 'Bahasa Indonesia',
  'ig': 'Igbo',
  'is': 'Íslenska',
  'it': 'Italiano',
  'ja': '日本語',
  'jv': 'Basa Jawa',
  'ka': 'ქართული',
  'kk': 'Қазақ',
  'km': 'ខ្មែរ',
  'kn': 'ಕನ್ನಡ',
  'ko': '한국어',
  'ku': 'Kurdî',
  'ckb': 'کوردیی ناوەندی',
  'ky': 'Кыргызча',
  'la': 'Latina',
  'lb': 'Lëtzebuergesch',
  'lg': 'Luganda',
  'ln': 'Lingála',
  'lo': 'ລາວ',
  'lt': 'Lietuvių',
  'lv': 'Latviešu',
  'mg': 'Malagasy',
  'mi': 'Māori',
  'mk': 'Македонски',
  'ml': 'മലയാളം',
  'mn': 'Монгол',
  'mr': 'मराठी',
  'ms': 'Bahasa Melayu',
  'mt': 'Malti',
  'my': 'မြန်မာ',
  'ne': 'नेपाली',
  'nl': 'Nederlands',
  'no': 'Norsk',
  'nb': 'Norsk bokmål',
  'nn': 'Norsk nynorsk',
  'ny': 'Chichewa',
  'om': 'Oromoo',
  'or': 'ଓଡ଼ିଆ',
  'pa': 'ਪੰਜਾਬੀ',
  'pl': 'Polski',
  'ps': 'پښتو',
  'pt': 'Português',
  'qu': 'Runasimi',
  'ro': 'Română',
  'ru': 'Русский',
  'rw': 'Kinyarwanda',
  'sa': 'संस्कृतम्',
  'sd': 'سنڌي',
  'si': 'සිංහල',
  'sk': 'Slovenčina',
  'sl': 'Slovenščina',
  'sm': 'Gagana Sāmoa',
  'sn': 'ChiShona',
  'so': 'Soomaali',
  'sq': 'Shqip',
  'sr': 'Српски',
  'st': 'Sesotho',
  'su': 'Basa Sunda',
  'sv': 'Svenska',
  'sw': 'Kiswahili',
  'ta': 'தமிழ்',
  'te': 'తెలుగు',
  'tg': 'Тоҷикӣ',
  'th': 'ไทย',
  'ti': 'ትግርኛ',
  'tk': 'Türkmen',
  'tl': 'Tagalog',
  'tn': 'Setswana',
  'tr': 'Türkçe',
  'tt': 'Татар',
  'ug': 'ئۇيغۇرچە',
  'uk': 'Українська',
  'ur': 'اردو',
  'uz': 'Oʻzbek',
  'vi': 'Tiếng Việt',
  'wo': 'Wolof',
  'xh': 'isiXhosa',
  'yo': 'Yorùbá',
  'yue': '粵語',
  'zh': '中文',
  'zu': 'isiZulu',
};

/// Base language code of a tag ('pt-BR' → 'pt', 'zh_Hant_TW' → 'zh').
String languageCode(String tag) => tag.split(RegExp('[-_]')).first.toLowerCase();

/// Region part of a tag, upper-case ('pt-BR' → 'BR'), or ''.
String languageRegion(String tag) {
  final parts = tag.split(RegExp('[-_]'));
  for (final p in parts.skip(1)) {
    if (RegExp(r'^[A-Za-z]{2}$|^\d{3}$').hasMatch(p)) return p.toUpperCase();
  }
  return '';
}

/// "Deutsch (AT)" for 'de-AT', "Deutsch" for 'de'; unknown codes show the tag.
String languageDisplayName(String tag) {
  final name = worldLanguages[languageCode(tag)];
  if (name == null) return tag;
  final region = languageRegion(tag);
  return region.isEmpty ? name : '$name ($region)';
}

/// Lower-case text used to match a search in the language picker.
String languageSearchText(String tag) =>
    '${languageDisplayName(tag)} $tag ${languageCode(tag)}'.toLowerCase();
