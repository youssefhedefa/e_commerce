import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
  const Panel({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        text,
        style:const TextStyle(
          color: Color(0xFF1E293B),
          fontSize: 32,
          fontWeight: FontWeight.w800,
          letterSpacing: 1.28,
        ),
      ),
    );
  }
}
