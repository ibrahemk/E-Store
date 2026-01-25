import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'details_screen.dart';

class DetailsScreenRoute extends PageRouteInfo<DetailsScreenArgs> {
  DetailsScreenRoute({required Product product, List<PageRouteInfo>? children})
    : super(
        DetailsScreenRoute.name,
        args: DetailsScreenArgs(product: product),
        initialChildren: children,
      );

  static const String name = 'DetailsScreenRoute';

  static const PageInfo page = PageInfo(name, builder: builder);

  static Widget builder(RouteData data) {
    final args = data.argsAs<DetailsScreenArgs>();
    return DetailsScreen(product: args.product);
  }
}

class DetailsScreenArgs {
  final Product product;
  const DetailsScreenArgs({required this.product});
}
