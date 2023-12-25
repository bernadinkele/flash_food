import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Presentation/Main/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)
  {
    final arguments = routeSettings.arguments;
    switch(routeSettings.name)
    {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen(),);
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Text("No routes found"),
        ),);
    }
  }
}