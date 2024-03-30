import 'package:either_dart/either.dart';

import 'package:flutter/cupertino.dart';

import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department/department_dto.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';

import '../../domain/department/department_repository.dart';
import 'department_data_source.dart';

class DepartmentRepositoryImpl extends DepartmentRepository{
  final DepartmentDataSource _departmentDataSource;
  DepartmentRepositoryImpl(this._departmentDataSource);

  @override
  Future<Either<ErrorMessage, Success>> createDepartment(String departmentName, BuildContext context) async{
    if(departmentName.isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryCreateDep = await _departmentDataSource.createDepartmentOnServer(departmentName, context);

      return tryCreateDep.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage,List<Department>>> getDepartment(BuildContext context) async{
    final getDepartments = await _departmentDataSource.getDepartmentsFromServer(context);

    return getDepartments.fold((error){
      return Left(error);
    },(departmentList){
      final departments = departmentList.map((e) => e.toDomain(e)).toList();
      return Right(departments);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> deleteDepartment(int deptId, BuildContext context) async{
    if(deptId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryDeleteDept = await _departmentDataSource.deleteDeptFromServer(deptId, context);

      return tryDeleteDept.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> updateDepartment(Department department, BuildContext context) async{
    if(department==const Department()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final dtoData = DepartmentDto.fromDomain(department);

      final tryUpdateDept = await _departmentDataSource.updateDeptToServer(dtoData, context);

      return tryUpdateDept.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }
}