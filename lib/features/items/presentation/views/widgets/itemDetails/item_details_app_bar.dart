import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_notify_icon.dart';
import 'package:flutter/material.dart';

import 'item_app_bar_column.dart';
class ItemDetailsAppBar extends StatelessWidget {
  const ItemDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MobileDimensions.getWidth(context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Color.fromRGBO(240, 80, 80, 1),
              size: 30,
            ),
          ),
          const ItemAppBarColumn(),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: CustomNotifyIcon(
              icon: Icons.shopping_cart_outlined,
              number: '7',
            ),
          ),
        ],
      ),
    );
  }
}
