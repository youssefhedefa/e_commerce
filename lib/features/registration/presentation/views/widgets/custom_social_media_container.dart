import 'package:flutter/material.dart';

class CustomSocialMediaContainer extends StatelessWidget {
  const CustomSocialMediaContainer({Key? key, required this.iconName, required this.label}) : super(key: key);

  final String iconName;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 141,
      height: 40,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image(image: AssetImage(iconName)),
            ),
            Text(
              label,
              style:const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 1.43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
