import 'package:flutter/material.dart';

class CheckOutDivider extends StatelessWidget {
  const CheckOutDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Divider(
        color: Color.fromRGBO(175, 178, 185, 1),
        height: 2,
        endIndent: 12,
      ),
    );

  }
}
