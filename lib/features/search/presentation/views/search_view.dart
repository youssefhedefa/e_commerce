import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_search_field.dart';
import 'widgets/recently_item.dart';
import 'widgets/recently_viewed_text.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          transform: GradientRotation(80),
          colors: [
            Color.fromRGBO(245, 246, 248, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomLabel(label: 'Search'),
              SizedBox(
                height: 20,
              ),
              CustomSearchField(),
              RecentlyViewedText(),
              RecentlyItemsList(),
            ],
          ),
        ),
      ),
    );
  }
}

class RecentlyItemsList extends StatelessWidget {
  const RecentlyItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          RecentlyItem(
            image: MyAssets.scarf,
            name: 'Scarf',
            price: '15.00',
          ),
          RecentlyItem(
            image: MyAssets.shoes,
            name: 'Shoes',
            price: '150.00',

          ),
        ],

      ),
    );
  }
}
