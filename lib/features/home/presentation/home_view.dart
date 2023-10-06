import 'package:flutter/material.dart';
import 'views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(80),
            colors: [
              Color.fromRGBO(245, 246, 248, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: HomeBody(),
      ),
    );
  }
}
