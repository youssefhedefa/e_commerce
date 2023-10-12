import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Container(
        width: MobileDimensions.getWidth(context) - 40,
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 7,
                    blurRadius: 3,
                    offset: const Offset(0, 0), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(MyAssets.scarf),
                ),
              ),
            ),
            const SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'Order: #1086508',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'Red Scarf, 2ft, Red',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                  ),
                  const Text(
                    '\$20.00',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Color.fromRGBO(242, 111, 106, 1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

