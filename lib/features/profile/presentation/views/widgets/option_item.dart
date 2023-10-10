import 'package:flutter/material.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({Key? key, required this.icon, required this.text})
      : super(key: key);

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          icon,
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 18,
            backgroundColor: Color.fromRGBO(229, 230, 235, 1),
            child: Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
    );
  }
}
