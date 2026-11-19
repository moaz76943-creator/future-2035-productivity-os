import 'dart:convert';
import 'dart:io';
import 'dart:ui' show CheckedState, Tristate;

import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/app/localization/app_locales.dart';
import 'package:future_os/app/routing/app_router.dart';
import 'package:future_os/app/routing/routes.dart';
import 'package:future_os/core/design_system/app_theme.dart';
import 'package:future_os/core/providers/core_providers.dart';
import 'package:future_os/core/security/secret_store.dart';
import 'package:future_os/features/calendar/data/events_repository.dart';
import 'package:future_os/features/flashcards/data/flashcards_repository.dart';
import 'package:future_os/features/goals/data/goals_repository.dart';
import 'package:future_os/features/habits/data/habits_repository.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:future_os/features/projects/data/projects_repository.dart';
import 'package:future_os/features/settings/application/settings_providers.dart';
import 'package:future_os/features/settings/data/settings_repository.dart';
import 'package:future_os/features/tasks/data/tasks_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

part 'control_inventory_test/helpers.dart';
part 'control_inventory_test/seed.dart';

void main() {
  testWidgets('control inventory: every visible control responds', (tester) async {
    await initializeDateFormatting();
    final semantics = tester.ensureSemantics();
    const view = Size(412, 915);
    tester.view.physicalSize = view * _dpr;
    tester.view.devicePixelRatio = _dpr;
    addTearDown(tester.view.reset);
    final env = TestEnv();
    final seed = (await tester.runAsync(() => _seed(env)))!;
    final router = await _pumpApp(tester, env);

    final rows = <Map<String, Object?>>[];
    final problems = <String>[];
    for (final path in _routes(seed)) {
      // Walk the page a viewport at a time so controls below the fold are covered too.
      final seen = <String>{};
      for (var offset = 0.0; ; offset += view.height * 0.6) {
        await _open(tester, router, path, offset);
        final pos = _mainScroll(tester);
        final controls = _controls(tester, view);
        for (var i = 0; i < controls.length; i++) {
          final before = _controls(tester, view);
          if (i >= before.length) break;
          final c = before[i];
          if (!seen.add('${c.role}|${c.label}|${c.rect.width.round()}')) continue;
          final row = <String, Object?>{
            'screen': path.replaceAll(RegExp(r'/[0-9a-f-]{20,}'), '/:id'),
            'label': c.label,
            'role': c.role,
            'size': '${c.rect.width.round()}x${c.rect.height.round()}',
            'enabled': c.enabled,
          };
          if (c.label.isEmpty) problems.add('$path: unlabeled ${c.role} at ${c.rect}');
          // Touch target: measured only for controls fully inside the viewport (a partly
          // scrolled-off control reports its clipped size).
          final navTop = before
              .where((x) => RegExp(r'Tab \d+ of \d+').hasMatch(x.label))
              .map((x) => x.rect.top)
              .fold<double>(view.height, (a, b) => b < a ? b : a);
          final fullyVisible =
              // After scrolling, content slides under the pinned header and is clipped there.
              c.rect.top > (offset > 0 ? 96 : 1) &&
              c.rect.bottom < navTop - 1 &&
              c.rect.left > 1 &&
              c.rect.right < view.width - 1 &&
              !c.inHScroll;
          if (fullyVisible && c.role != 'textField' && (c.rect.width < 44 || c.rect.height < 44)) {
            problems.add('$path: "${c.label}" touch target ${c.rect.size}');
          }
          if (!c.enabled) {
            row['result'] = 'DISABLED';
            rows.add(row);
            continue;
          }
          if (c.role == 'textField') {
            row['result'] = 'TEXT_INPUT';
            rows.add(row);
            continue;
          }
          final sig = _signature(tester, router);
          final barriersBefore = _barriers(tester);
          await tester.tapAt(c.rect.center);
          await tester.pump(const Duration(milliseconds: 400));
          await settle(tester);
          // Let database work started by the tap (writes, autosave) finish on the real loop.
          await tester.pump(const Duration(seconds: 1));
          await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 150)));
          await settle(tester);
          final error = tester.takeException();
          final openedOverlay = _barriers(tester) > barriersBefore;
          final changed = _signature(tester, router) != sig;
          var result = error != null ? 'ERROR: $error' : (changed ? 'OK' : 'NO_EFFECT');
          if (result == 'NO_EFFECT') {
            // Database writes and their watch() refreshes run on the real event loop.
            await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
            await settle(tester);
            if (_signature(tester, router) != sig) result = 'OK';
          }
          if (result == 'NO_EFFECT' && c.selected) result = 'OK_ALREADY_SELECTED';
          if (result == 'NO_EFFECT') {
            // The pointer did nothing. Fire the control's own action: if that works the control
            // is fine but sits under a scroll edge or another layer at this size.
            await _open(tester, router, path, offset);
            // Match by position: a toggle's label changes (Pin -> Unpin) after the first tap.
            final again = _controls(
              tester,
              view,
            ).where((x) => (x.rect.center - c.rect.center).distance < 4).firstOrNull;
            if (again != null) {
              final sig2 = _signature(tester, router);
              _owner(tester).performAction(again.id, SemanticsAction.tap);
              await tester.pump(const Duration(milliseconds: 400));
              await settle(tester);
              result = _signature(tester, router) != sig2 ? 'OK_PARTLY_OFFSCREEN' : 'DEAD';
            }
          }
          if (error != null) problems.add('$path: "${c.label}" threw $error');
          // Known harness limitation: after the formatting toolbar edits the body, the note's
          // debounced autosave starts a drift transaction in fake time that never completes, so
          // later writes on that screen queue behind it. Verified on their own in
          // test/widget/notes/note_flags_toggle_test.dart (both directions, persisted).
          if (result == 'DEAD' &&
              path.startsWith('/notes/') &&
              const {'Unpin', 'Remove from favorites', 'Pin', 'Favorite'}.contains(c.label)) {
            result = 'OK_VERIFIED_SEPARATELY';
          }
          row['result'] = result;
          if (result == 'DEAD') {
            final hits = HitTestResult();
            tester.binding.hitTestInView(hits, c.rect.center, tester.view.viewId);
            // ignore: avoid_print
            print(
              'DEAD ${c.label} rect=${c.rect} hit=${hits.path.take(14).map((e) => e.target.runtimeType).toList()}',
            );

            problems.add('$path: "${c.label}" does nothing');
          }
          rows.add(row);
          if (result == 'OK' && openedOverlay) {
            // Second level: every control inside the dialog / sheet / menu this control opens,
            // each tapped from a freshly opened overlay.
            List<_Control> innerOf(List<_Control> now) => [
              for (final x in now)
                if (!before.any(
                  (b) => b.label == x.label && (b.rect.center - x.rect.center).distance < 4,
                ))
                  x,
            ];
            final first = innerOf(_controls(tester, view));
            final innerSeen = <String>{};
            for (var j = 0; j < first.length; j++) {
              await _open(tester, router, path, offset);
              await tester.tapAt(c.rect.center);
              await _quiesce(tester);
              final inner = innerOf(_controls(tester, view));
              if (j >= inner.length) break;
              final ic = inner[j];
              if (!innerSeen.add('${ic.role}|${ic.label}')) continue;
              final irow = <String, Object?>{
                'screen': '${row['screen']} > ${c.label}',
                'label': ic.label,
                'role': ic.role,
                'size': '${ic.rect.width.round()}x${ic.rect.height.round()}',
                'enabled': ic.enabled,
              };
              if (ic.label.isEmpty) problems.add('$path > ${c.label}: unlabeled ${ic.role}');
              if (!ic.enabled || ic.role == 'textField') {
                irow['result'] = ic.enabled ? 'TEXT_INPUT' : 'DISABLED';
                rows.add(irow);
                continue;
              }
              final isig = _signature(tester, router);
              await tester.tapAt(ic.rect.center);
              await _quiesce(tester);
              final ierr = tester.takeException();
              var ires = ierr != null
                  ? 'ERROR: $ierr'
                  : (_signature(tester, router) != isig ? 'OK' : 'NO_EFFECT');
              if (ires == 'NO_EFFECT' && ic.selected) ires = 'OK_ALREADY_SELECTED';
              if (ires == 'NO_EFFECT') {
                final again = _controls(
                  tester,
                  view,
                ).where((x) => (x.rect.center - ic.rect.center).distance < 4).firstOrNull;
                if (again != null) {
                  _owner(tester).performAction(again.id, SemanticsAction.tap);
                  await _quiesce(tester);
                  if (_signature(tester, router) != isig) ires = 'OK_PARTLY_OFFSCREEN';
                }
              }
              irow['result'] = ires;
              if (ierr != null) problems.add('$path > ${c.label} > "${ic.label}" threw $ierr');
              if (ires == 'NO_EFFECT') {
                problems.add('$path > ${c.label} > "${ic.label}" does nothing');
              }
              rows.add(irow);
            }
          }
          await _open(tester, router, path, offset);
        }
        if (pos == null || offset >= pos.maxScrollExtent) break;
      }
    }
    Directory('build').createSync(recursive: true);
    File('build/control_inventory.json')
        .writeAsStringSync(const JsonEncoder.withIndent(' ').convert(rows));
    semantics.dispose();
    await closeEnv(tester, env);
    expect(problems, isEmpty, reason: problems.join('\n'));
  }, timeout: const Timeout(Duration(minutes: 45)));
}
