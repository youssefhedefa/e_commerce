import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/widgets/welcomPanel.dart';
import 'package:flutter/material.dart';
import 'widgets/custom_form.dart';
import 'widgets/footer.dart';
import 'widgets/social_media_row.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MobileDimensions.getHeight(context),
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: MobileDimensions.getHeight(context) * 0.2,
              start: 28,
              end: 28,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Panel(text: 'Log In'),
                const SizedBox(
                  height: 56,
                ),
                CustomForm(
                  onPressed: () {},
                  buttonText: 'Log In',
                  onChangedEmail: (value) {},
                  onChangedPassword: (value) {},
                ),
                const SizedBox(
                  height: 36,
                ),
                const Text(
                  'Or continue with',
                  style: TextStyle(
                    color: Color(0xFF64748B),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.43,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SocialMediaRow(),
                const Spacer(),
                const SizedBox(
                  height: 30,
                ),
                const Footer(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

