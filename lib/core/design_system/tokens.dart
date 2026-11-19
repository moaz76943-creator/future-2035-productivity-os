import 'package:flutter/widgets.dart';

/// FUTURE 2035 — WHITE LUXURY design tokens.
///
/// White is the foundation. Colour is used as light: accents glow on
/// near-white surfaces and each module owns a two-stop "aurora" identity.
abstract final class Palette {
  // Foundation (light)
  static const white = Color(0xFFFFFFFF);
  static const porcelain = Color(0xFFF8F9FC); // app background
  static const mist = Color(0xFFF1F3F9); // recessed surfaces
  static const pearl = Color(0xFFE6E9F2); // hairlines
  static const silver = Color(0xFFC9CEDC);

  // Ink
  static const navy = Color(0xFF0E1330); // primary text
  static const ink2 = Color(0xFF454B66); // secondary text
  static const ink3 = Color(0xFF6E7491); // tertiary (meets 4.5:1 on white)

  // Foundation (dark) — true AMOLED black with near-black, faintly cool
  // surfaces (pixels off on OLED; cards still separate from the page).
  static const abyss = Color(0xFF000000);
  static const midnight = Color(0xFF0B0B11);
  static const dusk = Color(0xFF15151E);
  static const twilight = Color(0xFF262633);
  static const moon = Color(0xFFEDEFFA);
  static const moon2 = Color(0xFFB4B9D6);
  static const moon3 = Color(0xFF8A90B2);

  // Accents
  static const violet = Color(0xFF6C4CFF); // Electric Violet
  static const aurora = Color(0xFF2F7BFF); // Aurora Blue
  static const turquoise = Color(0xFF00B8C4);
  static const emerald = Color(0xFF14B87A); // Soft Emerald
  static const coral = Color(0xFFFF6B5E);
  static const champagne = Color(0xFFD9A441); // Champagne Gold
  static const lavender = Color(0xFF9B8CFF);
  static const rose = Color(0xFFF0569B);
  static const amber = Color(0xFFF59E0B);

  /// Selectable colours for projects, notebooks, decks, habits.
  static const swatches = <Color>[
    violet, aurora, turquoise, emerald, champagne, coral, rose, lavender,
    Color(0xFF3B4CCA), Color(0xFF0EA5A0), Color(0xFF7C3AED), Color(0xFFE76F51),
  ];
}

/// The colour identity of each functional area.
enum ModuleHue {
  focus(Palette.violet, Palette.aurora),
  tasks(Palette.aurora, Palette.turquoise),
  calendar(Palette.lavender, Palette.aurora),
  notes(Palette.champagne, Palette.emerald),
  flashcards(Palette.violet, Palette.coral),
  goals(Palette.emerald, Palette.champagne),
  habits(Palette.turquoise, Palette.emerald),
  analytics(Palette.aurora, Palette.violet),
  projects(Palette.rose, Palette.violet),
  assistant(Palette.violet, Palette.turquoise),
  neutral(Palette.ink3, Palette.silver);

  const ModuleHue(this.a, this.b);
  final Color a;
  final Color b;

  LinearGradient get gradient => LinearGradient(
        colors: [a, b],
        begin: AlignmentDirectional.topStart,
        end: AlignmentDirectional.bottomEnd,
      );
}

abstract final class Space {
  static const xxs = 4.0;
  static const xs = 8.0;
  static const sm = 12.0;
  static const md = 16.0;
  static const lg = 20.0;
  static const xl = 24.0;
  static const xxl = 32.0;
  static const xxxl = 48.0;

  /// Horizontal page gutter.
  static const page = 20.0;
}

abstract final class Radii {
  static const sm = 10.0;
  static const md = 16.0;
  static const lg = 22.0;
  static const xl = 28.0;
  static const pill = 999.0;
}

abstract final class Motion {
  static const fast = Duration(milliseconds: 160);
  static const medium = Duration(milliseconds: 280);
  static const slow = Duration(milliseconds: 480);
  static const emphasized = Cubic(0.2, 0.0, 0.0, 1.0);
  static const decelerate = Cubic(0.05, 0.7, 0.1, 1.0);
}

/// Minimum touch target (Material / WCAG 2.5.8).
const double kMinTouchTarget = 48;
