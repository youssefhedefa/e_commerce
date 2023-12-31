import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/items/offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferList extends StatelessWidget {
  const OfferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MobileDimensions.getHeight(context)*0.2.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          OffersItem(
            banner: MyAssets.summerBanner,
            color: const Color.fromRGBO(81, 219, 239, 1),
          ),
          OffersItem(
            banner: MyAssets.sportBanner,
            color: const Color.fromRGBO(197, 92, 41, 1),
          ),
        ],
      ),
    );
  }
}
