import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/error.dart';

abstract class LicenceRepository{
  Future<Either<ErrorMessage,String>> checkLicenceValidity(BuildContext context);
}