import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class ItemPic extends StatelessWidget {
  const ItemPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: (MobileDimensions.getHeight(context)/2)-60,
          width: MobileDimensions.getWidth(context),
          color: Colors.transparent,
        ),
        Image(
          height: (MobileDimensions.getHeight(context)/2)-100,
          width: MobileDimensions.getWidth(context)-100,
          fit: BoxFit.fill,
          image: AssetImage(MyAssets.apparel),
        ),
      ],
    );
  }
}
