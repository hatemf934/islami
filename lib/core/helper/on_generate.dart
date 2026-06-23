import 'package:flutter/material.dart';
import 'package:islami/core/utils/route_manager.dart';
import 'package:islami/features/onBorading/view/on_borading.dart';
import 'package:islami/main_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.onboardingRoute:
      return MaterialPageRoute(builder: (context) => const Onboarding());
    case RouteManager.mainScreen:
      return MaterialPageRoute(builder: (context) => const MainScreen());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
