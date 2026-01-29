// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchedProductsHash() => r'c196596217b01b7b9b987eef63c46a7673bf8793';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [fetchedProducts].
@ProviderFor(fetchedProducts)
const fetchedProductsProvider = FetchedProductsFamily();

/// See also [fetchedProducts].
class FetchedProductsFamily extends Family<AsyncValue<List<Product>>> {
  /// See also [fetchedProducts].
  const FetchedProductsFamily();

  /// See also [fetchedProducts].
  FetchedProductsProvider call(int? categoryId) {
    return FetchedProductsProvider(categoryId);
  }

  @override
  FetchedProductsProvider getProviderOverride(
    covariant FetchedProductsProvider provider,
  ) {
    return call(provider.categoryId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'fetchedProductsProvider';
}

/// See also [fetchedProducts].
class FetchedProductsProvider extends AutoDisposeFutureProvider<List<Product>> {
  /// See also [fetchedProducts].
  FetchedProductsProvider(int? categoryId)
    : this._internal(
        (ref) => fetchedProducts(ref as FetchedProductsRef, categoryId),
        from: fetchedProductsProvider,
        name: r'fetchedProductsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$fetchedProductsHash,
        dependencies: FetchedProductsFamily._dependencies,
        allTransitiveDependencies:
            FetchedProductsFamily._allTransitiveDependencies,
        categoryId: categoryId,
      );

  FetchedProductsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.categoryId,
  }) : super.internal();

  final int? categoryId;

  @override
  Override overrideWith(
    FutureOr<List<Product>> Function(FetchedProductsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchedProductsProvider._internal(
        (ref) => create(ref as FetchedProductsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        categoryId: categoryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Product>> createElement() {
    return _FetchedProductsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchedProductsProvider && other.categoryId == categoryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, categoryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchedProductsRef on AutoDisposeFutureProviderRef<List<Product>> {
  /// The parameter `categoryId` of this provider.
  int? get categoryId;
}

class _FetchedProductsProviderElement
    extends AutoDisposeFutureProviderElement<List<Product>>
    with FetchedProductsRef {
  _FetchedProductsProviderElement(super.provider);

  @override
  int? get categoryId => (origin as FetchedProductsProvider).categoryId;
}

String _$productsHash() => r'c2371683db20108f29f1831b88c13de1af04499e';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
