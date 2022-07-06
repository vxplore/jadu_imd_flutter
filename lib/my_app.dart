import 'package:flutter/material.dart';
import 'package:jadu_imd/di.dart';
import 'package:jadu_imd/navigation_service.dart';
import 'package:jadu_imd/routeGenerator.dart';
import 'package:jadu_imd/routes.dart';
import 'package:jadu_imd/theme.dart';

import 'app_scroll_behavior.dart';
import 'constants.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: instance<NavigationService>().navigatorKey,
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: Constants.app_name,
      theme: AppTheme.darkTheme,
      initialRoute: Routes.splash,
      onGenerateRoute: RouteGenerator.getRoute,
      themeMode: ThemeMode.light,
    );
  }
}