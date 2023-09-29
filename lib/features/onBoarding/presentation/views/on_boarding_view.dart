import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/custom_advance_button.dart';
import 'widgets/custom_image_viewr.dart';
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController pageController = PageController();
  final List<Image> images = [
    Image(
      image: AssetImage(MyAssets.firstPanel),
    ),
    Image(
      image: AssetImage(MyAssets.secondPanel),
    ),
    Image(
      image: AssetImage(MyAssets.thirdPanel),
    ),
  ];

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //int currentPage = 0;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            CustomImageViewer(pageController: pageController, children: images),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SmoothPageIndicator(
                  effect: const ScrollingDotsEffect(
                    spacing: 10,
                    dotHeight: 16,
                    dotWidth: 18,
                    activeDotColor: Colors.deepPurple,
                  ),
                  controller: pageController,
                  count: 3,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _currentPage = pageController.page!.round();
                    });
                    pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastOutSlowIn,
                    );
                  },
                  child: buildButton(_currentPage),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  Widget buildButton(int currentPage){
    if(currentPage == 2)
    {
      return const CustomAdvanceButton(text: 'Advance');

    }
    else {
      return const CustomAdvanceButton(text: 'Next');
    }
  }
}
