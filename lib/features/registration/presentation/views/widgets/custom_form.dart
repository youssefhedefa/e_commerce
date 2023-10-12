import 'package:e_commerce/core/utils/services/firebase_services.dart';
import 'package:e_commerce/features/registration/date/repos/check_state_methods.dart';
import 'package:e_commerce/features/registration/date/repos/logInRepo/log_in_repo_impli.dart';
import 'package:e_commerce/features/registration/date/repos/signInRepo/sign_up_repo_impli.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
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
  bool loading = false;
  final SignInRepoImpli _signInRepoImpli = SignInRepoImpli();
  final LogInRepoImpli _logInImpli = LogInRepoImpli();
  final FireBaseServices _services = FireBaseServices();
  final CheckStateMethods _checkStateMethods = CheckStateMethods();
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode1.dispose();
    _focusNode2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            label: 'Email',
            onChanged: (value) {
              email = value;
            },
            validator: widget.emailValidator,
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            focusNode: _focusNode1,
          ),
          CustomTextFormField(
            focusNode: _focusNode2,
            label: 'Password',
            onChanged: (value) {
              password = value;
            },
            validator: widget.passwordValidator,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  if (visibility == false) {
                    visibility = true;
                  } else {
                    visibility = false;
                  }
                });
              },
              icon: visibility == true
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
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
            child: Builder(builder: (context) {
              return ModalProgressHUD(
                inAsyncCall: loading,
                color: Colors.grey,
                opacity: 0.7,
                child: MaterialButton(
                  onPressed: () {
                    _focusNode1.unfocus();
                    _focusNode2.unfocus();
                    setState(() {
                      loading = true;
                    });
                    _checkStateMethods.checkFormValidation(
                      formKey: formKey,
                      context: context,
                      logInImpli: _logInImpli,
                      services: _services,
                      signInRepoImpli: _signInRepoImpli,
                      email: email,
                      password: password,
                      viewName: widget.viewName,
                    );
                    setState(() {
                      loading = false;
                    });
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.buttonText,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
