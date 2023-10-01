import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/firebase_services.dart';
import 'package:e_commerce/features/registration/date/repos/signInRepo/sign_up_repo_impli.dart';
import 'package:flutter/material.dart';

import 'logInRepo/log_in_repo_impli.dart';

class CheckStateMethods {
  void checkFormValidation({
  required  GlobalKey<FormState> formKey,
    String? viewName,
    //required  String logInView,
    required  LogInRepoImpli logInImpli,
    String? email,
    String? password,
    required  FireBaseServices services,
    //required String signInView,
    required SignInRepoImpli signInRepoImpli,
    required BuildContext context,

  }
  ) async {
    if(formKey.currentState!.validate())
    {
      if(viewName == Constants.logInView)
      {
        final response = await logInImpli.logIn(email!, password!);
        String message = response.toString();
        if(context.mounted){
          services.checkResponseState(context, message, response);
        }

      }
      else if(viewName == Constants.signInView){
        final response = await  signInRepoImpli.signIn(email!, password!);
        String message = response.toString();
        if(context.mounted){
          services.checkResponseState(context, message, response);
        }
      }
    }
    else {
      return;
    }
  }
}
