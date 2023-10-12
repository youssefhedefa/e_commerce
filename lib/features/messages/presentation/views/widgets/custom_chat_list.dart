import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import 'custom_chat_item.dart';

class CustomChatList extends StatelessWidget {
  const CustomChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),

          const CustomChatItem(name: 'SS', message: '', time: '9:20', storeName: 'Smiley\'s Store',),
          CustomDivider(width: MobileDimensions.getWidth(context)-40-38*2,),


        ],
      ),
    );
  }
}
