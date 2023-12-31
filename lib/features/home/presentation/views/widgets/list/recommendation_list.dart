import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/items/recommendation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: SizedBox(
        height: MobileDimensions.getHeight(context) * 0.175.h,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            RecommendationItems(
              image: MyAssets.shoes,
              price: '\$ Price',
              name: 'Shoes',
            ),
            RecommendationItems(
              image: MyAssets.backpack,
              price: '\$ Price',
              name: 'Backpack',
            ),
            RecommendationItems(
              image: MyAssets.scarf,
              price: '\$ Price',
              name: 'Scarf',
            ),

          ],
        ),
      ),
    );
  }
}
