import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_label.dart';
import 'list/offer_list.dart';
import 'list/recommendation_list.dart';
import 'list/custom_category_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);


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
              CustomLabel(label: 'Categories'),
              Expanded(child: SizedBox(height: 8,)),
              CustomCategoryList(),
              Expanded(child: SizedBox(height: 8,)),
              CustomLabel(label: 'Latest'),
              Expanded(child: SizedBox(height: 8,)),
              OfferList(),
              Expanded(child: SizedBox(height: 8,)),
              RecommendationList(),
            ],
          ),
        ),
      ),
    );
  }
}
