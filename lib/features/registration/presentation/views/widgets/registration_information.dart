import 'package:e_commerce/core/utils/mobile_dimensions.dart';
import 'package:e_commerce/core/utils/widgets/welcome_panel.dart';
import 'package:flutter/material.dart';
import 'custom_form.dart';
import 'footer.dart';
import 'social_media_row.dart';

class RegistrationInformation extends StatelessWidget {
  const RegistrationInformation({
    Key? key,
    required this.label,
    required this.text,
    required this.clickableText,
    this.onTextTap,
    this.emailValidator,
    this.passwordValidator,
    this.viewName,
  }) : super(key: key);

  final String label;
  final String text;
  final String clickableText;
  final void Function()? onTextTap;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  final String? viewName;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MobileDimensions.getHeight(context),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: MobileDimensions.getHeight(context) * 0.15,
            start: 28,
            end: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Panel(text: label),
              const SizedBox(
                height: 66,
              ),
              CustomForm(
                buttonText: label,
                emailValidator: emailValidator,
                passwordValidator: passwordValidator,
                viewName: viewName,
              ),
              const SizedBox(
                height: 26,
              ),
              const Spacer(),
              const Text(
                'Or continue with',
                style: TextStyle(
                  color: Color(0xFF64748B),
                  fontSize: 18,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Spacer(),
              const SocialMediaRow(),
              const Spacer(),
              const SizedBox(
                height: 40,
              ),
              Footer(
                text: text,
                clickableText: clickableText,
                onTap: onTextTap,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
