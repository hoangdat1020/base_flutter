import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_application_flavor/app/app.dart';
import 'package:flutter_application_flavor/feature/login/login_screen.dart';
import 'package:flutter_application_flavor/feature/resources/strings_manager.dart';
import 'package:flutter_application_flavor/feature/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String mainRoute = "/main";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MyApp());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound).tr(),
              ),
              body: Center(child: const Text(AppStrings.noRouteFound).tr()),
            ));
  }
}
