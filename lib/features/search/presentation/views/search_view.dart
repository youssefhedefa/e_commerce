import 'package:e_commerce/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/custom_label.dart';
import 'package:flutter/material.dart';

import 'custom_search_field.dart';

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
                SizedBox(height: 20,),
                CustomSearchField(),

              ],
            ),
          ),
      ),
    );
  }
}
