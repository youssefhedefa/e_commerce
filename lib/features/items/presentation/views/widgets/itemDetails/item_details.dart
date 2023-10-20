import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:flutter/material.dart';
import 'item_details_app_bar.dart';
import 'productSection/item_product_navigator_viewer.dart';
import 'reviewsSection/item_reviews_navigator_viewer.dart';
import 'subItemDetails/item_pic.dart';
import 'subItemDetails/navigator_item.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({Key? key,}) : super(key: key);


  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {

  int currentIndex = 0;
  List<String> navigatePageNames = ['Product', 'Details', 'Reviews'];
  List<dynamic> screens = const [
    ItemProductNavigatorViewer(),
    ItemProductNavigatorViewer(),
    ItemReviewsNavigatorViewer(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
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
              const ItemDetailsAppBar(),
              const ItemPic(),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 46,
                  width: MobileDimensions.getWidth(context),
                  child: ListView.builder(
                    itemCount: navigatePageNames.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: NavigatorItem(
                          active: currentIndex == index,
                          text: navigatePageNames[index],
                        ),
                      );
                    },
                  ),
                ),
              ),
              screens[currentIndex],
            ],
          ),
        ),
      ),
    );
  }
}


