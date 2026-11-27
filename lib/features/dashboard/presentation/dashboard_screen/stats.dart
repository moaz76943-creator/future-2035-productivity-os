part of '../dashboard_screen.dart';

/// The painted landscape behind the greeting (light by day, night in dark mode).
class _HeroBackdrop extends StatelessWidget {
  const _HeroBackdrop({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(Space.sm, Space.xs, Space.sm, 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Radii.xl),
        child: Stack(
          children: [
            Positioned.fill(
              child: ExcludeSemantics(
                child: Image.asset(
                  DeepFocusAssets.homeHeaderBg,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) =>
                      CustomPaint(painter: LandscapePainter(dark: context.lux.isDark)),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 64), child: child),
          ],
        ),
      ),
    );
  }
}
