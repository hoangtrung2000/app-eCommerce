import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    // print('This is route: ${settings.name}');
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
      case WishListScreen.routeName:
        return WishListScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('Error'),
              ),
            ));
  }
}
