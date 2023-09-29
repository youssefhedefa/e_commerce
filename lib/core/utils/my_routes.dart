import 'package:e_commerce/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class MyRoutes
{
  static const onBoarding = '/OnBoarding';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch(settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (context) => const OnBoardingView(),);

      case onBoarding:
        return MaterialPageRoute(builder: (context) => const OnBoardingView(),);

    }


    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }

}