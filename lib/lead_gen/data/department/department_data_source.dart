import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department/department_dto.dart';

import '../../constants/api.dart';

class DepartmentDataSource{
  final ApiMethods _apiMethods;
  DepartmentDataSource(this._apiMethods);

  Future<Either<ErrorMessage,Success>> createDepartmentOnServer(String departmentName,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['name'] = departmentName;

      final response = await _apiMethods.post(
          url: 'add_department',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] ==  true){
        return Right(Success(result['message']));
      }else{
        String error = '';

        result['error'].forEach((key,value){

          error = value[0];

        });

        return Left(ErrorMessage(error));
      }
    }catch(e){
      return Left(ErrorMessage("Something went wrong! Please try again"));
    }
  }

  Future<Either<ErrorMessage,List<DepartmentDto>>> getDepartmentsFromServer(BuildContext context) async{
    try{
      List<DepartmentDto> departments = [];

      final response = await _apiMethods.get(
          url: 'get_departments',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        for(int i=0; i<result['departments'].length; i++){
          DepartmentDto departmentDto = DepartmentDto(
              id: result['departments'][i]['id'],
              departmentName: result['departments'][i]['name']
          );

          departments.add(departmentDto);
        }

        return Right(departments);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage("Something went wrong! Please try again"));
    }
  }

  Future<Either<ErrorMessage,Success>> deleteDeptFromServer(int deptId,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['id'] = deptId.toString();
    
    final response = await _apiMethods.post(
        url: 'delete_department',
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

  Future<Either<ErrorMessage,Success>> updateDeptToServer(DepartmentDto departmentDto,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['id'] = departmentDto.id.toString();
    map['name'] = departmentDto.departmentName;

    final response = await _apiMethods.post(
        url: 'update_department',
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
}