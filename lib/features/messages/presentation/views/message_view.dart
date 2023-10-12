import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:e_commerce/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_chat_list.dart';

class MessageView extends StatelessWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color.fromRGBO(236, 89, 89, 1),
          ),
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomLabel(label: 'Messages'),
              SizedBox(height: 18,),
              CustomSearchField(),
              SizedBox(height: 18,),
              CustomChatList(),
            ],
          ),
        ),
      ),
    );
  }
}
