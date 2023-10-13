import 'package:e_commerce/features/home/presentation/views/home_view.dart';
import 'package:e_commerce/features/messages/presentation/views/message_view.dart';
import 'package:e_commerce/features/messages/presentation/views/chat_view.dart';
import 'package:e_commerce/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:e_commerce/features/registration/presentation/views/log_in_view.dart';
import 'package:e_commerce/features/registration/presentation/views/sign_in_view.dart';
import 'package:e_commerce/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

import 'custom_page_route.dart';

class MyRoutes {
  static const onBoardingView = '/OnBoarding';
  static const logInView = '/logIn';
  static const signUpView = '/signUp';
  static const homeView = '/home';
  static const searchView = '/search';
  static const messageView = '/message';
  static const chatView = '/chat';

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

      case searchView:
        return CustomPageRoute(
          child: const SearchView(),
          axisDirection: AxisDirection.left,
        );
      case messageView:
        return CustomPageRoute(
          child: const MessageView(),
          axisDirection: AxisDirection.down,
        );
      case chatView:
        return CustomPageRoute(
          child: const ChatView(),
          axisDirection: AxisDirection.left,
        );


    }

    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text('no route defined'),
      ),
    );
  }
}
