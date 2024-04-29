import 'package:doc_project/core/routing/routes.dart';
import 'package:doc_project/features/login/ui/login_screen.dart';
import 'package:doc_project/features/onBoarding/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouting {
  Route generateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Center(
            child: Text('No Route defiend for ${settings.name}'),
          ),
        );
    }
  }
}
