import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_see_more_item.dart';
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
            height: MobileDimensions.getHeight(context)*0.25,
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
          CustomSeeMoreItem(color: color),
        ],
      ),
    );
  }
}
