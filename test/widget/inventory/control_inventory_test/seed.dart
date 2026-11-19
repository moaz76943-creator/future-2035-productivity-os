part of '../control_inventory_test.dart';

/// Control inventory (Master Directive part 17/35).
///
/// Every route of the real app is opened with realistic content. Each visible
/// node the accessibility tree exposes as tappable is recorded (screen, label,
/// role, size) and then tapped with a real pointer at its centre, from a fresh
/// copy of the screen. A tap must not throw, and it must change something the
/// user can observe: the route, an opened dialog/sheet/menu, or the screen's
/// semantics (text, value, checked/selected/expanded state, focus).
/// Results are written to build/control_inventory.json.
class _Seed {
  late String task, project, event, note, deck, goal, habit;
}

class _Control {
  _Control(this.id, this.label, this.rect, this.role, this.enabled, this.selected, this.inHScroll);

  /// Lives in a horizontally scrolling row, where an edge item is reported clipped.
  final bool inHScroll;
  final int id;
  final String label;
  final Rect rect;
  final String role;
  final bool enabled;

  /// Already the current choice (selected chip/tab/segment): re-tapping it is a no-op by design.
  final bool selected;
}

List<_Control> _controls(WidgetTester tester, Size view) {
  final out = <_Control>[];
  void visit(SemanticsNode node) {
    final d = node.getSemanticsData();
    final f = d.flagsCollection;
    final tappable = d.hasAction(SemanticsAction.tap) || f.isTextField;
    // Nodes merged into a parent (e.g. the switch inside SwitchListTile) are announced
    // as part of that parent and are not separate controls.
    if (tappable && !node.isInvisible && !node.isMergedIntoParent && !f.isHidden) {
      final r = _globalRect(node);
      final onScreen =
          r.width > 0 &&
          r.height > 0 &&
          r.center.dx > 0 &&
          r.center.dy > 0 &&
          r.center.dx < view.width &&
          r.center.dy < view.height;
      if (onScreen) {
        final label = [
          d.label,
          d.value,
          d.tooltip,
          d.hint,
        ].where((t) => t.isNotEmpty).join(' | ').replaceAll('\n', ' ');
        out.add(
          _Control(
            node.id,
            label,
            r,
            _role(d),
            f.isEnabled != Tristate.isFalse,
            // Selected chip/tab, or a radio-like option that is already on (time picker AM/PM).
            f.isSelected == Tristate.isTrue || f.isChecked == CheckedState.isTrue,
            _inHorizontalScroll(node),
          ),
        );
      }
    }
    node.visitChildren((c) {
      visit(c);
      return true;
    });
  }

  visit(_root(tester));
  return out;
}
