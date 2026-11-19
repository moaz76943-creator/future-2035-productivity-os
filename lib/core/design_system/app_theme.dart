import 'package:flutter/services.dart';
import 'package:material_ui/material_ui.dart';

import 'tokens.dart';

part 'app_theme/lux_colors.dart';

abstract final class AppTheme {
  static ThemeData build({required Brightness brightness, required Locale locale, Color? accent}) {
    final primary = accent ?? Palette.violet;
    final dark = brightness == Brightness.dark;
    final lux = brightness == Brightness.dark ? LuxColors.dark : LuxColors.light;
    final lang = locale.languageCode;
    final family = lang == 'zh' ? null : AppFonts.primaryFor(lang);
    final fallback = AppFonts.fallbackFor(lang);
    final lh = AppFonts.lineHeightFactor(lang);

    TextStyle s(double size, FontWeight w, double height, {double ls = 0, Color? c}) => TextStyle(
      fontFamily: family,
      fontFamilyFallback: fallback,
      fontSize: size,
      fontWeight: w,
      height: height * lh,
      letterSpacing: lang == 'ar' || lang == 'hi' ? 0 : ls,
      color: c ?? lux.ink,
      leadingDistribution: TextLeadingDistribution.even,
    );

    final textTheme = TextTheme(
      displayLarge: s(56, FontWeight.w300, 1.08, ls: -1.5),
      displayMedium: s(44, FontWeight.w300, 1.1, ls: -1),
      displaySmall: s(34, FontWeight.w400, 1.15, ls: -0.5),
      headlineLarge: s(30, FontWeight.w600, 1.2, ls: -0.5),
      headlineMedium: s(26, FontWeight.w600, 1.22, ls: -0.3),
      headlineSmall: s(22, FontWeight.w600, 1.25, ls: -0.2),
      titleLarge: s(19, FontWeight.w600, 1.3, ls: -0.1),
      titleMedium: s(16, FontWeight.w600, 1.35),
      titleSmall: s(14, FontWeight.w600, 1.35),
      bodyLarge: s(16, FontWeight.w400, 1.5),
      bodyMedium: s(14, FontWeight.w400, 1.5, c: lux.ink2),
      bodySmall: s(12.5, FontWeight.w400, 1.45, c: lux.ink3),
      labelLarge: s(14, FontWeight.w600, 1.3, ls: 0.1),
      labelMedium: s(12.5, FontWeight.w600, 1.3, ls: 0.2, c: lux.ink2),
      labelSmall: s(11, FontWeight.w600, 1.3, ls: 0.6, c: lux.ink3),
    );

    final scheme = ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: Palette.white,
      primaryContainer: accent == null
          ? (dark ? const Color(0xFF2A2170) : const Color(0xFFEDE8FF))
          : Color.alphaBlend(
              primary.withValues(alpha: dark ? 0.32 : 0.12),
              dark ? Palette.dusk : Palette.white,
            ),
      onPrimaryContainer: dark
          ? Palette.moon
          : (accent == null ? const Color(0xFF2A1A8C) : Color.lerp(primary, Palette.navy, 0.5)!),
      secondary: Palette.aurora,
      onSecondary: Palette.white,
      tertiary: Palette.turquoise,
      onTertiary: Palette.white,
      error: lux.danger,
      onError: Palette.white,
      surface: lux.surface,
      onSurface: lux.ink,
      onSurfaceVariant: lux.ink2,
      surfaceContainerLowest: lux.surface,
      surfaceContainerLow: lux.background,
      surfaceContainer: lux.recessed,
      surfaceContainerHigh: lux.recessed,
      surfaceContainerHighest: lux.hairline,
      outline: lux.silverOr(brightness),
      outlineVariant: lux.hairline,
      shadow: lux.shadow,
    );

    final shape = RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.md));

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: lux.background,
      canvasColor: lux.background,
      textTheme: textTheme,
      fontFamily: family,
      fontFamilyFallback: fallback,
      extensions: [lux],
      splashFactory: InkSparkle.splashFactory,
      visualDensity: VisualDensity.standard,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: false,
        foregroundColor: lux.ink,
        titleTextStyle: textTheme.titleLarge,
        systemOverlayStyle: brightness == Brightness.dark
            ? SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent)
            : SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
      ),
      cardTheme: CardThemeData(
        color: lux.surface,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Radii.lg),
          side: BorderSide(color: lux.hairline),
        ),
      ),
      dividerTheme: DividerThemeData(color: lux.hairline, thickness: 1, space: 1),
      iconTheme: IconThemeData(color: lux.ink2, size: 22),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lux.recessed,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: textTheme.bodyLarge!.copyWith(color: lux.ink3),
        labelStyle: textTheme.bodyMedium,
        floatingLabelStyle: textTheme.labelMedium!.copyWith(color: Palette.violet),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Radii.md),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Radii.md),
          borderSide: BorderSide(color: lux.hairline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Radii.md),
          borderSide: const BorderSide(color: Palette.violet, width: 1.6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Radii.md),
          borderSide: BorderSide(color: lux.danger),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(64, kMinTouchTarget),
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
          shape: shape,
          textStyle: textTheme.labelLarge,
          backgroundColor: Palette.violet,
          foregroundColor: Palette.white,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(64, kMinTouchTarget),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: shape,
          side: BorderSide(color: lux.hairline),
          foregroundColor: lux.ink,
          textStyle: textTheme.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          minimumSize: const Size(48, kMinTouchTarget),
          shape: shape,
          foregroundColor: Palette.violet,
          textStyle: textTheme.labelLarge,
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          minimumSize: const Size(kMinTouchTarget, kMinTouchTarget),
          foregroundColor: lux.ink2,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: lux.surface,
        selectedColor: scheme.primaryContainer,
        side: BorderSide(color: lux.hairline),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.pill)),
        labelStyle: textTheme.labelMedium!.copyWith(color: lux.ink),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        showCheckmark: false,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: lux.surface,
        surfaceTintColor: Colors.transparent,
        showDragHandle: true,
        dragHandleColor: lux.silverOr(brightness),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(Radii.xl)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: lux.surface,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.xl)),
        titleTextStyle: textTheme.headlineSmall,
        contentTextStyle: textTheme.bodyMedium,
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: brightness == Brightness.dark ? Palette.moon : Palette.navy,
        contentTextStyle: textTheme.bodyMedium!.copyWith(
          color: brightness == Brightness.dark ? Palette.navy : Palette.white,
        ),
        actionTextColor: brightness == Brightness.dark ? Palette.violet : Palette.lavender,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.md)),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? Palette.white : lux.ink3,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? Palette.violet : lux.recessed,
        ),
        trackOutlineColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? Colors.transparent : lux.hairline,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(color: lux.ink3, width: 1.6),
        fillColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? Palette.violet : Colors.transparent,
        ),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: Palette.violet,
        inactiveTrackColor: lux.recessed,
        thumbColor: Palette.violet,
        overlayColor: Palette.violet.withValues(alpha: 0.12),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Palette.violet,
        linearTrackColor: lux.recessed,
        circularTrackColor: lux.recessed,
      ),
      listTileTheme: ListTileThemeData(
        iconColor: lux.ink2,
        textColor: lux.ink,
        titleTextStyle: textTheme.titleMedium,
        subtitleTextStyle: textTheme.bodySmall,
        minVerticalPadding: 10,
        contentPadding: const EdgeInsets.symmetric(horizontal: Space.md),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Radii.md)),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: ButtonStyle(
          minimumSize: const WidgetStatePropertyAll(Size(48, 44)),
          side: WidgetStatePropertyAll(BorderSide(color: lux.hairline)),
          backgroundColor: WidgetStateProperty.resolveWith(
            (s) => s.contains(WidgetState.selected) ? scheme.primaryContainer : lux.surface,
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (s) => s.contains(WidgetState.selected) ? scheme.onPrimaryContainer : lux.ink2,
          ),
          textStyle: WidgetStatePropertyAll(textTheme.labelMedium),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.violet,
        foregroundColor: Palette.white,
        elevation: 0,
        highlightElevation: 0,
      ),
      tooltipTheme: TooltipThemeData(
        decoration: BoxDecoration(
          color: brightness == Brightness.dark ? Palette.moon : Palette.navy,
          borderRadius: BorderRadius.circular(Radii.sm),
        ),
        textStyle: textTheme.labelMedium!.copyWith(
          color: brightness == Brightness.dark ? Palette.navy : Palette.white,
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.linux: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: FadeForwardsPageTransitionsBuilder(),
          TargetPlatform.windows: FadeForwardsPageTransitionsBuilder(),
        },
      ),
    );
  }
}
