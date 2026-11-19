part of '../app_theme.dart';

/// Extra semantic colours not covered by [ColorScheme].
@immutable
class LuxColors extends ThemeExtension<LuxColors> {
  const LuxColors({
    required this.background,
    required this.surface,
    required this.surfaceRaised,
    required this.recessed,
    required this.hairline,
    required this.ink,
    required this.ink2,
    required this.ink3,
    required this.glass,
    required this.glassBorder,
    required this.shadow,
    required this.success,
    required this.warning,
    required this.danger,
    required this.isDark,
  });

  final Color background;
  final Color surface;
  final Color surfaceRaised;
  final Color recessed;
  final Color hairline;
  final Color ink;
  final Color ink2;
  final Color ink3;
  final Color glass;
  final Color glassBorder;
  final Color shadow;
  final Color success;
  final Color warning;
  final Color danger;
  final bool isDark;

  static const light = LuxColors(
    background: Palette.porcelain,
    surface: Palette.white,
    surfaceRaised: Palette.white,
    recessed: Palette.mist,
    hairline: Palette.pearl,
    ink: Palette.navy,
    ink2: Palette.ink2,
    ink3: Palette.ink3,
    glass: Color(0xB8FFFFFF),
    glassBorder: Color(0xCCFFFFFF),
    shadow: Color(0x1A1B2470),
    success: Color(0xFF0E9F6E),
    warning: Color(0xFFB7791F),
    danger: Color(0xFFDC3545),
    isDark: false,
  );

  static const dark = LuxColors(
    background: Palette.abyss,
    surface: Palette.midnight,
    surfaceRaised: Palette.dusk,
    recessed: Color(0xFF060609),
    hairline: Palette.twilight,
    ink: Palette.moon,
    ink2: Palette.moon2,
    ink3: Palette.moon3,
    glass: Color(0x99121219),
    glassBorder: Color(0x33FFFFFF),
    shadow: Color(0x66000000),
    success: Color(0xFF34D399),
    warning: Color(0xFFFBBF24),
    danger: Color(0xFFFF6B7A),
    isDark: true,
  );

  @override
  LuxColors copyWith() => this;

  @override
  LuxColors lerp(ThemeExtension<LuxColors>? other, double t) {
    if (other is! LuxColors) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return LuxColors(
      background: l(background, other.background),
      surface: l(surface, other.surface),
      surfaceRaised: l(surfaceRaised, other.surfaceRaised),
      recessed: l(recessed, other.recessed),
      hairline: l(hairline, other.hairline),
      ink: l(ink, other.ink),
      ink2: l(ink2, other.ink2),
      ink3: l(ink3, other.ink3),
      glass: l(glass, other.glass),
      glassBorder: l(glassBorder, other.glassBorder),
      shadow: l(shadow, other.shadow),
      success: l(success, other.success),
      warning: l(warning, other.warning),
      danger: l(danger, other.danger),
      isDark: t < 0.5 ? isDark : other.isDark,
    );
  }
}

extension LuxThemeX on BuildContext {
  LuxColors get lux => Theme.of(this).extension<LuxColors>()!;
  TextTheme get text => Theme.of(this).textTheme;
}

/// Font family per script. Chinese uses the platform CJK font (Noto Sans
/// CJK on Android) via fallback, keeping the APK small.
abstract final class AppFonts {
  static const latin = 'Manrope';
  static const arabic = 'ReadexPro';
  static const devanagari = 'NotoSansDevanagari';

  static String primaryFor(String languageCode) => switch (languageCode) {
    'ar' => arabic,
    'hi' => devanagari,
    _ => latin,
  };

  static List<String> fallbackFor(String languageCode) => switch (languageCode) {
    'ar' => const [latin, devanagari, 'Noto Sans CJK SC', 'sans-serif'],
    'hi' => const [latin, arabic, 'Noto Sans CJK SC', 'sans-serif'],
    'zh' => const ['Noto Sans CJK SC', 'Noto Sans SC', latin, 'sans-serif'],
    _ => const [arabic, devanagari, 'Noto Sans CJK SC', 'sans-serif'],
  };

  /// Scripts with tall ascenders/descenders need extra line height.
  static double lineHeightFactor(String languageCode) => switch (languageCode) {
    'ar' || 'hi' => 1.12,
    _ => 1.0,
  };
}

extension on LuxColors {
  Color silverOr(Brightness b) => b == Brightness.dark ? Palette.twilight : Palette.silver;
}
