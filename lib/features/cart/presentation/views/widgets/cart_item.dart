import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

import 'item_details_column.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MobileDimensions.getWidth(context) - 40,
      height: 176,
      //color: Colors.black,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 56,
            child: Image(
              image: AssetImage(MyAssets.scarf),
              width: 96,
              height: 96,
              fit: BoxFit.fill,
            ),
          ),
          const ItemDetailsColumn(),
        ],
      ),
    );
  }
}


