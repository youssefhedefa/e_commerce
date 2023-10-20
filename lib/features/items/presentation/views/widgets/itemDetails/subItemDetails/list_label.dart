import 'package:flutter/material.dart';

class ListLabel extends StatelessWidget {
  const ListLabel({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
        color: Color.fromRGBO(124, 133, 153, 1),
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    );
  }
}
