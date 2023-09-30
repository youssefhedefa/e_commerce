import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.text, required this.clickableText, this.onTap}) : super(key: key);

  final String text;
  final String clickableText;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          text,
          style:const TextStyle(
            color: Color(0xFF828282),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child:  Text(
            clickableText,
            style:const TextStyle(
              color: Color(0xFF000113),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
