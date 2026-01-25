import 'package:auto_route/auto_route.dart';
import 'package:home/home.dart';
import 'package:details/details.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeScreenRoute.page, initial: true),
    AutoRoute(page: DetailsScreenRoute.page),
  ];
}
