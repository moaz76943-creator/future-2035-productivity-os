import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../settings/application/settings_providers.dart';
import '../application/assistant_providers.dart';
import '../data/remote_assistant.dart';
import 'assistant_tools.dart';

Future<void> showProviderSettings(BuildContext context) =>
    showToolSheet(context, const ProviderSettingsSheet());

/// Configures the optional OpenAI-compatible provider. The endpoint and
/// model live in settings; the API key only in secure storage.
class ProviderSettingsSheet extends ConsumerStatefulWidget {
  const ProviderSettingsSheet({super.key});
  @override
  ConsumerState<ProviderSettingsSheet> createState() => _ProviderSettingsSheetState();
}

class _ProviderSettingsSheetState extends ConsumerState<ProviderSettingsSheet> {
  final _form = GlobalKey<FormState>();
  late final TextEditingController _endpoint;
  late final TextEditingController _model;
  final _key = TextEditingController();
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    final s = ref.read(settingsProvider);
    _endpoint = TextEditingController(text: s.assistantEndpoint);
    _model = TextEditingController(text: s.assistantModel);
  }

  @override
  void dispose() {
    _endpoint.dispose();
    _model.dispose();
    _key.dispose();
    super.dispose();
  }

  Future<void> _save(bool hasKey) async {
    if (!(_form.currentState?.validate() ?? false)) return;
    final l10n = context.l10n;
    setState(() => _busy = true);
    try {
      final remote = ref.read(remoteAssistantProvider);
      if (_key.text.trim().isNotEmpty) await remote.saveKey(_key.text);
      final endpoint = _endpoint.text.trim();
      final model = _model.text.trim();
      await ref.read(settingsProvider.notifier).update((s) {
        final sameProvider =
            AssistantEndpoint.host(s.assistantEndpoint) == AssistantEndpoint.host(endpoint);
        return s.copyWith(
          assistantEndpoint: endpoint,
          assistantModel: model,
          // Consent is tied to one provider: a new host asks again.
          assistantRemoteConsent: sameProvider && s.assistantRemoteConsent,
        );
      });
      ref.invalidate(assistantHasKeyProvider);
      _key.clear();
      if (!mounted) return;
      showMessage(context, l10n.assistantProviderSaved);
      Navigator.of(context).pop();
    } on Object {
      if (mounted) showMessage(context, l10n.errorSaveFailed);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _remove() async {
    final l10n = context.l10n;
    final ok = await confirmAction(
      context,
      title: l10n.assistantRemoveProvider,
      message: l10n.assistantRemoveProviderConfirm,
      confirmLabel: l10n.assistantRemoveProvider,
      destructive: true,
    );
    if (!ok || !mounted) return;
    await ref.read(remoteAssistantProvider).deleteKey();
    await ref
        .read(settingsProvider.notifier)
        .update(
          (s) =>
              s.copyWith(assistantEndpoint: '', assistantModel: '', assistantRemoteConsent: false),
        );
    ref.invalidate(assistantHasKeyProvider);
    if (!mounted) return;
    showMessage(context, l10n.assistantProviderRemoved);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final hasKey = ref.watch(assistantHasKeyProvider).value ?? false;
    final settings = ref.watch(settingsProvider);
    final hasProvider = hasKey || settings.assistantEndpoint.isNotEmpty;
    return Form(
      key: _form,
      child: ToolSheetFrame(
        title: l10n.assistantProviderTitle,
        footer: FilledButton(
          onPressed: _busy ? null : () => _save(hasKey),
          child: Text(l10n.actionSave),
        ),
        children: [
          Text(l10n.assistantProviderHint, style: context.text.bodySmall),
          const SizedBox(height: Space.md),
          TextFormField(
            key: const ValueKey('assistant-endpoint'),
            controller: _endpoint,
            keyboardType: TextInputType.url,
            autocorrect: false,
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
              labelText: l10n.assistantEndpoint,
              helperText: l10n.assistantEndpointHelp,
              helperMaxLines: 2,
            ),
            validator: (v) => AssistantEndpoint.isValid(v ?? '') ? null : l10n.assistantHttpsOnly,
          ),
          const SizedBox(height: Space.md),
          TextFormField(
            controller: _model,
            autocorrect: false,
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(labelText: l10n.assistantModel),
          ),
          const SizedBox(height: Space.md),
          TextFormField(
            key: const ValueKey('assistant-key'),
            controller: _key,
            obscureText: true,
            autocorrect: false,
            enableSuggestions: false,
            textDirection: TextDirection.ltr,
            decoration: InputDecoration(
              labelText: l10n.assistantApiKey,
              helperText: hasKey ? l10n.assistantApiKeyKeep : l10n.assistantApiKeyStored,
              helperMaxLines: 2,
              prefixIcon: const Icon(Icons.key_rounded),
            ),
            validator: (v) =>
                !hasKey && (v ?? '').trim().isEmpty ? l10n.assistantApiKeyRequired : null,
          ),
          const SizedBox(height: Space.sm),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            value: !settings.assistantRemoteConsent,
            title: Text(l10n.assistantAskEveryTime),
            onChanged: (ask) => ref
                .read(settingsProvider.notifier)
                .update((s) => s.copyWith(assistantRemoteConsent: !ask)),
          ),
          if (hasProvider) ...[
            const SizedBox(height: Space.sm),
            OutlinedButton.icon(
              onPressed: _busy ? null : _remove,
              style: OutlinedButton.styleFrom(foregroundColor: context.lux.danger),
              icon: const Icon(Icons.delete_outline_rounded),
              label: Text(l10n.assistantRemoveProvider),
            ),
          ],
        ],
      ),
    );
  }
}
