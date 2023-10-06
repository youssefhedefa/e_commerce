import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class OffersItem extends StatelessWidget {
  const OffersItem({Key? key, required this.banner, required this.color}) : super(key: key);

  final String banner;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(
        children: [
          Container(
            width: MobileDimensions.getWidth(context)-40,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(20),
              child: Image(
                image: AssetImage(banner),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
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
          ),
        ],
      ),
    );
  }
}
