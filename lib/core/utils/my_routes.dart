import 'package:e_commerce/features/logIn/presentation/views/log_in_view.dart';
import 'package:e_commerce/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class MyRoutes
{
  static const onBoardingView = '/OnBoarding';
  static const logInView = '/logIn';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (context) => const OnBoardingView(),);

      case onBoardingView:
        return MaterialPageRoute(builder: (context) => const OnBoardingView(),);

      case logInView:
        return MaterialPageRoute(builder: (context) => const LogInView(),);

    }


    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }

}