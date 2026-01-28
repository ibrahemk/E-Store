import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../repository/home_repository.dart';
import '../notifiers/selected_category_id_notifier.dart';
import '../notifiers/product_sort_notifier.dart';

part 'products_provider.g.dart';

@riverpod
Future<List<Product>> products(Ref ref) async {
  final repository = ref.watch(homeRepositoryProvider);
  final selectedId = ref.watch(selectedCategoryIdProvider);
  final sort = ref.watch(productSortNotifierProvider);

  final products = await repository.getProducts(categoryId: selectedId);

  switch (sort) {
    case ProductSort.priceAsc:
      products.sort((a, b) => a.price.compareTo(b.price));
    case ProductSort.priceDesc:
      products.sort((a, b) => b.price.compareTo(a.price));
    case ProductSort.nameAsc:
      products.sort(
        (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
      );
    case ProductSort.nameDesc:
      products.sort(
        (a, b) => b.title.toLowerCase().compareTo(a.title.toLowerCase()),
      );
    case ProductSort.none:
      break;
  }

  return products;
}
