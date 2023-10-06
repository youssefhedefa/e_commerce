import 'package:flutter/material.dart';
import 'views/widgets/custom_navigation_bar.dart';
import 'views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: HomeBody(),
    );
  }
}
