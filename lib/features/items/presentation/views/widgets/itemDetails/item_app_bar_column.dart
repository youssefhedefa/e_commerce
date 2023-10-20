import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class ItemAppBarColumn extends StatelessWidget {
  const ItemAppBarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MobileDimensions.getWidth(context)/2.7,
      child: Column(
        children: [
          const Text(
            'V Neck T shirt -Pink',
            style: TextStyle(
              color: Color.fromRGBO(126, 132, 149, 1),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '\$24.55',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                width: 56,
                height: 26,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 104, 102, 1),
                    borderRadius: BorderRadiusDirectional.circular(20)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 18,
                    ),
                    Text(
                      '4.5',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
