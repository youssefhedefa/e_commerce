import 'package:flutter/material.dart';

class CustomAdvanceButton extends StatelessWidget {
  const CustomAdvanceButton({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.deepPurple,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}
