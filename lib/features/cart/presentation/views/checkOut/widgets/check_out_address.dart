import 'package:flutter/material.dart';

class CheckOutAddress extends StatelessWidget {
  const CheckOutAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'NO 123, Sub Street ',
          style: TextStyle(
            color: Color.fromRGBO(81, 87, 101, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Main Street ',
          style: TextStyle(
            color: Color.fromRGBO(81, 87, 101, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'City Name ',
          style: TextStyle(
            color: Color.fromRGBO(81, 87, 101, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          'Country ',
          style: TextStyle(
            color: Color.fromRGBO(81, 87, 101, 1),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
