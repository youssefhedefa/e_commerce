import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:flutter/material.dart';
import 'widgets/registration_information.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: RegistrationInformation(
        label: 'Log In',
        viewName: Constants.logInView,
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
        text: 'Don’t have account? ',
        clickableText: 'Create now',
        onTextTap: () {
          Navigator.pushNamed(context, MyRoutes.signUpView);
        },
      ),
    );
  }
}
