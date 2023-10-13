import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: 34.sp,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.8,
      ),
    );
  }
}