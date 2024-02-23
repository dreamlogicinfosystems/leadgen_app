import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/domain/auth/user.dart';

abstract class AuthRepository{
  Future<Either<ErrorMessage,Success>> tryLogin(String email,String password,BuildContext context);

  Future<Either<ErrorMessage,Success>> registerUser(User user,BuildContext context);
}