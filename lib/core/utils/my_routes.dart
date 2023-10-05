import 'package:e_commerce/features/home/presentation/home_view.dart';
import 'package:e_commerce/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce/features/registration/presentation/views/log_in_view.dart';
import 'package:e_commerce/features/registration/presentation/views/sign_in_view.dart';
import 'package:flutter/material.dart';

import 'custom_page_route.dart';

class MyRoutes {
  static const onBoardingView = '/OnBoarding';
  static const logInView = '/logIn';
  static const signUpView = '/signUp';
  static const homeView = '/home';
  //static const signUpView2 = '/signUp2';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );

      case onBoardingView:
        return CustomPageRoute(
          child: const OnBoardingView(),
          axisDirection: AxisDirection.left,
        );

      case logInView:
        return CustomPageRoute(
          child: const  LogInView(),
          axisDirection: AxisDirection.left,
        );

      case signUpView:
        return CustomPageRoute(
          child: const SignUpView(),
          axisDirection: AxisDirection.left,
        );

      case homeView:
        return CustomPageRoute(
          child: const HomeView(),
          axisDirection: AxisDirection.left,
        );

      // case signUpView2:
      //   var arg = settings.arguments as String;
      //   return CustomPageRoute(child: TryCustom(text: arg,),axisDirection: AxisDirection.down,setting:arg);
    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}
