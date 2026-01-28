import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:cart/cart.dart';
import 'package:home/home.dart';
import 'package:details/details.dart';

/// Route wrappers are needed because AutoRoute's build_runner cannot
/// scan @RoutePage annotations in external packages. These wrappers
/// allow the router generator to find the routes in the main app.

@RoutePage(name: 'CartScreenRoute')
class CartScreenWrapper extends CartScreen {
  const CartScreenWrapper({super.key});
}

@RoutePage(name: 'HomeScreenRoute')
class HomeScreenWrapper extends HomeScreen {
  const HomeScreenWrapper({super.key});
}

@RoutePage(name: 'DetailsScreenRoute')
class DetailsScreenWrapper extends DetailsScreen {
  const DetailsScreenWrapper({super.key, required super.product});
}
