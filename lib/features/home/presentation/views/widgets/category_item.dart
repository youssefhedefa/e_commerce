import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({Key? key, required this.categoryLabel, required this.imageName, }) : super(key: key);

  final String categoryLabel;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MobileDimensions.getWidth(context) / 5.2,
          minWidth: MobileDimensions.getWidth(context) / 5.6,
          maxHeight: 170,
        ),
        color: Colors.transparent,
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: MobileDimensions.getWidth(context) / 7,
              minRadius: MobileDimensions.getWidth(context) / 7,
              backgroundColor: Colors.transparent,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    transform: GradientRotation(80),
                    colors: [
                      Color.fromRGBO(244, 120, 114, 1),
                      Color.fromRGBO(246, 174, 79, 1),
                    ],
                  ),
                ),
                child: Image(
                  image: AssetImage(
                      imageName,
                  ),
                ),
              ),
            ),
            Text(
              categoryLabel,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
