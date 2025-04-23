import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:lead_gen/lead_gen/application/department/department_bloc.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_db.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';

import '../../constants/api.dart';
import '../../constants/api_endpoint.dart';
import '../../constants/shared_preference.dart';

class AuthApiDataSource{
  final ApiMethods _apiMethods;
  final LocalDataSource _localDataSource;
  final UserDBHelper _userDBHelper;
  final ApiEndPoint _apiEndPoint;
  AuthApiDataSource(this._apiMethods, this._localDataSource, this._userDBHelper, this._apiEndPoint);

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
        url: _apiEndPoint.register,
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      await _localDataSource.setToken(result['user']['token']);

      await _localDataSource.setRole(result['user']['role']);

      if(kIsWeb) {
        //mark user login
        await _localDataSource.setIsUserExistWeb(1);
      } else {
        //platform is mobile
        await _userDBHelper.saveUserData(result['user']);
      }

      await _localDataSource.storeUserData(
          userDto.name!, userDto.email!
      );

      await _localDataSource.setUserId(result['user']['id'].toString());

      if(context.mounted){
        await checkLicenceValidity(result['user']['id'].toString(), context);
      }

      return Right(Success(result['message']));
    }else{
      String error = '';

      result['error'].forEach((key,value){

        error = value[0];

      });

      return Left(ErrorMessage(error));
    }
  }

  Future<Either<ErrorMessage,Success>> login(String email,String password,String fcmToken,String device,
      BuildContext context) async{
    Map<String,dynamic> map = {};

    map['email'] = email;
    map['password'] = password;

    final response = await _apiMethods.post(
        url: _apiEndPoint.login,
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      await _localDataSource.setToken(result['user']['token']);

      await _localDataSource.setRole(result['user']['role']);

      if(kIsWeb) {
        //mark user login
        await _localDataSource.setIsUserExistWeb(1);
      } else {
        //platform is mobile
        await _userDBHelper.saveUserData(result['user']);
      }

      await _localDataSource.storeUserData(
        result['user']['name'], email,
      );

      await _localDataSource.setUserId(result['user']['id'].toString());

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
        url: _apiEndPoint.logout,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      //if platform is web mark user exist 0
      if(kIsWeb) {
        await _localDataSource.setIsUserExistWeb(0);
      } else {
        //if platform is mobile delete user from sql db
        await _userDBHelper.deleteUser();
      }
      await _localDataSource.setLicenceValidity(false);
      await _localDataSource.setRole("");
      await _localDataSource.setToken('');
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
        url: _apiEndPoint.sendOtp,
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
        url: _apiEndPoint.verifyOtp,
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
        url: _apiEndPoint.updatePassword,
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
        url: _apiEndPoint.updateFcmToken,
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
          url: _apiEndPoint.deleteAccountRequest,
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
        //to store check validity value
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