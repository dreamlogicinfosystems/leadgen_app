import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department_user/department_user_dto.dart';
import '../../constants/api.dart';
import '../../constants/api_endpoint.dart';
import '../../constants/error.dart';
import '../department/department_dto.dart';

class DepartmentUserDataSource{
  final ApiMethods _apiMethods;
  final ApiEndPoint _apiEndPoint;
  DepartmentUserDataSource(this._apiMethods, this._apiEndPoint);

  Future<Either<ErrorMessage,Success>> addDepartUser(DepartmentUserDto departmentUserDto,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};
      String departmentIds = '';

      //Stringify department ids
      departmentIds = departmentUserDto.departmentId!.join(",");

      map['name'] = departmentUserDto.name;
      map['phone'] = departmentUserDto.phone;
      map['email'] = departmentUserDto.email;
      map['password'] = departmentUserDto.password;
      map['department_ids'] = departmentIds;

      final response = await _apiMethods.post(
          url: _apiEndPoint.addDepartmentUser,
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status']==true){
        return Right(Success(result['message']));
      }else{
        String error = '';

        result['error'].forEach((key,value){

          error = value[0];

        });

        return Left(ErrorMessage(error));
      }
    }catch (e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,Success>> deleteDeptUser(int userId,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = userId.toString();

      final response = await _apiMethods.post(
          url: _apiEndPoint.deleteDepartmentUser,
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
      String departmentIds = '';

      //Stringify department ids
      departmentIds = departmentUserDto.departmentId!.join(",");

      map['id'] = departmentUserDto.id.toString();
      map['name'] = departmentUserDto.name;
      map['phone'] = departmentUserDto.phone;
      map['email'] = departmentUserDto.email;
      map['password'] = departmentUserDto.password;
      map['department_ids'] = departmentIds;
      
      final response = await _apiMethods.post(
          url: _apiEndPoint.updateDepartmentUser,
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
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,List<DepartmentUserDto>>> getDepartmentUsers(BuildContext context) async{
    try{
      List<DepartmentUserDto> departmentUsers = [];
      List<DepartmentDto> departmentDtoList = [];

      final response = await _apiMethods.get(
          url: _apiEndPoint.getDepartmentUsers,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0;i<result['department_users'].length; i++){

          final depts = result['department_users'][i]['departments'];

          for(int i=0; i<depts.length; i++){
            DepartmentDto departmentDto = DepartmentDto(
              id: depts[i]['id'],
              departmentName: depts[i]['name'],
            );

            departmentDtoList.add(departmentDto);
          }

          DepartmentUserDto departmentUserDto = DepartmentUserDto(
            id: result['department_users'][i]['id'],
            name: result['department_users'][i]['name'],
            phone: result['department_users'][i]['phone'],
            email: result['department_users'][i]['email'],
            departmentDtos: List.from(departmentDtoList)
          );

          departmentUsers.add(departmentUserDto);

          departmentDtoList.clear();
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