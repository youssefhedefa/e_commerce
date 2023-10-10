import 'package:e_commerce/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_profile_label.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: const Color.fromRGBO(245, 246, 248, 1),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Column(
              children: [
                CustomAppBar(),
                CustomProfileLabel(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
