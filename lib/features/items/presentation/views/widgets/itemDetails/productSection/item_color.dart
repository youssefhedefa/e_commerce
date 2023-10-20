import 'package:flutter/material.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({Key? key, required this.active, required this.color}) : super(key: key);

  final bool active;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: color,
        child: active ? const Icon(
          Icons.done,
          color: Colors.white,
          size: 30,
        ) : null,
      ),
    );
  }
}
