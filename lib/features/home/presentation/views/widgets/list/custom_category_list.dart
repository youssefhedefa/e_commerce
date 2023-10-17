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
        scrollDirection: Axis.horizontal,
        children: [
          CustomCategoryItem(
            categoryLabel: 'Apparel',
            imageName: MyAssets.apparel,
            onTap: (){
              Navigator.pushNamed(context, MyRoutes.itemsView);
            },
          ),
          CustomCategoryItem(
            categoryLabel: 'Electronics',
            imageName: MyAssets.electronic,
          ),
          CustomCategoryItem(
            categoryLabel: 'Sports',
            imageName: MyAssets.sport,
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



