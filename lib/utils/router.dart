import 'package:brand_marketplace_app/screens/login_screen.dart';
import 'package:brand_marketplace_app/screens/onboarding_screen.dart';
import 'package:brand_marketplace_app/screens/register_screen.dart';
import 'package:brand_marketplace_app/screens/splashscreen.dart';
import 'package:brand_marketplace_app/screens/succes_regist_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/onboarding':
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case '/success-register':
        return MaterialPageRoute(builder: (_) => const SuccessRegistScreen());
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text("Error")),
              body: const Center(
                child: Text("Something went error"),
              ),
            ));
  }
}
