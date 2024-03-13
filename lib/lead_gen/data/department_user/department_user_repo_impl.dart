import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department_user/department_user_dto.dart';

import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';

import '../../domain/department_user/department_user_repo.dart';
import 'department_user_data_source.dart';

class DepartmentUserRepositoryImpl extends DepartmentUserRepository{
  final DepartmentUserDataSource _departmentUserDataSource;
  DepartmentUserRepositoryImpl(this._departmentUserDataSource);

  @override
  Future<Either<ErrorMessage, List<DepartmentUser>>> getDepartmentUser(BuildContext context) async{
    final tryGetDeptUsers = await _departmentUserDataSource.getDepartmentUsers(context);

    return tryGetDeptUsers.fold((error){
      return Left(error);
    },(departmentUsersDtoList){
      final departmentUserList = departmentUsersDtoList.map((e) => const DepartmentUserDto().toDomain(e)).toList();
      return Right(departmentUserList);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> saveDepartmentUser(DepartmentUser departmentUser, BuildContext context) async{
    final dtoData = DepartmentUserDto.fromDomain(departmentUser);

    final tryAddDeptUser = await _departmentUserDataSource.addDepartUser(
        dtoData, context
    );

    return tryAddDeptUser.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> updateDepartmentUser(DepartmentUser departmentUser, BuildContext context) async{
    if(departmentUser==const DepartmentUser()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final departmentUserDto = DepartmentUserDto.fromDomain(departmentUser);

      final tryUpdateDeptUser = await _departmentUserDataSource.updateDeptUser(departmentUserDto, context);

      return tryUpdateDeptUser.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> deleteDepartmentUser(int userId, BuildContext context) async{
    if(userId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryDeleteDeptUser = await _departmentUserDataSource.deleteDeptUser(userId, context);

      return tryDeleteDeptUser.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }
}