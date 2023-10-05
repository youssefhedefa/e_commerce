import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'custom_notify_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MobileDimensions.getWidth(context),
      height: 60,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomNotifyIcon(
            icon: Icons.mode_comment_outlined,
            onPressed: (){},
            number: '10',
          ),
          const SizedBox(width: 8,),
          CustomNotifyIcon(
            icon: Icons.notifications_none_outlined,
            onPressed: (){},
            number: '5',
          ),

        ],
      ),
    );
  }
}
