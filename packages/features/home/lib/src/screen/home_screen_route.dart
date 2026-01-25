import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class HomeScreenRoute {
  static const String name = 'HomeScreenRoute';

  static const PageInfo page = PageInfo(name, builder: builder);

  static Widget builder(RouteData routeData) {
    return const HomeScreen();
  }
}
