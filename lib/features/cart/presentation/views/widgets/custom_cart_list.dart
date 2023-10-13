import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';
import 'custom_divider.dart';

class CustomCartList extends StatelessWidget {
  const CustomCartList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
          itemBuilder: ((context, index) => const CartItem()),
          separatorBuilder: (context, index) =>  CustomDivider(width: MobileDimensions.getWidth(context)-40-50*2,),
          itemCount: 3),
    );
  }
}
