import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../app/localization/app_format.dart';
import '../../../../core/design_system/app_theme.dart';
import '../../../../core/design_system/components/states.dart';
import '../../../../core/design_system/tokens.dart';
import '../../../../core/speech/tts_service.dart';
import '../../domain/world_languages.dart';

/// Language tags the phone can speak now (from the speech engine).
final phoneLanguagesProvider = FutureProvider.autoDispose<List<String>>(
  (ref) => ref.read(ttsServiceProvider).languages(),
);

/// Display name for a stored language tag; '' is [appLanguage].
String languageLabelOf(String tag, String appLanguage) =>
    tag.isEmpty ? appLanguage : languageDisplayName(tag);

/// A button showing the chosen language; opens [pickLanguage].
class LanguageButton extends StatelessWidget {
  const LanguageButton({
    super.key,
    required this.label,
    required this.value,
    required this.appLanguage,
    required this.onChanged,
  });

  final String label;
  final String value;
  final String appLanguage;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) => InkWell(
    borderRadius: BorderRadius.circular(Radii.md),
    onTap: () async {
      final picked = await pickLanguage(context, current: value, appLanguage: appLanguage);
      if (picked != null) onChanged(picked);
    },
    child: InputDecorator(
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: const Icon(Icons.expand_more_rounded),
      ),
      child: Text(
        languageLabelOf(value, appLanguage),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

/// Every language, with those the phone can already speak first, plus a way
/// to download more voices. Returns the chosen tag ('' = app language) or null.
Future<String?> pickLanguage(
  BuildContext context, {
  required String current,
  required String appLanguage,
}) => showModalBottomSheet<String>(
  useRootNavigator: true,
  context: context,
  isScrollControlled: true,
  useSafeArea: true,
  showDragHandle: true,
  builder: (_) => _LanguageSheet(current: current, appLanguage: appLanguage),
);

class _LanguageSheet extends ConsumerStatefulWidget {
  const _LanguageSheet({required this.current, required this.appLanguage});
  final String current;
  final String appLanguage;

  @override
  ConsumerState<_LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends ConsumerState<_LanguageSheet> {
  final _search = TextEditingController();
  String _query = '';
  String? _error;

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  Future<void> _openSettings() async {
    final ok = await ref.read(ttsServiceProvider).openSettings();
    if (!mounted) return;
    setState(() => _error = ok ? null : context.l10n.speechSettingsFailed);
  }

  bool _matches(String tag) => _query.isEmpty || languageSearchText(tag).contains(_query);

  Widget _tile(String tag, {required bool spoken, String keyPrefix = 'lang_'}) {
    final l10n = context.l10n;
    final selected = tag == widget.current;
    return ListTile(
      key: Key('$keyPrefix$tag'),
      title: Text(tag.isEmpty ? widget.appLanguage : languageDisplayName(tag)),
      subtitle: tag.isEmpty ? null : Text(spoken ? tag : '$tag · ${l10n.speechVoiceMissing}'),
      leading: Icon(
        spoken ? Icons.record_voice_over_outlined : Icons.voice_over_off_outlined,
        color: spoken ? context.lux.success : context.lux.ink3,
      ),
      trailing: selected ? Icon(Icons.check_rounded, color: context.lux.ink) : null,
      selected: selected,
      onTap: () => Navigator.of(context).pop(tag),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final phone = ref.watch(phoneLanguagesProvider).value ?? const <String>[];
    final phoneCodes = {for (final t in phone) languageCode(t)};
    final onPhone = phone.where(_matches).toList()
      ..sort((a, b) => languageDisplayName(a).compareTo(languageDisplayName(b)));
    final all = worldLanguages.keys.where(_matches).toList()
      ..sort((a, b) => worldLanguages[a]!.compareTo(worldLanguages[b]!));
    // A plain, bounded sheet: the list always starts at the top and fills a
    // fixed share of the screen, lifted above the keyboard, so languages are
    // never pushed down out of sight.
    final media = MediaQuery.of(context);
    final height = (media.size.height - media.viewInsets.bottom) * 0.82;
    return AnimatedPadding(
      duration: const Duration(milliseconds: 150),
      padding: EdgeInsets.only(bottom: media.viewInsets.bottom),
      child: SizedBox(
        height: height,
        child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xs),
            child: TextField(
              key: const Key('langSearch'),
              controller: _search,
              onChanged: (v) => setState(() => _query = v.trim().toLowerCase()),
              decoration: InputDecoration(
                hintText: l10n.speechSearchLanguage,
                prefixIcon: const Icon(Icons.search_rounded),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              primary: false,
              children: [
                if (_query.isEmpty) _tile('', spoken: true),
                if (onPhone.isNotEmpty) ...[
                  SectionHeader(title: l10n.speechOnPhone),
                  for (final t in onPhone) _tile(t, spoken: true, keyPrefix: 'langPhone_'),
                ],
                SectionHeader(title: l10n.speechAllLanguages),
                for (final t in all) _tile(t, spoken: phoneCodes.contains(t)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(Space.page, Space.md, Space.page, Space.lg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        l10n.speechGetVoicesHint,
                        style: context.text.bodySmall?.copyWith(color: context.lux.ink2),
                      ),
                      const SizedBox(height: Space.xs),
                      OutlinedButton.icon(
                        key: const Key('ttsOpenSettings'),
                        onPressed: _openSettings,
                        icon: const Icon(Icons.download_rounded),
                        label: Text(l10n.speechGetVoices),
                      ),
                      if (_error != null)
                        Padding(
                          padding: const EdgeInsets.only(top: Space.xs),
                          child: Text(
                            _error!,
                            key: const Key('ttsSettingsError'),
                            style: context.text.bodySmall?.copyWith(color: context.lux.danger),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
