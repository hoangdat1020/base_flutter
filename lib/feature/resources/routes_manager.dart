import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_application_flavor/app/app.dart';
import 'package:flutter_application_flavor/feature/login/login_screen.dart';
import 'package:flutter_application_flavor/feature/main/home/home_screen.dart';
import 'package:flutter_application_flavor/feature/main/main_view.dart';
import 'package:flutter_application_flavor/feature/main/notification/notification_screen.dart';
import 'package:flutter_application_flavor/feature/main/search/search_screen.dart';
import 'package:flutter_application_flavor/feature/main/setting/setting_screen.dart';
import 'package:flutter_application_flavor/feature/resources/strings_manager.dart';
import 'package:flutter_application_flavor/feature/splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String mainRoute = "/main";
  static const String homeRoute = "/home";
  static const String notificationRoute = "/notification";
  static const String searchRoute = "/search";
  static const String settingRoute = "/setting";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case Routes.searchRoute:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case Routes.settingRoute:
        return MaterialPageRoute(builder: (_) => const SettingPage());
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
