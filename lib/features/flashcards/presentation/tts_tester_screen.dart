import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/speech/tts_service.dart';
import '../../../shared/widgets/module_scaffold.dart';
import '../application/flashcards_providers.dart';
import 'study_sheets.dart' show speechLanguageNames;

class TtsTesterScreen extends ConsumerStatefulWidget {
  const TtsTesterScreen({super.key});

  @override
  ConsumerState<TtsTesterScreen> createState() => _TtsTesterScreenState();
}

class _TtsTesterScreenState extends ConsumerState<TtsTesterScreen> {
  final _text = TextEditingController(text: 'Hello, this is a test of the native voice engine.');
  String? _selectedVoice;
  double _rate = 1.0;
  int _repeat = 1;
  List<TtsVoice> _voices = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadVoices();
  }

  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  Future<void> _loadVoices() async {
    final v = await ref.read(ttsServiceProvider).voices();
    if (mounted) {
      setState(() {
        _voices = v;
        _loading = false;
        if (_selectedVoice == null && v.isNotEmpty) {
          _selectedVoice = v.first.name;
        }
      });
    }
  }

  Future<void> _test() async {
    final tts = ref.read(ttsServiceProvider);
    final voice = _voices.where((v) => v.name == _selectedVoice).firstOrNull;
    await tts.speak(
      _text.text,
      voice: _selectedVoice,
      languageTag: voice?.localeTag,
      rate: _rate,
      repeat: _repeat,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ModuleScaffold(
      title: l10n.flashcardsTtsTester,
      hue: ModuleHue.flashcards,
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(Space.page),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _text,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: l10n.flashcardsTtsTestText,
                    alignLabelWithHint: true,
                  ),
                ),
                const SizedBox(height: Space.md),
                if (_loading)
                  const Center(child: CircularProgressIndicator())
                else if (_voices.isEmpty)
                  Text(l10n.flashcardsNoVoices, style: TextStyle(color: context.lux.error))
                else ...[
                  DropdownButtonFormField<String>(
                    value: _selectedVoice,
                    isExpanded: true,
                    decoration: InputDecoration(labelText: l10n.flashcardsVoice),
                    items: [
                      for (final v in _voices)
                        DropdownMenuItem(
                          value: v.name,
                          child: Text('${v.name} (${v.localeTag})'),
                        ),
                    ],
                    onChanged: (v) => setState(() => _selectedVoice = v),
                  ),
                  const SizedBox(height: Space.md),
                  Text('${l10n.flashcardsSpeed}: ${_rate.toStringAsFixed(1)}x'),
                  Slider(
                    value: _rate,
                    min: 0.5,
                    max: 2.0,
                    divisions: 15, // 0.1 steps
                    onChanged: (v) => setState(() => _rate = v),
                  ),
                  const SizedBox(height: Space.md),
                  Text('${l10n.flashcardsRepeatCount}: $_repeat'),
                  Slider(
                    value: _repeat.toDouble(),
                    min: 1,
                    max: 9,
                    divisions: 8,
                    onChanged: (v) => setState(() => _repeat = v.round()),
                  ),
                ],
                const SizedBox(height: Space.xl),
                FilledButton.icon(
                  onPressed: _voices.isEmpty ? null : _test,
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: Text(l10n.flashcardsTestVoice),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}