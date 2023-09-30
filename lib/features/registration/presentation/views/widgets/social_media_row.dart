import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/registration/presentation/views/widgets/custom_social_media_container.dart';
import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget
{
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MobileDimensions.height*0.14,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomSocialMediaContainer(
            label: 'Google',
            iconName: MyAssets.google,
          ),
          CustomSocialMediaContainer(
            label: 'Facebook',
            iconName: MyAssets.facebook,
          ),
        ],
      ),
    );
  }
}
