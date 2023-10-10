import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'option_item.dart';

class SecondOptionsContainer extends StatelessWidget {
  const SecondOptionsContainer({Key? key}) : super(key: key);

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
            icon: Icon(Icons.mail_outlined),
            text: 'Invite Friend',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.support_agent_outlined),
            text: 'Customer Support',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.star_border_outlined),
            text: 'Rate Us',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.edit_outlined),
            text: 'Make Suggest',
          ),
        ],
      ),
    );
  }
}
