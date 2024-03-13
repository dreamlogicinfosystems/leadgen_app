import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';

abstract class DepartmentRepository{
  Future<Either<ErrorMessage,Success>> createDepartment(String departmentName,BuildContext context);

  Future<Either<ErrorMessage,List<Department>>> getDepartment(BuildContext context);

  Future<Either<ErrorMessage,Success>> deleteDepartment(int deptId,BuildContext context);

  Future<Either<ErrorMessage,Success>> updateDepartment(Department department,BuildContext context);
}