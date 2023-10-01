import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FireBaseServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<UserCredential> createUser(String email, String password) async {

    final auth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);

    return auth;
  }

  Future<UserCredential> logInUser(String email, String password) async
  {
    final auth = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    return auth;
  }


  void checkResponseState (BuildContext context,String snackBarText, var response){

    String emailErr = 'An internal error has occurred. [ INVALID_LOGIN_CREDENTIALS ]';
    if(response.isLeft()){
      String err = response.value;
      if(context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: err != emailErr ? Text(err): const Text('Your email or password is not correct'),
            duration: const Duration(seconds: 5),
          ),
        );
      }
    }
    else
    {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('success'),
          duration: Duration(seconds: 3),
        ),
      );
    }
  }

}
