import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';

import '../auth/user.dart';

abstract class ProfileRepository{
  Future<Either<ErrorMessage,Success>> updateUserDetails(User user,BuildContext context);

  Future<Either<ErrorMessage,User>> getUserDetails(BuildContext context);
}