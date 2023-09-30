import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.onChangedEmail,
    required this.onChangedPassword,
    this.emailValidator,
    this.passwordValidator,
  }) : super(key: key);

  final String buttonText;
  final void Function() onPressed;
  final void Function(String) onChangedEmail;
  final void Function(String) onChangedPassword;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  @override
  Widget build(BuildContext context) {
    return Form(
      onChanged: onPressed,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Email',
            onChanged: onChangedEmail,
            validator: emailValidator,
          ),
          CustomTextFormField(
            label: 'Password',
            onChanged: onChangedPassword,
            validator: passwordValidator,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: MaterialButton(
              onPressed: () {},
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
