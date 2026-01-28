import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cart/cart.dart';
import 'route_wrappers.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeScreenRoute.page, initial: true),
    AutoRoute(page: DetailsScreenRoute.page),
    AutoRoute(page: CartScreenRoute.page),
  ];
}
