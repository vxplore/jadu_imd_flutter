import 'package:flutter/material.dart';
import 'package:jadu_imd/routes.dart';
import 'package:jadu_imd/splash_page.dart';

import 'home_page.dart';
import 'login_page.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Text("Undefined route"),
        ));
  }
}