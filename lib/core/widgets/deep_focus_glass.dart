import 'package:flutter/material.dart';
import '../theme/deep_focus_visuals.dart';

/// خلفية التطبيق الحريرية الموحدة
class DeepFocusMeshScaffold extends StatelessWidget {
  const DeepFocusMeshScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: DeepFocusVisuals.canvasLight,
        image: DecorationImage(
          image: AssetImage(DeepFocusAssets.appMeshBg),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

/// بطاقة زجاجية جاهزة متوافقة مع RTL/LTR
class DeepFocusGlassCard extends StatelessWidget {
  const DeepFocusGlassCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.radius = DeepFocusVisuals.cardRadius,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final card = Container(
      padding: padding,
      decoration: DeepFocusVisuals.glassCard(radius: radius),
      child: child,
    );
    if (onTap == null) return card;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: card,
      ),
    );
  }
}

/// عرض أي أيقونة 3D جاهزة بحجم موحد وبدون أخطاء إن فُقدت
class DeepFocusAssetIcon extends StatelessWidget {
  const DeepFocusAssetIcon({
    super.key,
    required this.assetPath,
    this.size = 44,
    this.fallbackIcon = Icons.auto_awesome_rounded,
  });

  final String assetPath;
  final double size;
  final IconData fallbackIcon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      width: size,
      height: size,
      fit: BoxFit.contain,
      errorBuilder: (_, __, ___) => Icon(
        fallbackIcon,
        size: size * 0.7,
        color: DeepFocusVisuals.tealPrimary,
      ),
    );
  }
}

/// Unifies buttons, chips and segmented filters to the calm teal (#0D7A7E).
class DeepFocusTealScope extends StatelessWidget {
  const DeepFocusTealScope({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const teal = DeepFocusVisuals.tealPrimary;
    final theme = Theme.of(context);
    return Theme(
      data: theme.copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: teal,
          foregroundColor: Colors.white,
        ),
        chipTheme: theme.chipTheme.copyWith(
          selectedColor: teal,
          checkmarkColor: Colors.white,
          labelStyle: WidgetStateTextStyle.resolveWith(
            (s) => (theme.textTheme.labelLarge ?? const TextStyle()).copyWith(
              color: s.contains(WidgetState.selected) ? Colors.white : null,
            ),
          ),
        ),
        segmentedButtonTheme: SegmentedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.resolveWith(
              (s) => s.contains(WidgetState.selected) ? teal : null,
            ),
            foregroundColor: WidgetStateProperty.resolveWith(
              (s) => s.contains(WidgetState.selected) ? Colors.white : null,
            ),
          ),
        ),
      ),
      child: child,
    );
  }
}
