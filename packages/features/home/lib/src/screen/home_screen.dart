import 'package:flutter/material.dart';
import 'package:cart/cart.dart';
import 'package:estore/app_router_export.dart';
import '../viewmodel/home_view_model.dart';
import 'product_card.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsync = ref.watch(categoriesProvider);
    final productsAsync = ref.watch(productsProvider);
    final selectedCategoryId = ref.watch(selectedCategoryIdProvider);
    final viewMode = ref.watch(productViewModeNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          ref
              .watch(cartItemsStreamProvider)
              .when(
                data: (items) => Badge(
                  label: Text('${items.length}'),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () => context.pushRoute(const CartScreenRoute()),
                  ),
                ),
                loading: () => IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () => context.pushRoute(const CartScreenRoute()),
                ),
                error: (_, __) => IconButton(
                  icon: const Icon(Icons.shopping_cart),
                  onPressed: () => context.pushRoute(const CartScreenRoute()),
                ),
              ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Categories',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              child: categoriesAsync.when(
                data: (categories) {
                  final allCategories = [
                    const Category(
                      id: -1,
                      name: 'All',
                      slug: 'all',
                      image: 'https://placehold.co/100x100/4F46E5/FFF?text=All',
                    ),
                    ...categories,
                  ];

                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: allCategories.length,
                    itemBuilder: (context, index) {
                      final category = allCategories[index];
                      final isSelected =
                          (category.id == -1 && selectedCategoryId == null) ||
                          category.id == selectedCategoryId;

                      return Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: InkWell(
                          onTap: () {
                            ref
                                .read(selectedCategoryIdProvider.notifier)
                                .select(category.id == -1 ? null : category.id);
                          },
                          borderRadius: BorderRadius.circular(8),
                          child: Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: isSelected
                                      ? Border.all(
                                          color: Theme.of(context).primaryColor,
                                          width: 3,
                                        )
                                      : null,
                                  image: DecorationImage(
                                    image: NetworkImage(category.image),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                category.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: isSelected
                                      ? FontWeight.bold
                                      : FontWeight.w600,
                                  fontSize: 14,
                                  color: isSelected
                                      ? Theme.of(context).primaryColor
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                error: (error, stack) {
                  // debugPrint(error.toString());
                  return Center(child: Text('Error: $error'));
                },
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      PopupMenuButton<ProductSort>(
                        icon: const Icon(Icons.sort),
                        onSelected: (sort) {
                          ref
                              .read(productSortNotifierProvider.notifier)
                              .setSort(sort);
                        },
                        itemBuilder: (context) => ProductSort.values
                            .map(
                              (sort) => PopupMenuItem(
                                value: sort,
                                child: Text(sort.label),
                              ),
                            )
                            .toList(),
                      ),
                      IconButton(
                        onPressed: () {
                          ref
                              .read(productViewModeNotifierProvider.notifier)
                              .toggle();
                        },
                        icon: Icon(
                          viewMode == ProductViewMode.list
                              ? Icons.grid_view
                              : Icons.view_list,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            productsAsync.when(
              data: (products) => products.isEmpty
                  ? const Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Center(child: Text('No products found')),
                    )
                  : viewMode == ProductViewMode.list
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ProductCard(product: product);
                      },
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.55,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return ProductCard(
                          product: product,
                          margin: EdgeInsets.zero,
                        );
                      },
                    ),
              error: (error, stack) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(child: Text('Error loading products: $error')),
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.all(32.0),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
