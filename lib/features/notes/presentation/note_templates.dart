import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../core/design_system/tokens.dart';
import '../../../l10n/gen/app_localizations.dart';

/// A ready structure for a new note.
class NoteTemplate {
  const NoteTemplate(this.id, this.icon, this.name, this.body);
  final String id;
  final IconData icon;
  final String Function(AppLocalizations) name;

  /// Note markdown (headings, check boxes) in the app language.
  final String Function(AppLocalizations) body;
}

final noteTemplates = <NoteTemplate>[
  NoteTemplate('lecture', Icons.school_outlined, (l) => l.tplLecture, (l) => l.tplLectureBody),
  NoteTemplate('book', Icons.menu_book_outlined, (l) => l.tplBook, (l) => l.tplBookBody),
  NoteTemplate('journal', Icons.wb_sunny_outlined, (l) => l.tplJournal, (l) => l.tplJournalBody),
  NoteTemplate('week', Icons.view_week_outlined, (l) => l.tplWeek, (l) => l.tplWeekBody),
];

/// Template chips under the title of an empty note. They disappear as soon
/// as anything is written, so they never get in the way.
class NoteTemplatesRow extends StatelessWidget {
  const NoteTemplatesRow({required this.title, required this.body, super.key});
  final TextEditingController title;
  final TextEditingController body;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ListenableBuilder(
      listenable: Listenable.merge([title, body]),
      builder: (_, _) {
        if (body.text.trim().isNotEmpty) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsets.only(top: Space.xs),
          child: Semantics(
            container: true,
            label: l10n.tplHint,
            child: Wrap(
              spacing: Space.xs,
              runSpacing: Space.xs,
              children: [
                for (final t in noteTemplates)
                  ActionChip(
                    key: Key('template_${t.id}'),
                    avatar: Icon(t.icon, size: 18),
                    label: Text(t.name(l10n)),
                    onPressed: () {
                      if (title.text.trim().isEmpty) title.text = t.name(l10n);
                      final text = t.body(l10n);
                      body.value = TextEditingValue(
                        text: text,
                        selection: TextSelection.collapsed(offset: text.indexOf('\n') + 1),
                      );
                    },
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
