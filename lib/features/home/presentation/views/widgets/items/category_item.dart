import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    Key? key,
    required this.categoryLabel,
    required this.imageName,
  }) : super(key: key);

  final String categoryLabel;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 100,
            width: 118,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  imageName,
                ),
              ),
              gradient: const LinearGradient(
                transform: GradientRotation(80),
                colors: [
                  Color.fromRGBO(244, 120, 114, 1),
                  Color.fromRGBO(246, 174, 79, 1),
                ],
              ),
            ),
          ),
          const Spacer(),
          Text(
            categoryLabel,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
