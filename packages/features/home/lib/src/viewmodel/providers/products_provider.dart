import 'package:core/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../repository/home_repository.dart';
import '../notifiers/selected_category_id_notifier.dart';
import '../notifiers/product_sort_notifier.dart';

part 'products_provider.g.dart';

@riverpod
Future<List<Product>> fetchedProducts(Ref ref, int? categoryId) {
  // Keep the data in cache even if there are no listeners for a while
  final link = ref.keepAlive();

  final repository = ref.watch(homeRepositoryProvider);
  return repository.getProducts(categoryId: categoryId);
}

@riverpod
Future<List<Product>> products(Ref ref) async {
  final selectedId = ref.watch(selectedCategoryIdProvider);
  final sort = ref.watch(productSortNotifierProvider);

  // Using the generated provider which supports caching
  final products = await ref.watch(fetchedProductsProvider(selectedId).future);

  // Clone list to avoid mutating the cached source
  final sortedProducts = [...products];

  switch (sort) {
    case ProductSort.priceAsc:
      sortedProducts.sort((a, b) => a.price.compareTo(b.price));
    case ProductSort.priceDesc:
      sortedProducts.sort((a, b) => b.price.compareTo(a.price));
    case ProductSort.nameAsc:
      sortedProducts.sort(
        (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
      );
    case ProductSort.nameDesc:
      sortedProducts.sort(
        (a, b) => b.title.toLowerCase().compareTo(a.title.toLowerCase()),
      );
    case ProductSort.none:
      break;
  }

  return sortedProducts;
}
