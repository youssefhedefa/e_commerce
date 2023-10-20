import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';


class NavigatorItem extends StatelessWidget {
  const NavigatorItem({Key? key, required this.active, required this.text, }) : super(key: key);

  final bool active;
  final String text;
  final Color initialColor = const Color.fromRGBO(126, 132, 149, 1);
  final Color selectedButtonColor = const Color.fromRGBO(240, 80, 80, 1);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: (MobileDimensions.getWidth(context)/2) - 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: active ? Colors.white : Colors.transparent,
      ),
      child: Text(
        text,
        style: TextStyle(
          color:
          active ? selectedButtonColor : initialColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

