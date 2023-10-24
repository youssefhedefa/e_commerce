import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:e_commerce/core/utils/network/local/cache_helper.dart';
import 'package:flutter/material.dart';
class SkipButton extends StatelessWidget {
  const SkipButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Constants.baseColor),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, MyRoutes.logInView);
              CacheHelper.setStartingScreen(value: true);
            },
            child: const Text(
              'Skip',
              style: TextStyle(
                color: Constants.baseColor,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    )
    ;
  }
}
