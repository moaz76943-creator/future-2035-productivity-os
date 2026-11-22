import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../settings/application/settings_providers.dart';
import '../../settings/data/settings_repository.dart';
import '../application/prayer_providers.dart';
import '../domain/prayer_calc.dart';
import '../domain/prayer_cities.dart';
import 'prayer_labels.dart';

Future<void> showPrayerSheet(BuildContext context) => showModalBottomSheet<void>(
  context: context,
  showDragHandle: true,
  isScrollControlled: true,
  useSafeArea: true,
  builder: (_) => const _PrayerSheet(),
);

class _PrayerSheet extends ConsumerWidget {
  const _PrayerSheet();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final fmt = context.fmt;
    final s = ref.watch(settingsProvider.select((s) => s.prayer));
    final times = ref.watch(todayPrayersProvider);
    final now = ref.watch(clockProvider).now();
    final city = prayerCityById(s.city);
    final lang = context.language.tag;
    void set(PrayerSettings Function(PrayerSettings) f) =>
        ref.read(settingsProvider.notifier).update((c) => c.copyWith(prayer: f(c.prayer)));
    final next = times == null
        ? null
        : fivePrayers.where((p) => times[p]!.isAfter(now)).firstOrNull;

    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.lg),
      children: [
        Text(l10n.prayerTitle, style: context.text.titleLarge),
        const SizedBox(height: Space.xs),
        if (city == null) ...[
          Text(
            l10n.prayerOffHint,
            style: context.text.bodyMedium?.copyWith(color: context.lux.ink2),
          ),
          const SizedBox(height: Space.md),
          FilledButton.icon(
            key: const Key('prayerChooseCity'),
            icon: const Icon(Icons.location_city_rounded),
            label: Text(l10n.prayerChooseCity),
            onPressed: () async {
              final c = await _pickCity(context, lang);
              if (c != null) set((p) => p.copyWith(city: c.id, method: ''));
            },
          ),
        ] else ...[
          for (final p in Prayer.values)
            Container(
              key: Key('prayer_${p.name}'),
              margin: const EdgeInsets.symmetric(vertical: 2),
              padding: const EdgeInsets.symmetric(horizontal: Space.sm, vertical: Space.xs),
              decoration: BoxDecoration(
                color: p == next ? ModuleHue.focus.a.withValues(alpha: 0.12) : null,
                borderRadius: BorderRadius.circular(Radii.md),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      prayerName(l10n, p),
                      style: p == Prayer.sunrise
                          ? context.text.bodyMedium?.copyWith(color: context.lux.ink2)
                          : context.text.titleSmall,
                    ),
                  ),
                  Text(fmt.time(times![p]!), style: context.text.titleSmall),
                ],
              ),
            ),
          const Divider(height: Space.lg),
          ListTile(
            key: const Key('prayerCity'),
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.location_city_rounded),
            title: Text(l10n.prayerCity),
            subtitle: Text(city.name(lang)),
            onTap: () async {
              final c = await _pickCity(context, lang);
              if (c != null) set((p) => p.copyWith(city: c.id, method: ''));
            },
          ),
          PopupMenuButton<PrayerMethod>(
            key: const Key('prayerMethod'),
            onSelected: (m) => set((p) => p.copyWith(method: m == city.method ? '' : m.name)),
            itemBuilder: (_) => [
              for (final m in PrayerMethod.values)
                PopupMenuItem(value: m, child: Text(prayerMethodName(l10n, m))),
            ],
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.tune_rounded),
              title: Text(l10n.prayerMethod),
              subtitle: Text(
                prayerMethodName(
                  l10n,
                  s.method.isEmpty ? city.method : PrayerMethod.byName(s.method),
                ),
              ),
            ),
          ),
          SwitchListTile(
            key: const Key('prayerHanafi'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.prayerHanafiAsr),
            value: s.hanafiAsr,
            onChanged: (v) => set((p) => p.copyWith(hanafiAsr: v)),
          ),
          SwitchListTile(
            key: const Key('prayerReminders'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.prayerReminders),
            value: s.reminders,
            onChanged: (v) => set((p) => p.copyWith(reminders: v)),
          ),
          SwitchListTile(
            key: const Key('prayerPauseFocus'),
            contentPadding: EdgeInsets.zero,
            title: Text(l10n.prayerPauseFocus),
            subtitle: Text(l10n.prayerPauseFocusHint),
            value: s.pauseFocus,
            onChanged: (v) => set((p) => p.copyWith(pauseFocus: v)),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: TextButton(
              key: const Key('prayerTurnOff'),
              onPressed: () => set((p) => p.copyWith(city: '')),
              child: Text(l10n.prayerTurnOff),
            ),
          ),
          Text(
            l10n.prayerAccuracyNote,
            style: context.text.bodySmall?.copyWith(color: context.lux.ink3),
          ),
        ],
      ],
    );
  }
}

Future<PrayerCity?> _pickCity(BuildContext context, String lang) =>
    showModalBottomSheet<PrayerCity>(
      context: context,
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _CityPicker(lang: lang),
    );

class _CityPicker extends StatefulWidget {
  const _CityPicker({required this.lang});
  final String lang;

  @override
  State<_CityPicker> createState() => _CityPickerState();
}

class _CityPickerState extends State<_CityPicker> {
  var _q = '';

  @override
  Widget build(BuildContext context) {
    final q = _q.trim().toLowerCase();
    final list = [
      for (final c in prayerCities)
        if (q.isEmpty || c.en.toLowerCase().contains(q) || c.ar.contains(q)) c,
    ]..sort((a, b) => a.name(widget.lang).compareTo(b.name(widget.lang)));
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.75,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Space.page),
            child: TextField(
              key: const Key('prayerCitySearch'),
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search_rounded),
                hintText: context.l10n.prayerCitySearch,
              ),
              onChanged: (v) => setState(() => _q = v),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (_, i) => ListTile(
                key: Key('city_${list[i].en}'),
                title: Text(list[i].name(widget.lang)),
                onTap: () => Navigator.of(context).pop(list[i]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
