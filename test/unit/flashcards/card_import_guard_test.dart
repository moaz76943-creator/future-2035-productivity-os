import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/features/flashcards/domain/card_import.dart';

void main() {
  test('only card-like clipboard text is filled into the paste box', () {
    expect(looksLikeCards('hola\thello\nadiós\tbye'), isTrue);
    expect(looksLikeCards('كتاب - book\nقلم - pen'), isTrue);
    expect(looksLikeCards('gh issue view 11 --comments | tail -n 15'), isFalse);
    expect(looksLikeCards('MyS3cretPassw0rd'), isFalse);
    expect(looksLikeCards('https://example.com/a?b=c && rm x'), isFalse);
  });
}
