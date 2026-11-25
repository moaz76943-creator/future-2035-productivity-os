import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/world_languages.dart';

void main() {
  tearDown(() => localLanguageNames = const {});

  test('names read in the app language first, then the language\'s own name', () {
    expect(languageDisplayName('id-ID'), 'Bahasa Indonesia (ID)', reason: 'before names load');
    localLanguageNames = {'id': 'الإندونيسية', 'ar': 'العربية', 'en': 'الإنجليزية'};
    expect(languageDisplayName('id-ID'), 'الإندونيسية (Bahasa Indonesia · ID)');
    expect(languageDisplayName('en'), 'الإنجليزية (English)');
    expect(languageDisplayName('ar'), 'العربية', reason: 'no repeat when both names match');
    expect(languageSearchText('id-ID'), contains('bahasa indonesia'));
  });
}
