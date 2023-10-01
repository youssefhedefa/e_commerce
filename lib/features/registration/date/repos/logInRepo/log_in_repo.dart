import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class LogInRepo
{
  Future<Either<String,UserCredential>> logIn(String email,String password);
}