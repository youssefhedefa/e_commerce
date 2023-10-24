import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';
import 'widgets/exit_button.dart';

class OrderPlacedView extends StatelessWidget {
  const OrderPlacedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(245, 246, 248, 1),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: ExitButton(),
            ),
            SizedBox(height: MobileDimensions.getHeight(context)/5,),
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Icon(
                  Icons.check,
                size: 60,
                color: Color.fromRGBO(238, 109, 108, 1),

              ),
            ),
            const SizedBox(height: 28,),
            const Text(
              'Order Placed!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: MobileDimensions.getWidth(context)-100,
              child: const Text(
                'Your order placed successfully for more details, Check all my orders page',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 36,),
          ],
        ),
      ),
    );
  }
}
