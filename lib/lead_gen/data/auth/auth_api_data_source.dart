import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_db.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';

import '../../constants/api.dart';
import '../../constants/shared_preference.dart';

class AuthApiDataSource{
  final ApiMethods _apiMethods;
  final LocalDataSource _localDataSource;
  final UserDBHelper _userDBHelper;
  AuthApiDataSource(this._apiMethods, this._localDataSource, this._userDBHelper);

  String emailAddress = '';
  String saveOtp = '';
  Future<Either<ErrorMessage,Success>> tryRegister(UserDto userDto,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['name'] = userDto.name;
    map['phone'] = userDto.phoneNumber;
    map['email'] = userDto.email;
    map['password'] = userDto.password;
    map['business_name'] = userDto.businessName;
    map['fcm_token'] = userDto.fcmToken;
    map['device'] = userDto.device;

    final response = await _apiMethods.post(
        url: 'register',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      await _localDataSource.storeUserData(
          userDto.name!, userDto.phoneNumber!,
          userDto.email!, userDto.businessName!,result['user']['token']
      );

      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage('Something went wrong'));
    }
  }

  Future<Either<ErrorMessage,Success>> login(String email,String password,String fcmToken,String device,
      BuildContext context) async{
    Map<String,dynamic> map = {};

    map['email'] = email;
    map['password'] = password;

    final response = await _apiMethods.post(
        url: 'login',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      await _localDataSource.setToken(result['user']['token']);

      await _userDBHelper.saveUserData(result['user']);

      if(context.mounted){
        await updateFcmToken(result['user']['id'],fcmToken, device, context);
      }

      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> logOut(BuildContext context) async{
    final response = await _apiMethods.post(
        url: 'logout',
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      await _userDBHelper.deleteUser();
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> verifyEmailAddress(String email,BuildContext context) async{
    Map<String,dynamic> map = {};

    emailAddress = email;

    map['email'] = email;
    
    final response = await _apiMethods.post(
        url: 'send_otp',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> verifyOtp(String otp,BuildContext context) async{
    Map<String,dynamic> map = {};

    saveOtp = otp;
    debugPrint(emailAddress);
    map['email'] = emailAddress;
    map['otp'] = otp;

    final response = await _apiMethods.post(
        url: 'verify_otp',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] ==  true){
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> changePassword(String password,BuildContext context) async {
    Map<String, dynamic> map = {};

    debugPrint(emailAddress);
    debugPrint(saveOtp);

    map['email'] = emailAddress;
    map['otp'] = saveOtp;
    map['password'] = password;

    final response = await _apiMethods.post(
        url: 'update_password',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] ==  true){
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>> updateFcmToken(int id,String fcmToken,String device,BuildContext context) async{
    Map<String, dynamic> map = {};

    map['id'] = id.toString();
    map['fcm_token'] = fcmToken;
    map['device'] = device;

    final response = await _apiMethods.post(
        url: 'update_fcm_token',
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }

  Future<Either<ErrorMessage,Success>>deleteAccountRequest(int id,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = id.toString();

      final response = await _apiMethods.post(
          url: 'delete_account_request',
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
}