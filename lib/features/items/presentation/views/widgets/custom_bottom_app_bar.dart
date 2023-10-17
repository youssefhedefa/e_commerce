import 'package:e_commerce/features/profile/presentation/views/widgets/custom_text_bottom.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomBottomAppBar({
    super.key,
  });
  @override
  State<CustomBottomAppBar> createState() => _CustomMessageAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(55);
}

class _CustomMessageAppBarState extends State<CustomBottomAppBar> {
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          CustomTextBottom(label: 'Best Match'),
          CustomTextBottom(label: 'Top Rated'),
          CustomTextBottom(label: 'Price Low-High' ),
          CustomTextBottom(label: 'Price High-Low'),
        ],
      ),
    );
  }
}

