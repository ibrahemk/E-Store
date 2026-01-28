import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'product_view_mode_notifier.g.dart';

enum ProductViewMode { list, grid }

@riverpod
class ProductViewModeNotifier extends _$ProductViewModeNotifier {
  @override
  ProductViewMode build() => ProductViewMode.list;

  void toggle() {
    state = state == ProductViewMode.list
        ? ProductViewMode.grid
        : ProductViewMode.list;
  }
}
