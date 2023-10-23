import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/items/category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        //physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CustomCategoryItem(
              categoryLabel: 'Apparel',
              imageName: MyAssets.apparel,
              onTap: (){
                Navigator.pushNamed(context, MyRoutes.itemsView);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CustomCategoryItem(
              categoryLabel: 'Electronics',
              imageName: MyAssets.electronic,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CustomCategoryItem(
              categoryLabel: 'Sports',
              imageName: MyAssets.sport,
            ),
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



