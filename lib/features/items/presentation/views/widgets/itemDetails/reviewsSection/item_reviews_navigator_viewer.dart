import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';

import 'review_item.dart';
class ItemReviewsNavigatorViewer extends StatelessWidget {
  const ItemReviewsNavigatorViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MobileDimensions.getWidth(context),
        padding: const EdgeInsets.only(
          left: 20,
          top: 20,
          right: 20,
        ),
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return const ReviewItem();
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 14,
            );
          },
          itemCount: 4,
        ),
      ),
    );
  }
}
