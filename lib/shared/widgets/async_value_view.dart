import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';

import '../../app/localization/app_format.dart';
import '../../core/design_system/components/states.dart';

/// Renders an [AsyncValue] with the shared loading and error states.
/// Previous data stays visible while a provider refreshes.
class AsyncValueView<T> extends StatelessWidget {
  const AsyncValueView({
    super.key,
    required this.value,
    required this.data,
    this.loading,
    this.onRetry,
    this.loadingRows = 3,
  });

  final AsyncValue<T> value;
  final Widget Function(T data) data;
  final Widget? loading;
  final VoidCallback? onRetry;
  final int loadingRows;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return value.when(
      skipLoadingOnReload: true,
      skipLoadingOnRefresh: true,
      data: data,
      loading: () => loading ?? LoadingState(label: l10n.stateLoading, rows: loadingRows),
      error: (_, _) => ErrorState(
        title: l10n.errorGenericTitle,
        message: l10n.errorLoadFailed,
        retryLabel: onRetry == null ? null : l10n.actionRetry,
        onRetry: onRetry,
      ),
    );
  }
}

/// Sliver variant for use inside CustomScrollView.
class SliverAsyncValueView<T> extends StatelessWidget {
  const SliverAsyncValueView({super.key, required this.value, required this.data});
  final AsyncValue<T> value;
  final Widget Function(T data) data;

  @override
  Widget build(BuildContext context) {
    return value.when(
      skipLoadingOnReload: true,
      data: data,
      loading: () => SliverToBoxAdapter(child: LoadingState(label: context.l10n.stateLoading)),
      error: (_, _) => SliverToBoxAdapter(
        child: ErrorState(
            title: context.l10n.errorGenericTitle, message: context.l10n.errorLoadFailed),
      ),
    );
  }
}
