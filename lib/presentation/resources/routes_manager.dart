
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:onecareprovider/presentation/resources/strings_manager.dart';
import 'package:onecareprovider/presentation/splash/splash.dart';

import '../login/login.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        // initLoginModule();
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        // return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.registerRoute:
        // initRegisterModule();
        // return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        // initForgotPasswordModule();
        // return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        // initHomeModule();
        // return MaterialPageRoute(builder: (_) => MainView());
        // initStoreDetailsModule();
        // return MaterialPageRoute(builder: (_) => StoreDetailsView());
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
