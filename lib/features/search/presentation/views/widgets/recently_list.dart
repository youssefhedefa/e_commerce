import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

import 'recently_item.dart';
class RecentlyItemsList extends StatelessWidget {
  const RecentlyItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          RecentlyItem(
            image: MyAssets.scarf,
            name: 'Scarf',
            price: '15.00',
          ),
          RecentlyItem(
            image: MyAssets.shoes,
            name: 'Shoes',
            price: '150.00',

          ),
        ],

      ),
    );
  }
}
