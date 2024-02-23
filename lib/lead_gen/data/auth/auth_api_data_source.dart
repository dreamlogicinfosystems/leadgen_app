import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';

import '../../constants/api.dart';
import '../../constants/shared_preference.dart';

class AuthApiDataSource{
  final ApiMethods _apiMethods;
  final LocalDataSource _localDataSource;
  AuthApiDataSource(this._apiMethods, this._localDataSource);

  Future<Either<ErrorMessage,Success>> tryRegister(UserDto userDto,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['name'] = userDto.name;
    map['phone'] = userDto.phoneNumber;
    map['email'] = userDto.email;
    map['password'] = userDto.password;
    map['confirm_password'] = userDto.confirmPass;

    // final response = await _apiMethods.post(
    //     url: 'register',
    //     data: map,
    //     context: context
    // );
    //
    // final result = jsonDecode(response!.body);
    //
    // await _localDataSource.storeUserData(
    //     userDto.name!, userDto.phoneNumber!,
    //     userDto.email!, result['token']
    // );
    Map<String,dynamic> result = {
      'status':'success'
    };

    if(result['status'] == 'success'){
      return Right(Success('User registered successfully!!'));
    }else{
      return Left(ErrorMessage('Something went wrong'));
    }
  }

  Future<Either<ErrorMessage,Success>> login(String email,String password,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['email'] = email;
    map['password'] = password;

    final response = await _apiMethods.post(
        url: 'login',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == ''){
      return Right(Success(''));
    }else{
      return Left(ErrorMessage(''));
    }
  }
}