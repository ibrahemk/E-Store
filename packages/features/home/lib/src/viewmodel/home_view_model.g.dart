// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$categoriesHash() => r'55d7bc273d2056808c43570556e90150d6f7e459';

/// See also [categories].
@ProviderFor(categories)
final categoriesProvider = AutoDisposeFutureProvider<List<Category>>.internal(
  categories,
  name: r'categoriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$categoriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CategoriesRef = AutoDisposeFutureProviderRef<List<Category>>;
String _$productsHash() => r'd86b0cbfabfb000b1f6398bb1bebf6135575a59c';

/// See also [products].
@ProviderFor(products)
final productsProvider = AutoDisposeFutureProvider<List<Product>>.internal(
  products,
  name: r'productsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$productsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ProductsRef = AutoDisposeFutureProviderRef<List<Product>>;
String _$selectedCategoryIdHash() =>
    r'a42a60e2aa0c1efad0aa6978f19664360fb14fa2';

/// See also [SelectedCategoryId].
@ProviderFor(SelectedCategoryId)
final selectedCategoryIdProvider =
    AutoDisposeNotifierProvider<SelectedCategoryId, int?>.internal(
      SelectedCategoryId.new,
      name: r'selectedCategoryIdProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$selectedCategoryIdHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SelectedCategoryId = AutoDisposeNotifier<int?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
