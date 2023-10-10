import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'option_item.dart';

class ThirdOptionsContainer extends StatelessWidget {
  const ThirdOptionsContainer({Key? key}) : super(key: key);

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
            icon: Icon(Icons.notifications_none_outlined),
            text: 'Notifications Setting',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.privacy_tip_outlined),
            text: 'Privacy',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.policy_outlined),
            text: 'Legal information',
          ),
          CustomDivider(
              width: MobileDimensions.getWidth(context) - 40 - 40 - 20),
          const OptionItem(
            icon: Icon(Icons.question_answer_outlined),
            text: 'Questions',
          ),
        ],
      ),
    );
  }
}
