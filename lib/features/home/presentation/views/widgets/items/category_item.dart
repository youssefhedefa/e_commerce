import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    Key? key,
    required this.categoryLabel,
    required this.imageName, this.onTap,
  }) : super(key: key);

  final String categoryLabel;
  final String imageName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MobileDimensions.getWidth(context)-60)/4,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 100.h,
                  //width: 118.w,
                  width: (MobileDimensions.getWidth(context)-70)/4,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      transform: GradientRotation(80),
                      colors: [
                        Color.fromRGBO(244, 120, 114, 1),
                        Color.fromRGBO(246, 174, 79, 1),
                      ],
                    ),
                  ),
                  // child: SizedBox(
                  //   height: 50.h,
                  //   width: 50.w,
                  //   child: CircleAvatar(
                  //     radius: 20,
                  //     backgroundColor: Colors.transparent,
                  //     child: Image(
                  //       height: 80.h,
                  //       width: 80.w,
                  //       image: AssetImage(imageName),
                  //     ),
                  //   ),
                  // ),

                ),
                SizedBox(
                  child: Image(
                    width: 70,
                    height: 70,
                    fit: BoxFit.fill,
                    image: AssetImage(imageName),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            categoryLabel,
            overflow: TextOverflow.ellipsis,
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
