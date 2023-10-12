import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({Key? key, required this.name, required this.time, required this.message, required this.storeName}) : super(key: key);

  final String name;
  final String storeName;
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    const message = Constants.message;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, MyRoutes.chatView);
        },
        child: Row(
          children: [
            CircleAvatar(
              radius: 38,
              backgroundColor: const Color.fromRGBO(190, 230, 231, 1),
              child: Text(
                name,
                style: const TextStyle(
                  color: Color.fromRGBO(136, 199, 198, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const  SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    storeName,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    message,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 30,),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(time),
                const SizedBox(height: 20,),
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Color.fromRGBO(236, 89, 89, 1),
                  child: Text(
                    '6',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
