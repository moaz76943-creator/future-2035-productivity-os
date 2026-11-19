import 'package:flutter/widgets.dart' show Locale;

import '../../app/localization/app_locales.dart';
import '../../l10n/gen/app_localizations.dart';
import 'transfer_model.dart';

/// One exported/imported field of a record. The same list drives export and
/// import, so they cannot drift apart when fields are added or renamed.
class TransferField<T> {
  const TransferField(this.id, this.label, this.read);

  /// Stable name; also accepted as a column header on import.
  final String id;
  final String Function(AppLocalizations) label;
  final String Function(T item) read;
}

/// Export and import of records of type [T] as tables.
class TransferSchema<T> {
  const TransferSchema(this.fields);
  final List<TransferField<T>> fields;

  TransferTable table(String title, Iterable<T> items, AppLocalizations l10n, {bool rtl = false}) =>
      TransferTable(
        title: title,
        rtl: rtl,
        columns: [for (final f in fields) TransferColumn(f.id, f.label(l10n))],
        rows: [
          for (final it in items) {for (final f in fields) f.id: f.read(it)},
        ],
      );

  static String _norm(String s) => s.trim().toLowerCase().replaceAll(RegExp(r'[\s_\-:]+'), '');

  /// Header names for each field in every app language, plus its id.
  Map<String, String> _aliases() {
    final out = <String, String>{};
    for (final lang in AppLocales.all) {
      final l = lookupAppLocalizations(Locale(lang.locale.languageCode));
      for (final f in fields) {
        out[_norm(f.label(l))] = f.id;
      }
    }
    for (final f in fields) {
      out[_norm(f.id)] = f.id;
    }
    return out;
  }

  /// Rows of a file → records as field id → text. A first row of known
  /// headers maps the columns (any order, any app language, extra columns
  /// ignored); without one, columns follow the field order.
  List<Map<String, String>> records(List<List<String>> rows) {
    if (rows.isEmpty) return const [];
    final aliases = _aliases();
    final header = rows.first;
    final mapped = <int, String>{};
    for (var i = 0; i < header.length; i++) {
      final id = aliases[_norm(header[i])];
      if (id != null && !mapped.containsValue(id)) mapped[i] = id;
    }
    final hasHeader = mapped.isNotEmpty;
    if (!hasHeader) {
      for (var i = 0; i < fields.length; i++) {
        mapped[i] = fields[i].id;
      }
    }
    final out = <Map<String, String>>[];
    for (final r in hasHeader ? rows.skip(1) : rows) {
      final rec = {
        for (final e in mapped.entries)
          if (e.key < r.length) e.value: _cell(r[e.key]),
      };
      // Rows with text only in columns the app does not use are not records.
      if (rec.values.any((v) => v.isNotEmpty)) out.add(rec);
    }
    return out;
  }

  /// The apostrophe the export puts before text that starts like a formula
  /// (`'=SUM`, so spreadsheets do not run it) is dropped again.
  static String _cell(String raw) {
    final v = raw.trim();
    return RegExp(r"^'[=+\-@]").hasMatch(v) ? v.substring(1) : v;
  }
}

/// Values written in files are read leniently (Arabic-Indic digits, words).
abstract final class TransferValues {
  static String westernDigits(String s) => s.replaceAllMapped(RegExp(r'[٠-٩۰-۹०-९]'), (m) {
    final c = m.group(0)!.codeUnitAt(0);
    final base = c >= 0x0966 ? 0x0966 : (c >= 0x06F0 ? 0x06F0 : 0x0660);
    return '${c - base}';
  });

  static const _yes = {
    'yes',
    'y',
    'true',
    '1',
    'x',
    '✓',
    '✔',
    '☑',
    'نعم',
    'sí',
    'si',
    'oui',
    'sim',
    'да',
    'हाँ',
    '是',
  };

  static bool yes(String? s) => s != null && _yes.contains(s.trim().toLowerCase());

  /// `2026-11-19`, `2026-11-19 14:30`, `19/11/2026` or an Excel day number.
  /// Returns the local moment and whether a time was given.
  static (DateTime, bool)? date(String? raw) {
    if (raw == null || raw.trim().isEmpty) return null;
    final s = westernDigits(raw.trim());
    final serial = double.tryParse(s);
    if (serial != null && serial > 20000 && serial < 80000) {
      final d = DateTime(1899, 12, 30).add(Duration(minutes: (serial * 24 * 60).round()));
      return (d, serial % 1 != 0);
    }
    final iso = RegExp(r'^(\d{4})[-/.](\d{1,2})[-/.](\d{1,2})(?:[ T](\d{1,2}):(\d{2}))?')
        .firstMatch(s);
    final dmy = RegExp(r'^(\d{1,2})[-/.](\d{1,2})[-/.](\d{4})(?:[ T](\d{1,2}):(\d{2}))?')
        .firstMatch(s);
    final m = iso ?? dmy;
    if (m == null) return null;
    final y = int.parse(iso != null ? m.group(1)! : m.group(3)!);
    final mo = int.parse(m.group(2)!);
    final d = int.parse(iso != null ? m.group(3)! : m.group(1)!);
    if (mo < 1 || mo > 12 || d < 1 || d > 31) return null;
    final hasTime = m.group(4) != null;
    return (
      DateTime(
        y,
        mo,
        d,
        hasTime ? int.parse(m.group(4)!) : 0,
        hasTime ? int.parse(m.group(5)!) : 0,
      ),
      hasTime,
    );
  }

  static String formatDate(DateTime? t, {bool withTime = false}) {
    if (t == null) return '';
    final l = t.toLocal();
    String two(int v) => v.toString().padLeft(2, '0');
    final d = '${l.year}-${two(l.month)}-${two(l.day)}';
    return withTime ? '$d ${two(l.hour)}:${two(l.minute)}' : d;
  }
}
