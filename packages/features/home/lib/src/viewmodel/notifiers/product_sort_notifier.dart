import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:core/core.dart';

part 'product_sort_notifier.g.dart';

@riverpod
class ProductSortNotifier extends _$ProductSortNotifier {
  @override
  ProductSort build() => ProductSort.none;

  void setSort(ProductSort sort) {
    state = sort;
  }
}
