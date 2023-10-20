import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'action_button.dart';

class ActionButtonsRow extends StatelessWidget {
  const ActionButtonsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MobileDimensions.getWidth(context)-40,
      child: const Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ActionButton(
            buttonBackGround: Colors.white,
            textColor: Color.fromRGBO(81, 87, 101, 1),
            iconBackGround: Color.fromRGBO(81, 87, 101, 0.95),
            buttonText: 'SHARE THIS',
            icon: Icon(
              Icons.arrow_upward_outlined,
              color: Colors.white,
              size: 26,
            ),
          ),
          ActionButton(
            buttonBackGround: Color.fromRGBO(244, 104, 102, 1),
            textColor: Colors.white,
            iconBackGround: Colors.white,
            buttonText: 'ADD TO CART',
            icon: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color.fromRGBO(244, 104, 102, 1),
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
