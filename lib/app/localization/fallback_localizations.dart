import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/widgets.dart';

/// Wraps a framework delegate (Material, Cupertino) so every app language is
/// accepted: languages the framework has translations for get them, any other
/// gets the English framework texts instead of the app failing to start.
class FallbackLocalizationsDelegate<T> extends LocalizationsDelegate<T> {
  const FallbackLocalizationsDelegate(this.inner);

  final LocalizationsDelegate<T> inner;

  static const _english = Locale('en');

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<T> load(Locale locale) => inner.load(inner.isSupported(locale) ? locale : _english);

  @override
  bool shouldReload(covariant FallbackLocalizationsDelegate<T> old) => false;

  @override
  Type get type => T;
}

/// Like [FallbackLocalizationsDelegate] for the widgets layer, which also sets
/// the text direction: a right-to-left language the framework does not know
/// still lays out right to left.
class FallbackWidgetsLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const FallbackWidgetsLocalizationsDelegate(this.inner, this.rtlLanguages);

  final LocalizationsDelegate<WidgetsLocalizations> inner;
  final Set<String> rtlLanguages;

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    if (inner.isSupported(locale)) return inner.load(locale);
    return SynchronousFuture(
      rtlLanguages.contains(locale.languageCode)
          ? const _RtlWidgetsLocalizations()
          : const DefaultWidgetsLocalizations(),
    );
  }

  @override
  bool shouldReload(covariant FallbackWidgetsLocalizationsDelegate old) => false;
}

class _RtlWidgetsLocalizations extends DefaultWidgetsLocalizations {
  const _RtlWidgetsLocalizations();

  @override
  TextDirection get textDirection => TextDirection.rtl;
}
