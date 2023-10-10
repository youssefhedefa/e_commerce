import 'package:flutter/material.dart';

class CustomCheckOutButton extends StatelessWidget {
  const CustomCheckOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0,right: 10,bottom: 16),
      child: Container(
        width: 190,
        height: 56,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(239, 86, 95, 1),
          borderRadius: BorderRadiusDirectional.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(4, 4), // changes position of shadow
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'CHECK OUT',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(width: 40,),
            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child:Icon(
                  Icons.navigate_next,
                  color: Color.fromRGBO(239, 86, 95, 1),
                  size: 30,
                ),
              ),
            ),
            //SizedBox(width: 12,),
          ],
        ),
      ),
    );
  }
}
