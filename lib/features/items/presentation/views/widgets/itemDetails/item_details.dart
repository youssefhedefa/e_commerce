import 'package:flutter/material.dart';
import 'item_details_app_bar.dart';
import 'reviewsSection/item_reviews_navigator_viewer.dart';
import 'subItemDetails/item_pic.dart';
import 'subItemDetails/navigator_list.dart';

class ItemDetailsView extends StatelessWidget {
  const ItemDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            transform: GradientRotation(80),
            colors: [
              Color.fromRGBO(171, 171, 173, 0.2),
              Color.fromRGBO(255, 255, 255, 1),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              ItemDetailsAppBar(),
              ItemPic(),
              NavigatorList(),
              //ItemProductNavigatorViewer(),
              ItemReviewsNavigatorViewer()
            ],
          ),
        ),
      ),
    );
  }
}


