import 'package:either_dart/either.dart';

import 'package:flutter/cupertino.dart';

import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';

import '../../domain/department/department_repository.dart';
import 'department_data_source.dart';

class DepartmentRepositoryImpl extends DepartmentRepository{
  final DepartmentDataSource _departmentDataSource;
  DepartmentRepositoryImpl(this._departmentDataSource);

  @override
  Future<Either<ErrorMessage, Success>> createDepartment(String departmentName, BuildContext context) async{
    final tryCreateDep = await _departmentDataSource.createDepartmentOnServer(departmentName, context);

    return tryCreateDep.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }
}