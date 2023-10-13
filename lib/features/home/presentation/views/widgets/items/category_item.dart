import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    Key? key,
    required this.categoryLabel,
    required this.imageName,
  }) : super(key: key);

  final String categoryLabel;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.0.w),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100.h,
            width: 118.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // image: DecorationImage(
              //   image: AssetImage(
              //     imageName,
              //   ),
              // ),
              gradient: LinearGradient(
                transform: GradientRotation(80),
                colors: [
                  Color.fromRGBO(244, 120, 114, 1),
                  Color.fromRGBO(246, 174, 79, 1),
                ],
              ),
            ),
            child: SizedBox(
              height: 50.h,
              width: 50.w,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: Image(
                  height: 80.h,
                  width: 80.w,
                  image: AssetImage(imageName),
                ),
              ),
            ),
          ),
          const Spacer(),
          Text(
            categoryLabel,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
