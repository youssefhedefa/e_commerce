import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/utils/services/firebase_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'sign_in_repo.dart';

class SignInRepoImpli implements SignInRepo{

  final FireBaseServices fireBaseServices = FireBaseServices();

  @override
  Future<Either<String, UserCredential>> signIn(String email, String password)async {
    try{
      var userCredential = await fireBaseServices.createUser(email, password);
      return right(userCredential);
    }on FirebaseAuthException catch(e)
    {
      return left(e.message!);
    }

  }
}