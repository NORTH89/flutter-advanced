import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/forgot_password/forgot_password.dart';
import 'package:flutter_advanced/presentation/login/login_view.dart';
import 'package:flutter_advanced/presentation/main/main_view.dart';
import 'package:flutter_advanced/presentation/onboarding/onboadrding.dart';
import 'package:flutter_advanced/presentation/signup/signup_view.dart';
import 'package:flutter_advanced/presentation/splash/splash.dart';
import 'package:flutter_advanced/presentation/store/store_details_view.dart';

class RoutesManager {
  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String signUpRoute = '/signUp';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RoutesManager.onBoardingRoute:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const OnBoardingView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0;
            const end = 4.0;
            const curve = Curves.ease;
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      case RoutesManager.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RoutesManager.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case RoutesManager.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case RoutesManager.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case RoutesManager.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return MaterialPageRoute(builder: (_) => const Placeholder());
    }
  }
}
