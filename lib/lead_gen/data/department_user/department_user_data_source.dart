import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department_user/department_user_dto.dart';

import '../../constants/api.dart';
import '../../constants/error.dart';
import '../department/department_dto.dart';

class DepartmentUserDataSource{
  final ApiMethods _apiMethods;
  DepartmentUserDataSource(this._apiMethods);

  Future<Either<ErrorMessage,Success>> addDepartUser(DepartmentUserDto departmentUserDto,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['name'] = departmentUserDto.name;
    map['phone'] = departmentUserDto.phone;
    map['email'] = departmentUserDto.email;
    map['password'] = departmentUserDto.password;
    map['department_ids'] = departmentUserDto.departmentId.toString();

    final response = await _apiMethods.post(
        url: 'add_department_user',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status']==true){
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> deleteDeptUser(int userId,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = userId.toString();

      final response = await _apiMethods.post(
          url: 'delete_department_user',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result['message']));
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,Success>> updateDeptUser(DepartmentUserDto departmentUserDto,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = departmentUserDto.id;
      map['department_ids'] = departmentUserDto.departmentId.toString();
      
      final response = await _apiMethods.post(
          url: 'update_department_user',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] ==  true){
        return Right(Success(result['message']));
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,List<DepartmentUserDto>>> getDepartmentUsers(BuildContext context) async{
    try{
      List<DepartmentUserDto> departmentUsers = [];

      final response = await _apiMethods.get(
          url: 'get_department_users',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0;i<result['department_users'].length; i++){

          DepartmentDto departmentDto = DepartmentDto(
            id: result['department_users'][i]['departments']['id'],
            departmentName: result['department_users'][i]['departments']['name'],
          );

          DepartmentUserDto departmentUserDto = DepartmentUserDto(
            id: result['department_users'][i]['id'],
            name: result['department_users'][i]['name'],
            phone: result['department_users'][i]['phone'],
            email: result['department_users'][i]['email'],
            departmentDto: departmentDto
          );

          departmentUsers.add(departmentUserDto);
        }

        return Right(departmentUsers);

      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}