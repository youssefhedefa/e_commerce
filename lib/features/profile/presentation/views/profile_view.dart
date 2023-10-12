import 'package:e_commerce/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce/features/profile/presentation/views/widgets/first_options_container.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_profile_label.dart';
import 'widgets/second_options_container.dart';
import 'widgets/third_options_container.dart';

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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Column(
              children: [
                const CustomAppBar(),
                const CustomProfileLabel(),
                Expanded(
                  child: ListView(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      FirstOptionsContainer(),
                      SizedBox(
                        height: 30,
                      ),
                      SecondOptionsContainer(),
                      SizedBox(
                        height: 30,
                      ),
                      ThirdOptionsContainer(),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            'LOG OUT',
                            style: TextStyle(
                                color: Color.fromRGBO(239, 86, 95, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
