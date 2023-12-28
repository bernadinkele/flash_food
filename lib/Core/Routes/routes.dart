import 'package:flash_food/Core/Routes/routes_name.dart';
import 'package:flash_food/Presentation/Auth/views/forget_password_view.dart';
import 'package:flash_food/Presentation/Auth/views/login_view.dart';
import 'package:flash_food/Presentation/Auth/views/otp_verification_view.dart';
import 'package:flash_food/Presentation/Auth/views/reset_password_view.dart';
import 'package:flash_food/Presentation/Auth/views/signup_view.dart';
import 'package:flash_food/Presentation/Chat/call_view.dart';
import 'package:flash_food/Presentation/Chat/discussion_view.dart';
import 'package:flash_food/Presentation/Foods/Views/about_menu_view.dart';
import 'package:flash_food/Presentation/Foods/Views/payment_view.dart';
import 'package:flash_food/Presentation/Foods/Views/search_view.dart';
import 'package:flash_food/Presentation/Main/main_view.dart';
import 'package:flash_food/Presentation/Main/onboarding.dart';
import 'package:flash_food/Presentation/Notifications/Views/notification_view.dart';
import 'package:flash_food/Presentation/Profil/extracard_view.dart';
import 'package:flash_food/Presentation/Profil/personal_data_view.dart';
import 'package:flash_food/Presentation/Profil/settings_view.dart';
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
      case RoutesName.forgetPassword:
        return MaterialPageRoute(builder: (context) => const ForgetPasswordView());
      case RoutesName.otpVerification:
        return MaterialPageRoute(builder: (context) => const OTPVerificationView());
      case RoutesName.resetPassword:
        return MaterialPageRoute(builder: (context) => const ResetPasswordView());
      case RoutesName.main:
        return MaterialPageRoute(builder: (context) => const MainView());
      case RoutesName.notification:
        return MaterialPageRoute(builder: (context) => const NotificationView());
      case RoutesName.aboutMenu:
          return MaterialPageRoute(builder: (context) => const AboutMenuView());
      case RoutesName.payment:
        return MaterialPageRoute(builder: (context) => const PaymentView());
      case RoutesName.discussion:
        return MaterialPageRoute(builder: (context) => const DiscussionView());
      case RoutesName.call:
        return MaterialPageRoute(builder: (context) => const CallView());
      case RoutesName.search:
        return MaterialPageRoute(builder: (context) => const SearchView());
      case RoutesName.personnalData:
        return MaterialPageRoute(builder: (context) => const PersonalDataView());
      case RoutesName.settings:
        return MaterialPageRoute(builder: (context) => const SettingsView());
      case RoutesName.extraCard:
        return MaterialPageRoute(builder: (context) => const ExtraCardView());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold(
          body: Text("No routes found"),
        ),);
    }
  }
}