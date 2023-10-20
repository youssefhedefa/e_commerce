import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {Key? key,
        required this.buttonBackGround,
        required this.textColor,
        required this.iconBackGround,
        required this.buttonText,
        required this.icon})
      : super(key: key);

  final Color buttonBackGround;
  final Color textColor;
  final Color iconBackGround;
  final String buttonText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      constraints: BoxConstraints(
        maxWidth: (MobileDimensions.getWidth(context) / 2) - 26,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: buttonBackGround,
        borderRadius: BorderRadiusDirectional.circular(40),
      ),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SizedBox(
            width: constraints.maxWidth-20,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  buttonText,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CircleAvatar(
                  radius: 18,
                  backgroundColor: iconBackGround,
                  child: icon,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
