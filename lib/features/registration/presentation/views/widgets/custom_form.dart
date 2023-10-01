import 'package:e_commerce/core/utils/const.dart';
import 'package:e_commerce/core/utils/firebase_services.dart';
import 'package:e_commerce/features/registration/date/repos/logInRepo/log_in_repo_impli.dart';
import 'package:e_commerce/features/registration/date/repos/signInRepo/sign_up_repo_impli.dart';
import 'package:flutter/material.dart';
import 'custom_text_form_field.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({
    Key? key,
    required this.buttonText,
    this.emailValidator,
    this.passwordValidator,
    this.viewName,
  }) : super(key: key);

  final String buttonText;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? passwordValidator;
  final String? viewName;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {

  GlobalKey<FormState> formKey = GlobalKey();
  String? email;
  String? password;
  bool visibility = false;
  final SignInRepoImpli signInRepoImpli = SignInRepoImpli();
  final LogInRepoImpli logInImpli = LogInRepoImpli();
  final FireBaseServices _services = FireBaseServices();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Email',
            onChanged: (value){
              email = value;
            },
            validator: widget.emailValidator,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
          ),
          CustomTextFormField(
            label: 'Password',
            onChanged: (value){
              password = value;
            },
            validator: widget.passwordValidator,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if(visibility == false)
                  {
                    visibility = true;
                  }
                  else{
                    visibility = false;
                  }
                });
              },
              icon: visibility == true ? const Icon(Icons.visibility) : const Icon(Icons.visibility_off),
            ),
            obscureText: visibility,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Builder(
              builder: (context) {
                return MaterialButton(
                  onPressed: () async {
                    if(formKey.currentState!.validate())
                    {
                      if(widget.viewName == Constants.logInView)
                      {
                        //print(email! + password!);
                        final response = await logInImpli.logIn(email!, password!);
                        String message = response.toString();
                        if(context.mounted){
                          _services.checkResponseState(context, message, response);
                        }

                      }
                      else if(widget.viewName == Constants.signInView){
                        final response = await  signInRepoImpli.signIn(email!, password!);
                        String message = response.toString();
                        if(context.mounted){
                          _services.checkResponseState(context, message, response);
                        }
                      }
                    }
                    else {
                      return;
                    }
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.buttonText,
                      style:const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
