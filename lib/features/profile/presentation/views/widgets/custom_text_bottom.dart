import 'package:flutter/material.dart';

class CustomTextBottom extends StatefulWidget {
  const CustomTextBottom({Key? key, required this.label}) : super(key: key);

  final String label;

  @override
  State<CustomTextBottom> createState() => _CustomTextBottomState();
}

class _CustomTextBottomState extends State<CustomTextBottom> {
  final initialColor = const Color.fromRGBO(175, 181, 184, 1);
  final clickedColor = const Color.fromRGBO(240, 80, 80, 1);
  late Color color;

  @override
  void initState() {
    color = initialColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          if (color == initialColor) {
            color = clickedColor;
          } else {
            color = initialColor;
          }
        });
      },
      child: Text(
        widget.label,
        style: TextStyle(
          color: color,
          fontSize: 18,
        ),
      ),
    );
  }
}
