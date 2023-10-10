import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class CustomProfileLabel extends StatelessWidget {
  const CustomProfileLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 66,
          backgroundImage: AssetImage(
            MyAssets.profileImage,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          height: MobileDimensions.getHeight(context)*0.15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'June Doe',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
              const Spacer(),
              const Text(
                'june@gmail.com',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Container(
                width: 140,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: const Color.fromRGBO(208, 210, 215, 1))
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'EDIT PROFILE',
                    style: TextStyle(
                      color: Color.fromRGBO(124, 133, 153, 1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
