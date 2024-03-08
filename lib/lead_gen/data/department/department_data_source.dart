import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';

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
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}