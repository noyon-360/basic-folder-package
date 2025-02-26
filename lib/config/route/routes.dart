import 'package:flutter/material.dart';
import 'package:my_basic_package/my_basic_package.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      // Home Screen
      case RouteNames.home:
        return MaterialPageRoute(builder: (context) => Home());
      // Onboarding
      case RouteNames.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      // Splash Screen
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      // Auth Routes
      // case RouteNames.authScreenController:
      //   return MaterialPageRoute(builder: (context) => AuthScreensController());
      // case RouteNames.login:
      //   return MaterialPageRoute(builder: (context) => LoginScreen());
      // case RouteNames.register:
      //   return MaterialPageRoute(builder: (context) => RegisterScreen());

      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }
}