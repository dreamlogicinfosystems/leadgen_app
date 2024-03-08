import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';

abstract class DepartmentRepository{
  Future<Either<ErrorMessage,Success>> createDepartment(String departmentName,BuildContext context);
}