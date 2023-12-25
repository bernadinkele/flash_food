import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Presentation/Auth/login_view.dart';
import 'package:flash_food/Presentation/Auth/views/signup_view.dart';
import 'package:flash_food/Presentation/Main/onboarding.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings)
  {
    switch(routeSettings.name)
    {
      case RoutesName.onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingScreen(),);
      case RoutesName.login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      case RoutesName.signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Text("No routes found"),
        ),);
    }
  }
}