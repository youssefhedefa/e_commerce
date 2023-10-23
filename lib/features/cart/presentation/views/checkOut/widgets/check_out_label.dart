import 'package:flutter/material.dart';

class CheckOutLabel extends StatelessWidget {
  const CheckOutLabel({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(81, 87, 101, 0.7),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
