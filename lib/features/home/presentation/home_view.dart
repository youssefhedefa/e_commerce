import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';

import 'views/widgets/category_item.dart';
import 'views/widgets/custom_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20,top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomLabel(label: 'Categories'),
              CustomCategoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
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
