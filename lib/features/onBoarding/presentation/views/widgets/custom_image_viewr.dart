import 'package:flutter/material.dart';

class CustomImageViewer extends StatelessWidget {
  const CustomImageViewer(
      {Key? key, required this.pageController, required this.children})
      : super(key: key);

  final List<Widget> children;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: PageView(
          controller: pageController,
          children: children,
        ),
      ),
    );
  }
}
