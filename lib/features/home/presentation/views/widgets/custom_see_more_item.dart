import 'package:flutter/material.dart';

class CustomSeeMoreItem extends StatelessWidget {
  const CustomSeeMoreItem({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: Container(
        width: 130,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SEE MORE',
              style: TextStyle(
                color: Colors.grey[600],

              ),
            ),
            const SizedBox(width: 10,),
            CircleAvatar(
              backgroundColor: color,
              child:const Icon(
                Icons.navigate_next,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
