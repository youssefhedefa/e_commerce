import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class RecommendationItems extends StatelessWidget {
  const RecommendationItems({Key? key, required this.image, required this.name, required this.price}) : super(key: key);

  final String image,name,price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        width: MobileDimensions.getWidth(context) * 0.28,
        height: MobileDimensions.getHeight(context) * 0.18,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image(
                  height: 96,
                  width: 96,
                  fit: BoxFit.fill,
                  image: AssetImage(
                    image,
                  ),
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              Text(
                price,
                style:const TextStyle(
                    fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
