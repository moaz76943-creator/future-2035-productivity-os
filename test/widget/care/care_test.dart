import 'dart:typed_data';

import 'package:drift/drift.dart' show Value;
import 'package:flutter_test/flutter_test.dart';
import 'package:future_os/core/database/app_database.dart';
import 'package:future_os/core/platform/phone_care.dart';
import 'package:future_os/features/care/data/storage_service.dart';
import 'package:future_os/features/care/domain/battery_brand.dart';
import 'package:future_os/features/care/presentation/battery_sheet.dart';
import 'package:future_os/features/care/presentation/storage_sheet.dart';
import 'package:future_os/features/care/presentation/whats_new_sheet.dart';
import 'package:future_os/features/notes/data/notes_repository.dart';
import 'package:material_ui/material_ui.dart';

import '../../helpers.dart';
import '../widget_helpers.dart';

class _Opener extends StatelessWidget {
  const _Opener(this.open);
  final void Function(BuildContext) open;
  @override
  Widget build(BuildContext context) => Scaffold(
    body: TextButton(
      key: const Key('open'),
      onPressed: () => open(context),
      child: const Text('x'),
    ),
  );
}

void main() {
  test('brand detection groups the strict phone makers', () {
    expect(batteryBrandOf('Xiaomi'), BatteryBrand.xiaomi);
    expect(batteryBrandOf('realme'), BatteryBrand.oppo);
    expect(batteryBrandOf('OnePlus'), BatteryBrand.oppo);
    expect(batteryBrandOf('samsung'), BatteryBrand.samsung);
    expect(batteryBrandOf('HONOR'), BatteryBrand.huawei);
    expect(batteryBrandOf('iQOO'), BatteryBrand.vivo);
    expect(batteryBrandOf('Google'), BatteryBrand.other);
    expect(formatBytes(512), '512 B');
    expect(formatBytes(2048), '2 KB');
    expect(formatBytes(3 * 1024 * 1024), '3.0 MB');
  });

  test('unused pictures are only those no note shows, trash included', () async {
    final env = TestEnv();
    addTearDown(env.dispose);
    final notes = NotesRepository(env.db, env.clock);
    final used = await notes.create(title: 'a', body: '![](img:p1)');
    final trashed = await notes.create(title: 'b', body: '![](img:p2)');
    await notes.create(title: 'c', body: 'no picture');
    await (env.db.update(env.db.notes)..where((n) => n.id.equals(trashed))).write(
      NotesCompanion(deletedAt: Value(env.clock.nowUtc())),
    );
    for (final (id, note) in [('p1', used), ('p2', trashed), ('p3', used)]) {
      await env.db
          .into(env.db.noteImages)
          .insert(
            NoteImagesCompanion.insert(
              id: id,
              noteId: note,
              bytes: Uint8List(1000),
              createdAt: env.clock.nowUtc(),
            ),
          );
    }
    final service = StorageService(env.db);
    final u = await service.usage();
    expect(u.pictureCount, 3);
    expect(u.unusedCount, 1, reason: 'only p3 is shown by no note');
    expect(u.unusedBytes, 1000);
    expect(await service.removeUnused(), 1);
    expect((await service.usage()).pictureCount, 2);
    expect(await service.removeUnused(), 0);
  });

  testWidgets('storage sheet warns when the phone is nearly full and cleans', (tester) async {
    final env = TestEnv();
    final care = MemoryPhoneCare(phone: const PhoneInfo(freeBytes: 50 * 1024 * 1024));
    await tester.runAsync(() async {
      await env.db
          .into(env.db.notes)
          .insert(
            NotesCompanion.insert(
              id: 'n',
              body: const Value('text'),
              createdAt: env.clock.nowUtc(),
              updatedAt: env.clock.nowUtc(),
            ),
          );
      await env.db
          .into(env.db.noteImages)
          .insert(
            NoteImagesCompanion.insert(
              id: 'old',
              noteId: 'n',
              bytes: Uint8List(2048),
              createdAt: env.clock.nowUtc(),
            ),
          );
    });
    await pumpScreen(
      tester,
      _Opener(showStorageSheet),
      env: env,
      overrides: [phoneCareProvider.overrideWithValue(care)],
    );
    await tester.tap(find.byKey(const Key('open')));
    await tester.pump();
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 200)));
    await settle(tester);
    expect(find.byKey(const Key('storageLow')), findsOneWidget);
    expect(find.byKey(const Key('storageUnused')), findsOneWidget);
    await tester.tap(find.byKey(const Key('storageClean')));
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
    await tester.pump();
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 300)));
    await settle(tester);
    expect(find.byKey(const Key('storageNoUnused')), findsOneWidget);
    await closeEnv(tester, env);
  });

  testWidgets('battery guide shows the tip for the phone brand and opens settings', (tester) async {
    final care = MemoryPhoneCare(
      phone: const PhoneInfo(manufacturer: 'Xiaomi', unrestricted: false),
    );
    final env = await pumpScreen(
      tester,
      _Opener(showBatteryGuide),
      overrides: [phoneCareProvider.overrideWithValue(care)],
    );
    await tester.tap(find.byKey(const Key('open')));
    await tester.pump();
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 100)));
    await settle(tester);
    expect(find.byKey(const Key('batteryLimited')), findsOneWidget);
    expect(find.byKey(const Key('batteryTip')), findsOneWidget);
    await tester.tap(find.byKey(const Key('batteryOpen')));
    await tester.pump();
    expect(care.opened, ['battery']);
    await closeEnv(tester, env);
  });

  testWidgets('what\'s new shows once, then never again', (tester) async {
    final env = TestEnv();
    await tester.runAsync(() => env.db.writeValue('whatsNew.seen', '0'));
    await pumpScreen(tester, const WhatsNewLauncher(), env: env);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 100)));
    await settle(tester);
    expect(find.byKey(const Key('whatsNewDone')), findsOneWidget);
    await tester.tap(find.byKey(const Key('whatsNewDone')));
    await settle(tester);
    expect(await tester.runAsync(() => env.db.readValue('whatsNew.seen')), '$whatsNewVersion');
    await pumpScreen(tester, const WhatsNewLauncher(), env: env);
    await tester.runAsync(() => Future<void>.delayed(const Duration(milliseconds: 100)));
    await settle(tester);
    expect(find.byKey(const Key('whatsNewDone')), findsNothing);
    await closeEnv(tester, env);
  });
}
