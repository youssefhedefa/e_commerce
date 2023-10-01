import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class SignInRepo
{
  Future<Either<String,UserCredential>> signIn(String email,String password);
}