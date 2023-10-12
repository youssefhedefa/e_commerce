import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/utils/services/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LogInRepoImpli{
  final FireBaseServices fireBaseServices = FireBaseServices();

  Future<Either<String, UserCredential>> logIn(String email, String password)async {
    try{
      var userCredential = await fireBaseServices.logInUser(email, password);
      return right(userCredential);
    }on FirebaseAuthException catch(e)
    {
      return left(e.message!);
    }
  }

}