import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/items/presentation/views/widgets/itemDetails/productSection/action_button.dart';
import 'package:flutter/material.dart';

class CheckOutFooter extends StatelessWidget {
  const CheckOutFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5.0,
        bottom: 5.0,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            SizedBox(
              width: (MobileDimensions.getWidth(context) - 40) / 2,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(
                      color: Color.fromRGBO(81, 87, 101, 0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '60.00\$',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Free Domestic Shipping',
                    style: TextStyle(
                      color: Color.fromRGBO(81, 87, 101, 0.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: (MobileDimensions.getWidth(context) - 40) / 2,
              child: const ActionButton(
                buttonBackGround: Color.fromRGBO(244, 104, 102, 1),
                textColor: Colors.white,
                iconBackGround: Colors.white,
                buttonText: 'PLACE ORDER',
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Color.fromRGBO(244, 104, 102, 1),
                  size: 26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
