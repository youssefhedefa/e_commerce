import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'message_bubble.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: MobileDimensions.getWidth(context) * 0.7,
      ),
      child: ListView.separated(
        itemBuilder: (context, index) => const MessageBubble(),
        itemCount: 5,
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
          height: 20,
        ),
      ),
    );
  }
}
