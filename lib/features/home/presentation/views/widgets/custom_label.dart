import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style:const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.8,
      ),
    );
  }
}