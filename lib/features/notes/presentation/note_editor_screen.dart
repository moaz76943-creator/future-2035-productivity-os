import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';

import '../../../app/localization/app_format.dart';
import '../../../app/routing/routes.dart';
import '../../../core/database/app_database.dart';
import '../../../core/design_system/app_theme.dart';
import '../../../core/design_system/components/indicators.dart';
import '../../../core/design_system/components/states.dart';
import '../../../core/design_system/components/surfaces.dart';
import '../../../core/design_system/tokens.dart';
import '../../../core/providers/core_providers.dart';
import '../../../core/time/clock.dart';
import '../../../shared/widgets/dialogs.dart';
import '../../../shared/widgets/task_picker.dart';
import '../../projects/application/projects_providers.dart';
import '../application/note_text.dart';
import '../application/notes_providers.dart';
import '../data/notes_repository.dart';
import 'markdown_preview.dart';
import 'note_actions.dart';

enum NoteSaveStatus { saved, unsaved, saving, failed }

/// Markdown note editor with debounced autosave, preview, backlinks,
/// linked tasks, project and notebook links.
class NoteEditorScreen extends ConsumerStatefulWidget {
  const NoteEditorScreen({super.key, required this.noteId});
  final String noteId;

  /// Delay between the last keystroke and the automatic save.
  static const autosaveDelay = Duration(milliseconds: 800);

  @override
  ConsumerState<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends ConsumerState<NoteEditorScreen> with WidgetsBindingObserver {
  late final NotesRepository _repo;
  final _title = TextEditingController();
  final _body = TextEditingController();
  final _bodyFocus = FocusNode();

  bool _loaded = false;
  bool _missing = false;
  bool _preview = false;
  bool _deleted = false;
  NoteSaveStatus _status = NoteSaveStatus.saved;
  String _savedTitle = '';
  String _savedBody = '';
  DateTime? _savedAt;
  Timer? _debounce;
  bool _inFlight = false;
  bool _pending = false;

  bool get _dirty => _title.text != _savedTitle || _body.text != _savedBody;

  @override
  void initState() {
    super.initState();
    _repo = ref.read(notesRepositoryProvider);
    WidgetsBinding.instance.addObserver(this);
    _load();
  }

  Future<void> _load() async {
    NoteRow? note;
    try {
      note = await _repo.byId(widget.noteId);
    } catch (_) {
      note = null;
    }
    if (!mounted) return;
    setState(() {
      _loaded = true;
      if (note == null || note.deletedAt != null) {
        _missing = true;
        return;
      }
      _savedTitle = note.title;
      _savedBody = note.body;
      _savedAt = note.updatedAt;
      _title.text = note.title;
      _body.text = note.body;
    });
    _title.addListener(_onChanged);
    _body.addListener(_onChanged);
  }

  void _onChanged() {
    if (!_dirty) {
      if (_status == NoteSaveStatus.unsaved) setState(() => _status = NoteSaveStatus.saved);
      return;
    }
    _debounce?.cancel();
    _debounce = Timer(NoteEditorScreen.autosaveDelay, _flush);
    if (_status != NoteSaveStatus.unsaved && !_inFlight) {
      setState(() => _status = NoteSaveStatus.unsaved);
    }
  }

  /// Persists the current text if it differs from what was last saved.
  /// Saves are serialized; edits made during a save are saved afterwards.
  Future<void> _flush() async {
    _debounce?.cancel();
    if (!_loaded || _missing || _deleted || !_dirty) return;
    if (_inFlight) {
      _pending = true;
      return;
    }
    _inFlight = true;
    final title = _title.text;
    final body = _body.text;
    if (mounted) setState(() => _status = NoteSaveStatus.saving);
    try {
      final at = await _repo.save(widget.noteId, title: title, body: body);
      _savedTitle = title;
      _savedBody = body;
      _savedAt = at;
      if (mounted) {
        setState(() => _status = _dirty ? NoteSaveStatus.unsaved : NoteSaveStatus.saved);
      }
    } catch (_) {
      if (mounted) setState(() => _status = NoteSaveStatus.failed);
      _pending = false;
    } finally {
      _inFlight = false;
    }
    if (_pending || (_dirty && _status != NoteSaveStatus.failed)) {
      _pending = false;
      await _flush();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) _flush();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _debounce?.cancel();
    if (_loaded && !_missing && !_deleted) {
      final title = _title.text;
      final body = _body.text;
      if (title.trim().isEmpty &&
          body.trim().isEmpty &&
          _savedTitle.trim().isEmpty &&
          _savedBody.trim().isEmpty) {
        // An untouched blank note leaves nothing behind.
        _repo.purge(widget.noteId).catchError((_) {});
      } else if (_dirty) {
        _repo.save(widget.noteId, title: title, body: body).catchError((_) => DateTime(0));
      }
    }
    _title.dispose();
    _body.dispose();
    _bodyFocus.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------- actions

  void _apply(TextEditingValue Function(TextEditingValue) transform) {
    _body.value = transform(_body.value);
    _bodyFocus.requestFocus();
  }

  void _toggleCheckbox(int line) {
    final next = NoteText.toggleCheckbox(_body.text, line);
    if (next == _body.text) return;
    _body.value = TextEditingValue(
      text: next,
      selection: TextSelection.collapsed(offset: next.length),
    );
    _flush();
  }

  Future<void> _openLink(String title) async {
    await _flush();
    final found = await _repo.resolveLinks('[[$title]]');
    if (!mounted) return;
    final target = found.where((n) => n.id != widget.noteId).firstOrNull;
    if (target != null) {
      context.push(Routes.note(target.id));
      return;
    }
    final l10n = context.l10n;
    ScaffoldMessenger.maybeOf(context)
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(l10n.notesLinkMissing(title)),
          action: SnackBarAction(
            label: l10n.actionCreate,
            onPressed: () async {
              final id = await _repo.create(title: title);
              if (mounted) context.push(Routes.note(id));
            },
          ),
        ),
      );
  }

  Future<void> _delete() async {
    await _flush();
    await _repo.softDelete(widget.noteId);
    _deleted = true;
    if (!mounted) return;
    final messenger = ScaffoldMessenger.maybeOf(context);
    final l10n = context.l10n;
    final repo = _repo;
    final id = widget.noteId;
    if (Navigator.of(context).canPop()) Navigator.of(context).pop();
    messenger
      ?..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(l10n.deletedItem),
          action: SnackBarAction(label: l10n.actionUndo, onPressed: () => repo.restore(id)),
        ),
      );
  }

  Future<void> _moveNotebook(NoteRow note) async {
    final picked = await pickNotebook(context, ref, current: note.notebookId);
    if (picked == null) return;
    await _repo.moveTo(note.id, notebookId: picked.value, projectId: note.projectId);
  }

  Future<void> _moveProject(NoteRow note) async {
    final picked = await pickProject(context, current: note.projectId);
    if (picked == null) return;
    await _repo.moveTo(note.id, notebookId: note.notebookId, projectId: picked.value);
  }

  Future<void> _linkTask(List<TaskRow> linked) async {
    final task = await pickTask(context, exclude: {for (final t in linked) t.id});
    if (task == null) return;
    await _repo.linkTask(widget.noteId, task.id);
  }

  // ------------------------------------------------------------------- build

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    if (!_loaded) {
      return Scaffold(
        appBar: AppBar(),
        body: LoadingState(label: l10n.stateLoading),
      );
    }
    if (_missing) {
      return Scaffold(
        appBar: AppBar(),
        body: EmptyState(
          icon: Icons.note_alt_outlined,
          title: l10n.notesNotFound,
          message: l10n.notesEmptyMessage,
          hue: ModuleHue.notes,
        ),
      );
    }
    final note = ref.watch(noteByIdProvider(widget.noteId)).value;
    final hue = ModuleHue.notes;
    final lux = context.lux;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            tooltip: _preview ? l10n.notesWrite : l10n.actionPreview,
            isSelected: _preview,
            icon: Icon(_preview ? Icons.edit_rounded : Icons.visibility_outlined),
            onPressed: () {
              setState(() => _preview = !_preview);
              if (_preview) {
                FocusScope.of(context).unfocus();
                _flush();
              }
            },
          ),
          if (note != null) ...[
            IconButton(
              tooltip: note.pinned ? l10n.actionUnpin : l10n.actionPin,
              icon: Icon(
                note.pinned ? Icons.push_pin : Icons.push_pin_outlined,
                color: note.pinned ? hue.a : null,
              ),
              onPressed: () => _repo.setFlags(note.id, pinned: !note.pinned),
            ),
            IconButton(
              tooltip: note.favorite ? l10n.noteUnfavorite : l10n.noteFavorite,
              icon: Icon(
                note.favorite ? Icons.star_rounded : Icons.star_outline_rounded,
                color: note.favorite ? Palette.champagne : null,
              ),
              onPressed: () => _repo.setFlags(note.id, favorite: !note.favorite),
            ),
            PopupMenuButton<String>(
              tooltip: l10n.actionMore,
              onSelected: (v) async {
                switch (v) {
                  case 'archive':
                    final archive = !note.archived;
                    await _repo.setFlags(note.id, archived: archive);
                    if (context.mounted) {
                      showUndoSnack(
                        context,
                        archive ? l10n.notesArchivedSnack : l10n.notesUnarchivedSnack,
                        onUndo: () => _repo.setFlags(note.id, archived: !archive),
                      );
                    }
                  case 'move':
                    await _moveNotebook(note);
                  case 'delete':
                    await _delete();
                }
              },
              itemBuilder: (_) => [
                PopupMenuItem(
                  value: 'archive',
                  child: Text(note.archived ? l10n.actionUnarchive : l10n.actionArchive),
                ),
                PopupMenuItem(value: 'move', child: Text(l10n.noteMoveTo)),
                PopupMenuItem(
                  value: 'delete',
                  child: Text(l10n.actionDelete, style: TextStyle(color: lux.danger)),
                ),
              ],
            ),
          ],
          const SizedBox(width: Space.xxs),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
              padding: const EdgeInsets.fromLTRB(Space.page, 0, Space.page, Space.xxxl),
              children: [
                _DirectionalField(
                  controller: _title,
                  builder: (dir) => TextField(
                    key: const ValueKey('note-title'),
                    controller: _title,
                    textDirection: dir,
                    maxLines: null,
                    textInputAction: TextInputAction.next,
                    onSubmitted: (_) => _bodyFocus.requestFocus(),
                    style: context.text.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: lux.ink,
                    ),
                    decoration: InputDecoration(
                      hintText: l10n.noteTitleHint,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      filled: false,
                      contentPadding: const EdgeInsets.symmetric(vertical: Space.xs),
                    ),
                  ),
                ),
                _MetaRow(
                  status: _status,
                  savedAt: _savedAt,
                  body: _body,
                  note: note,
                  onRetry: _flush,
                  onNotebook: note == null ? null : () => _moveNotebook(note),
                  onProject: note == null ? null : () => _moveProject(note),
                ),
                const SizedBox(height: Space.sm),
                if (_preview)
                  ValueListenableBuilder(
                    valueListenable: _body,
                    builder: (_, v, _) => MarkdownPreview(
                      body: v.text,
                      accent: hue.a,
                      onToggleCheckbox: _toggleCheckbox,
                      onOpenLink: _openLink,
                    ),
                  )
                else
                  _DirectionalField(
                    controller: _body,
                    builder: (dir) => TextField(
                      key: const ValueKey('note-body'),
                      controller: _body,
                      focusNode: _bodyFocus,
                      textDirection: dir,
                      minLines: 10,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textCapitalization: TextCapitalization.sentences,
                      style: context.text.bodyLarge?.copyWith(height: 1.55, color: lux.ink),
                      decoration: InputDecoration(
                        hintText: l10n.noteBodyHint,
                        hintMaxLines: 3,
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        filled: false,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                const SizedBox(height: Space.lg),
                _TagsSection(noteId: widget.noteId),
                _BacklinksSection(noteId: widget.noteId, title: note?.title ?? _savedTitle),
                _LinkedTasksSection(noteId: widget.noteId, onLink: _linkTask),
              ],
            ),
          ),
          if (!_preview) _FormatToolbar(onApply: _apply),
        ],
      ),
    );
  }
}

/// Rebuilds [builder] with the direction of the field's first strong
/// character, falling back to the ambient direction.
class _DirectionalField extends StatelessWidget {
  const _DirectionalField({required this.controller, required this.builder});
  final TextEditingController controller;
  final Widget Function(TextDirection dir) builder;

  @override
  Widget build(BuildContext context) {
    final ambient = Directionality.of(context);
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (_, v, _) => builder(NoteText.firstStrongDirection(v.text) ?? ambient),
    );
  }
}

class _MetaRow extends ConsumerWidget {
  const _MetaRow({
    required this.status,
    required this.savedAt,
    required this.body,
    required this.note,
    required this.onRetry,
    required this.onNotebook,
    required this.onProject,
  });
  final NoteSaveStatus status;
  final DateTime? savedAt;
  final TextEditingController body;
  final NoteRow? note;
  final VoidCallback onRetry;
  final VoidCallback? onNotebook;
  final VoidCallback? onProject;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final t = context.text;
    final notebooks = ref.watch(notebooksProvider).value ?? const <NotebookRow>[];
    final notebook = notebooks.where((n) => n.id == note?.notebookId).firstOrNull;
    final projects = ref.watch(projectsProvider(false)).value ?? const <ProjectRow>[];
    final project = projects.where((p) => p.id == note?.projectId).firstOrNull;
    final now = ref.watch(clockProvider).now();

    final (label, color, icon) = switch (status) {
      NoteSaveStatus.saved => (l10n.stateSaved, lux.success, Icons.cloud_done_outlined),
      NoteSaveStatus.saving => (l10n.stateSaving, lux.ink3, Icons.sync_rounded),
      NoteSaveStatus.unsaved => (l10n.stateUnsaved, lux.warning, Icons.edit_outlined),
      NoteSaveStatus.failed => (l10n.errorSaveFailed, lux.danger, Icons.error_outline_rounded),
    };
    Widget chip = Semantics(
      liveRegion: true,
      button: status == NoteSaveStatus.failed,
      hint: status == NoteSaveStatus.failed ? l10n.actionRetry : null,
      child: LuxPill(label: label, color: color, icon: icon),
    );
    if (status == NoteSaveStatus.failed) {
      chip = InkWell(
        borderRadius: BorderRadius.circular(Radii.pill),
        onTap: onRetry,
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: kMinTouchTarget),
          child: Align(widthFactor: 1, child: chip),
        ),
      );
    }
    final at = savedAt?.toLocal();
    final style = t.labelMedium?.copyWith(color: lux.ink3);

    return Wrap(
      spacing: Space.xs,
      runSpacing: Space.xxs,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        KeyedSubtree(key: const ValueKey('note-save-status'), child: chip),
        if (at != null)
          Text(
            l10n.noteEdited(
              Days.sameDay(at, now)
                  ? l10n.notesUpdatedAt(context.fmt.relativeDay(at, now), context.fmt.time(at))
                  : context.fmt.relativeDay(at, now),
            ),
            style: style,
          ),
        ValueListenableBuilder(
          valueListenable: body,
          builder: (_, v, _) => Text(l10n.noteWordCount(NoteText.wordCount(v.text)), style: style),
        ),
        ActionChip(
          avatar: notebook == null
              ? const Icon(Icons.folder_outlined, size: 18)
              : GlowDot(color: Color(notebook.color)),
          label: Text(notebook?.name ?? l10n.notesNoNotebook),
          tooltip: l10n.noteMoveTo,
          onPressed: onNotebook,
        ),
        ActionChip(
          avatar: project == null
              ? const Icon(Icons.workspaces_outline, size: 18)
              : GlowDot(color: Color(project.color)),
          label: Text(project?.name ?? l10n.noProject),
          tooltip: l10n.noteLinkProject,
          onPressed: onProject,
        ),
      ],
    );
  }
}

class _FormatToolbar extends StatelessWidget {
  const _FormatToolbar({required this.onApply});
  final void Function(TextEditingValue Function(TextEditingValue)) onApply;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final lux = context.lux;
    final items = <(IconData, String, TextEditingValue Function(TextEditingValue))>[
      (Icons.title_rounded, l10n.noteFormatHeading, NoteText.heading),
      (Icons.format_bold_rounded, l10n.noteFormatBold, NoteText.bold),
      (Icons.format_italic_rounded, l10n.noteFormatItalic, NoteText.italic),
      (Icons.format_list_bulleted_rounded, l10n.noteFormatList, NoteText.bulletList),
      (Icons.checklist_rounded, l10n.noteFormatChecklist, NoteText.checklist),
      (Icons.data_array_rounded, l10n.noteFormatLink, NoteText.wikiLink),
    ];
    return Semantics(
      container: true,
      label: l10n.notesFormatting,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: lux.surface,
          border: Border(top: BorderSide(color: lux.hairline)),
        ),
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: Space.xs),
            child: Row(
              children: [
                for (final (icon, label, fn) in items)
                  IconButton(
                    tooltip: label,
                    icon: Icon(icon),
                    color: lux.ink2,
                    onPressed: () => onApply(fn),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TagsSection extends ConsumerWidget {
  const _TagsSection({required this.noteId});
  final String noteId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final tags = ref.watch(noteTagsProvider(noteId)).value ?? const <String>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.notesTags,
          padding: const EdgeInsets.only(top: Space.md, bottom: Space.xs),
        ),
        if (tags.isEmpty)
          Text(l10n.notesTagsHint, style: context.text.bodySmall?.copyWith(color: context.lux.ink3))
        else
          Wrap(
            spacing: Space.xs,
            runSpacing: Space.xs,
            children: [
              for (final t in tags) LuxPill(label: l10n.notesTagFilter(t), color: Palette.emerald),
            ],
          ),
      ],
    );
  }
}

class _BacklinksSection extends ConsumerWidget {
  const _BacklinksSection({required this.noteId, required this.title});
  final String noteId;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final trimmed = title.trim();
    final links = trimmed.isEmpty
        ? const <NoteRow>[]
        : ref.watch(noteBacklinksProvider((id: noteId, title: trimmed))).value ?? const <NoteRow>[];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.noteBacklinks,
          padding: const EdgeInsets.only(top: Space.lg, bottom: Space.xs),
        ),
        if (links.isEmpty)
          Text(
            trimmed.isEmpty ? l10n.notesBacklinksNeedTitle : l10n.notesBacklinksEmpty(trimmed),
            style: context.text.bodySmall?.copyWith(color: lux.ink3),
          )
        else
          for (final n in links)
            Padding(
              padding: const EdgeInsets.only(bottom: Space.xs),
              child: LuxCard(
                elevated: false,
                accent: ModuleHue.notes.b,
                padding: const EdgeInsetsDirectional.fromSTEB(
                  Space.md,
                  Space.sm,
                  Space.sm,
                  Space.sm,
                ),
                onTap: () => context.push(Routes.note(n.id)),
                child: Row(
                  children: [
                    Icon(Icons.link_rounded, size: 18, color: ModuleHue.notes.b),
                    const SizedBox(width: Space.xs),
                    Expanded(
                      child: Text(
                        n.title.trim().isEmpty ? l10n.untitled : n.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.text.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
  }
}

class _LinkedTasksSection extends ConsumerWidget {
  const _LinkedTasksSection({required this.noteId, required this.onLink});
  final String noteId;
  final Future<void> Function(List<TaskRow> linked) onLink;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    final lux = context.lux;
    final tasks = ref.watch(noteLinkedTasksProvider(noteId)).value ?? const <TaskRow>[];
    final repo = ref.read(notesRepositoryProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          title: l10n.noteLinkedTasks,
          action: l10n.noteLinkTask,
          onAction: () => onLink(tasks),
          padding: const EdgeInsets.only(top: Space.lg, bottom: Space.xs),
        ),
        if (tasks.isEmpty)
          Text(l10n.notesLinkedTasksEmpty, style: context.text.bodySmall?.copyWith(color: lux.ink3))
        else
          for (final t in tasks)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                t.done ? Icons.check_circle_rounded : Icons.radio_button_unchecked_rounded,
                color: t.done ? lux.success : ModuleHue.tasks.a,
                semanticLabel: t.done ? l10n.notesTaskDone : null,
              ),
              title: Text(
                t.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: t.done
                    ? TextStyle(color: lux.ink3, decoration: TextDecoration.lineThrough)
                    : null,
              ),
              onTap: () => context.push(Routes.task(t.id)),
              trailing: IconButton(
                tooltip: l10n.actionUnlink,
                icon: const Icon(Icons.link_off_rounded),
                onPressed: () => repo.unlinkTask(noteId, t.id),
              ),
            ),
      ],
    );
  }
}
