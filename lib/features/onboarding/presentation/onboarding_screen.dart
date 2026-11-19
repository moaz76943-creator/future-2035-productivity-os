import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../help/presentation/tour_sheet.dart';
import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/presentation/language_options.dart';

/// First-run introduction: welcome, privacy, language and reminders.
/// Finishing (or skipping) stores `onboardingDone`; the router then
/// redirects to Home.
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  static const _steps = 4;
  static const _hues = [ModuleHue.focus, ModuleHue.habits, ModuleHue.calendar, ModuleHue.assistant];
  static const _icons = [
    Icons.blur_on_rounded,
    Icons.shield_moon_rounded,
    Icons.translate_rounded,
    Icons.notifications_active_rounded,
  ];

  final _pages = PageController();
  int _step = 0;
  bool _finishing = false;

  @override
  void dispose() {
    _pages.dispose();
    super.dispose();
  }

  void _go(int step) {
    final target = step.clamp(0, _steps - 1);
    if (context.reduceMotion) {
      _pages.jumpToPage(target);
    } else {
      _pages.animateToPage(target, duration: Motion.medium, curve: Motion.emphasized);
    }
  }

  Future<void> _finish() async {
    if (_finishing) return;
    setState(() => _finishing = true);
    await markTourPending(ref);
    await ref.read(settingsProvider.notifier).update((c) => c.copyWith(onboardingDone: true));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hue = _hues[_step];
    final last = _step == _steps - 1;

    return Scaffold(
      body: AuroraBackground(
        hue: hue,
        intensity: 1.6,
        child: SafeArea(
          child: Column(
            children: [
              // Top bar: progress + skip
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(Space.page, Space.xs, Space.xs, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Semantics(
                        label: l10n.onboardStep(_step + 1, _steps),
                        excludeSemantics: true,
                        child: _StepDots(step: _step, total: _steps, hue: hue),
                      ),
                    ),
                    if (!last)
                      TextButton(
                        key: const ValueKey('onboard-skip'),
                        onPressed: _finishing ? null : _finish,
                        child: Text(l10n.actionSkip),
                      ),
                    if (last) const SizedBox(height: kMinTouchTarget),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pages,
                  onPageChanged: (i) => setState(() => _step = i),
                  children: [
                    _StepPage(
                      index: 0,
                      icon: _icons[0],
                      hue: _hues[0],
                      title: l10n.onboardWelcomeTitle,
                      body: l10n.onboardWelcomeBody,
                    ),
                    _StepPage(
                      index: 1,
                      icon: _icons[1],
                      hue: _hues[1],
                      title: l10n.onboardPrivateTitle,
                      body: l10n.onboardPrivateBody,
                      extra: _PrivacyPoints(hue: _hues[1]),
                    ),
                    _StepPage(
                      index: 2,
                      icon: _icons[2],
                      hue: _hues[2],
                      title: l10n.onboardLanguageTitle,
                      body: l10n.onboardingLanguageBody,
                      extra: const LuxCard(
                        padding: EdgeInsets.symmetric(vertical: Space.xs),
                        child: LanguageOptionList(),
                      ),
                    ),
                    _StepPage(
                      index: 3,
                      icon: _icons[3],
                      hue: _hues[3],
                      title: l10n.onboardNotifTitle,
                      body: l10n.onboardNotifBody,
                      extra: const _RemindersToggle(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(
                  Space.page,
                  Space.sm,
                  Space.page,
                  Space.lg,
                ),
                child: Row(
                  children: [
                    if (_step > 0)
                      IconButton(
                        tooltip: l10n.actionBack,
                        onPressed: () => _go(_step - 1),
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                    const Spacer(),
                    FilledButton.icon(
                      key: const ValueKey('onboard-next'),
                      style: FilledButton.styleFrom(
                        minimumSize: const Size(160, 52),
                        backgroundColor: hue.a,
                      ),
                      onPressed: _finishing ? null : (last ? _finish : () => _go(_step + 1)),
                      icon: Icon(last ? Icons.check_rounded : Icons.arrow_forward_rounded),
                      label: Text(last ? l10n.onboardGetStarted : l10n.onboardingNext),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StepDots extends StatelessWidget {
  const _StepDots({required this.step, required this.total, required this.hue});
  final int step;
  final int total;
  final ModuleHue hue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < total; i++)
          AnimatedContainer(
            duration: context.motion(Motion.medium),
            curve: Motion.emphasized,
            margin: const EdgeInsetsDirectional.only(end: Space.xs),
            width: i == step ? 28 : 8,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Radii.pill),
              gradient: i <= step ? hue.gradient : null,
              color: i <= step ? null : context.lux.hairline,
            ),
          ),
      ],
    );
  }
}

class _StepPage extends StatelessWidget {
  const _StepPage({
    required this.index,
    required this.icon,
    required this.hue,
    required this.title,
    required this.body,
    this.extra,
  });
  final int index;
  final IconData icon;
  final ModuleHue hue;
  final String title;
  final String body;
  final Widget? extra;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: Space.page, vertical: Space.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: GlowRing(
              value: (index + 1) / 4,
              hue: hue,
              size: 168,
              stroke: 6,
              child: IconOrb(icon: icon, hue: hue, size: 88),
            ),
          ),
          const SizedBox(height: Space.xxl),
          Semantics(
            header: true,
            child: Text(
              title,
              style: context.text.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: Space.sm),
          Text(
            body,
            style: context.text.bodyLarge?.copyWith(color: context.lux.ink2),
            textAlign: TextAlign.center,
          ),
          if (extra != null) ...[const SizedBox(height: Space.xl), extra!],
        ],
      ),
    );
  }
}

class _PrivacyPoints extends StatelessWidget {
  const _PrivacyPoints({required this.hue});
  final ModuleHue hue;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final points = [
      (Icons.lock_rounded, l10n.onboardingPrivatePointDevice),
      (Icons.person_off_rounded, l10n.onboardingPrivatePointAccount),
      (Icons.visibility_off_rounded, l10n.onboardingPrivatePointTracking),
    ];
    return LuxCard(
      child: Column(
        children: [
          for (final (icon, text) in points)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: Space.xs),
              child: Row(
                children: [
                  IconOrb(icon: icon, hue: hue, size: 36, glow: false),
                  const SizedBox(width: Space.md),
                  Expanded(child: Text(text, style: context.text.bodyLarge)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _RemindersToggle extends ConsumerWidget {
  const _RemindersToggle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final on = ref.watch(settingsProvider.select((s) => s.notificationsEnabled));
    return LuxCard(
      padding: const EdgeInsets.symmetric(vertical: Space.xs),
      child: SwitchListTile(
        key: const ValueKey('onboard-reminders'),
        secondary: const Icon(Icons.notifications_rounded),
        title: Text(context.l10n.settingsNotificationsEnable),
        value: on,
        onChanged: (v) =>
            ref.read(settingsProvider.notifier).update((c) => c.copyWith(notificationsEnabled: v)),
      ),
    );
  }
}
