import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'option_item.dart';

class FirstOptionsContainer extends StatelessWidget {
  const FirstOptionsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MobileDimensions.getHeight(context) * 0.28,
      width: MobileDimensions.getWidth(context),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.circular(15),
      ),
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const OptionItem(
            icon: Icon(Icons.list_outlined),
            text: 'All My Orders',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.beach_access_outlined),
            text: 'Pending Shipment',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.shopping_bag_outlined),
            text: 'Pending Payment',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.credit_card_outlined),
            text: 'Finished Orders',
          ),
        ],
      ),
    );
  }
}
