import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

import '../../constants/api.dart';

import '../../constants/api_endpoint.dart';
import '../../constants/error.dart';
import '../../constants/shared_preference.dart';

class LicenceDataSource{
  final ApiMethods _apiMethods;
  final ApiEndPoint _apiEndPoint;
  final LocalDataSource _localDataSource;
  LicenceDataSource(this._apiMethods, this._localDataSource, this._apiEndPoint);

  Future<Either<ErrorMessage,String>> checkLicenceValidity(String userId,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map["id"] = userId;

      final response = await _apiMethods.post(
          url: _apiEndPoint.checkLicense,
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        //store check validity value
        await _localDataSource.setLicenceValidity(true);
        return Right(result['message']);
      }else{
        await _localDataSource.setLicenceValidity(false);
        return Left(ErrorMessage(result["message"]));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}