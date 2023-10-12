import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/cart/presentation/views/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'widgets/chat_body.dart';
import 'widgets/custom_message_app_bar.dart';
import 'widgets/order_item.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomMessageAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child:
                CustomDivider(width: MobileDimensions.getWidth(context) - 40),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: OrderItem(),
          ),
          const ChatBody(),
        ],
      ),
    );
  }
}



