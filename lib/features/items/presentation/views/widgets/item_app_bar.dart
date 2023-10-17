import 'package:e_commerce/features/search/presentation/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

import 'custom_bottom_app_bar.dart';

class ItemAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color.fromRGBO(240, 80, 80, 1),
          size: 26,
        ),
      ),
      title: const CustomSearchField(),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.filter_alt_outlined,
            color: Color.fromRGBO(240, 80, 80, 1),
            size: 30,
          ),
        ),
      ],
      bottom: const CustomBottomAppBar(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(110);
}
