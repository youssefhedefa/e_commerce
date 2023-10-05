import 'package:flutter/material.dart';


class CustomNotifyIcon extends StatelessWidget {
  const CustomNotifyIcon({Key? key, this.onPressed,required this.icon, this.number}) : super(key: key);

  final void Function()? onPressed;
  final IconData icon;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 32,
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 22,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(8)
            ),
            child:  Align(
              alignment: Alignment.topCenter,
              child: Text(
                number ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
