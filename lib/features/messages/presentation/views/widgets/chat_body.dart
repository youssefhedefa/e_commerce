import 'package:flutter/material.dart';

import 'custom_send_field.dart';
import 'message_list.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  color: const Color.fromRGBO(245, 246, 248, 1),
                ),
                const MessageList(),
              ],
            ),
          ),
          const CustomSendField(),
        ],
      ),
    );
  }
}
