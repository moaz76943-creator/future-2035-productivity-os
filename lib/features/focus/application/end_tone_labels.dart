import '../../../l10n/gen/app_localizations.dart';
import '../domain/end_tone.dart';

String endToneName(AppLocalizations l10n, EndTone t) => switch (t) {
  EndTone.gentle => l10n.toneGentle,
  EndTone.beeps => l10n.toneBeeps,
  EndTone.drops => l10n.toneDrops,
  EndTone.wood => l10n.toneWood,
  EndTone.bird => l10n.toneBird,
  EndTone.stream => l10n.toneStream,
  EndTone.system => l10n.toneSystem,
};
