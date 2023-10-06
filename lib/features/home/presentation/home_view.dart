import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';
import 'views/widgets/custom_app_bar.dart';
import 'views/widgets/items/offer_list.dart';
import 'views/widgets/list/custom_category_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0,right: 20,top: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              CustomLabel(label: 'Categories'),
              CustomCategoryList(),
              CustomLabel(label: 'Latest'),
              SizedBox(height: 12,),
              OfferList(),
            ],
          ),
        ),
      ),
    );
  }
}



