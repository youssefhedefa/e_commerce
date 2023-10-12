import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MobileDimensions.getWidth(context) * 0.7,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            Constants.message,
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(81, 87, 101, 1),
            ),
          ),
        ),
      ),
    );
  }
}
