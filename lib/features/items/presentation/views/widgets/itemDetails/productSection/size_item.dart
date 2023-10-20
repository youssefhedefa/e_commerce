import 'package:flutter/material.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({Key? key, required this.active, required this.size}) : super(key: key);

  final bool active;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child:  Text(
        size,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: active ? const Color.fromRGBO(240, 80, 80, 1) : const Color.fromRGBO(126, 132, 149, 1),
        ),
      ),
    );
  }
}
