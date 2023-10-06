import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/items/category_item.dart';
import 'package:flutter/material.dart';
class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MobileDimensions.getWidth(context),
      height: 170,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          CustomCategoryItem(
            categoryLabel: 'Apparel',
            imageName: MyAssets.apparel,
          ),
          CustomCategoryItem(
            categoryLabel: 'Beauty',
            imageName: MyAssets.beauty,
          ),
          CustomCategoryItem(
            categoryLabel: 'Shoes',
            imageName: MyAssets.boot,
          ),
          CustomCategoryItem(
            categoryLabel: 'More',
            imageName: MyAssets.more,
          ),
        ],
      ),
    );
  }
}



