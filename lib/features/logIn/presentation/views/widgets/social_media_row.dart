import 'package:e_commerce/core/utils/my_assets.dart';
import 'package:e_commerce/features/logIn/presentation/views/custom_social_media_container.dart';
import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget
{
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
