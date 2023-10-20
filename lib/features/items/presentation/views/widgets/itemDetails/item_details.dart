import 'package:flutter/material.dart';
import 'item_details_app_bar.dart';
import 'item_pic.dart';
import 'navigator_list.dart';
import 'productSection/item_product_navigator_viewer.dart';

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
              ItemProductNavigatorViewer(),
            ],
          ),
        ),
      ),
    );
  }
}





