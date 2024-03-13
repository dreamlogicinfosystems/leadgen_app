import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';

import '../../constants/error.dart';

abstract class DepartmentUserRepository{
  Future<Either<ErrorMessage,Success>> saveDepartmentUser(DepartmentUser departmentUser,BuildContext context);

  Future<Either<ErrorMessage,List<DepartmentUser>>> getDepartmentUser(BuildContext context);

  Future<Either<ErrorMessage,Success>> updateDepartmentUser(DepartmentUser departmentUser,BuildContext context);

  Future<Either<ErrorMessage,Success>> deleteDepartmentUser(int userId,BuildContext context);
}