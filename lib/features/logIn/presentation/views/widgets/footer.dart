import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Don’t have account? ',
          style: TextStyle(
            color: Color(0xFF828282),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        GestureDetector(
          onTap: () {
            //  Navigator.pushNamed(context, MyRoutes.kSignIn);
          },
          child: const Text(
            'Create now',
            style: TextStyle(
              color: Color(0xFF000113),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
