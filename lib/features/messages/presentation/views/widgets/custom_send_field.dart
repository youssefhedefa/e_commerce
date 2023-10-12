import 'package:flutter/material.dart';

class CustomSendField extends StatelessWidget {
  const CustomSendField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18.0,
        right: 18,
        top: 16,
        bottom: 12,
      ),
      child: Container(
        constraints: const BoxConstraints(minHeight: 50),
        child: TextField(
          maxLines: null, // Set maxLines to null or any value greater than 1
          // keyboardType: TextInputType.multiline,
          // textInputAction: TextInputAction.newline,
          // controller: cCubit.textController,
          // focusNode: cCubit.focusNode,
          // onSubmitted: (message) {
          //   submittedButton(cCubit);
          // },
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                color: Color.fromRGBO(236, 89, 89, 1),
              ),
            ),
            suffixIcon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  width: 1,
                  color: Colors.grey.shade400,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.navigation_rounded,
                    color: Color.fromRGBO(236, 89, 89, 1),
                    size: 30,
                  ),
                ),
              ],
            ),
            hintText: 'send a message',
          ),
        ),
      ),
    );
  }
}
