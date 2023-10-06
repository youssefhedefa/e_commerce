import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/list/recommendation_item.dart';
import 'package:flutter/material.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MobileDimensions.getHeight(context) * 0.18,
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
    );
  }
}
