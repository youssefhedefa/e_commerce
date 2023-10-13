import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNotifyIcon extends StatelessWidget {
  const CustomNotifyIcon(
      {Key? key, this.onPressed, required this.icon, this.number})
      : super(key: key);

  final void Function()? onPressed;
  final IconData icon;
  final String? number;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          Icon(
            icon,
            size: 32.sp,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 22.w,
              height: 18.h,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(8)),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  number ?? '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
