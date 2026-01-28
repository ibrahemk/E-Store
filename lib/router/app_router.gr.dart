// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CartScreenWrapper]
class CartScreenRoute extends PageRouteInfo<void> {
  const CartScreenRoute({List<PageRouteInfo>? children})
    : super(CartScreenRoute.name, initialChildren: children);

  static const String name = 'CartScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CartScreenWrapper();
    },
  );
}

/// generated route for
/// [DetailsScreenWrapper]
class DetailsScreenRoute extends PageRouteInfo<DetailsScreenRouteArgs> {
  DetailsScreenRoute({
    Key? key,
    required Product product,
    List<PageRouteInfo>? children,
  }) : super(
         DetailsScreenRoute.name,
         args: DetailsScreenRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'DetailsScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailsScreenRouteArgs>();
      return DetailsScreenWrapper(key: args.key, product: args.product);
    },
  );
}

class DetailsScreenRouteArgs {
  const DetailsScreenRouteArgs({this.key, required this.product});

  final Key? key;

  final Product product;

  @override
  String toString() {
    return 'DetailsScreenRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [HomeScreenWrapper]
class HomeScreenRoute extends PageRouteInfo<void> {
  const HomeScreenRoute({List<PageRouteInfo>? children})
    : super(HomeScreenRoute.name, initialChildren: children);

  static const String name = 'HomeScreenRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreenWrapper();
    },
  );
}
