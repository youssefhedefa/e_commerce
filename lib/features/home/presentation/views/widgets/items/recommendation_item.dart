import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationItems extends StatelessWidget {
  const RecommendationItems({Key? key, required this.image, required this.name, required this.price}) : super(key: key);

  final String image,name,price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0.w),
      child: Container(
        width: MobileDimensions.getWidth(context) * 0.28.w,
        height: MobileDimensions.getHeight(context) * 0.175.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 14.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: 80.h,
                  width: 80.w,
                  fit: BoxFit.fill,
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
              const Expanded(child: SizedBox(height: 3,)),
              Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16.sp
                ),
              ),
              //const Expanded(child: SizedBox(height: 3,)),
              Text(
                price,
                style:const TextStyle(
                    fontWeight: FontWeight.w700
                ),
              ),
              const Expanded(child: SizedBox(height: 10,)),
            ],
          ),
        ),
      ),
    );
  }
}
