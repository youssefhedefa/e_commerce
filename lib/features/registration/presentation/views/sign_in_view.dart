import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:flutter/material.dart';

import 'widgets/registration_information.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegistrationInformation(
        label: 'Sign Up',
        viewName: Constants.signInView,
        passwordValidator: (value) {
          if (value!.isEmpty) {
            return 'password is required';
          }
          return null;
        },
        emailValidator: (value){
          if (value!.isEmpty) {
            return 'email is required';
          }
          return null;
        },
        text: 'Already have account? ',
        clickableText: 'Log In',
        onTextTap: () {
          Navigator.pushNamed(context, MyRoutes.logInView);
        },
      ),
    );
  }
}
