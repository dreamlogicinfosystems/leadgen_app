import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';

import '../../constants/api.dart';
import '../../constants/api_endpoint.dart';
import '../../constants/shared_preference.dart';

class ProfileDataSource{
  final ApiMethods _apiMethod;
  final ApiEndPoint _apiEndPoint;
  final LocalDataSource _localDataSource;
  ProfileDataSource(this._apiMethod, this._localDataSource, this._apiEndPoint);

  Future<Either<ErrorMessage,Success>> updateUserData(UserDto userDto,BuildContext context) async{
    Map<String,dynamic> userDetails = {};

    userDetails['id'] = userDto.userId.toString();
    userDetails['name'] = userDto.name;
    userDetails['phone'] = userDto.phoneNumber;
    userDetails['email'] = userDto.email;
    userDetails['business_name'] = userDto.businessName;
    userDetails['state'] = userDto.state;
    userDetails['country'] = userDto.country;
    userDetails['address'] = userDto.address;
    userDetails['pincode'] = userDto.pincode;
    userDetails['website'] = userDto.website;
    userDetails['registered_address'] = userDto.registeredAddress;
    userDetails['facebook'] = userDto.facebook;
    userDetails['instagram'] = userDto.instagram;
    userDetails['twitter'] = userDto.twitter;
    userDetails['linkedIn'] = userDto.linkedIn;

    final response = await _apiMethod.post(
        url: _apiEndPoint.updateProfile,
        data: userDetails,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      await _localDataSource.storeUserData(
        userDto.name!, userDto.email!,
      );

      return Right(Success(result['message']));
    }else{
      return Left(ErrorMessage('Something went wrong!'));
    }
  }

  Future<Either<ErrorMessage,UserDto>> getUserDetails(BuildContext context) async{

    final response = await _apiMethod.get(
        url: _apiEndPoint.getProfile,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      UserDto user = UserDto(
        userId: result['user']['id'],
        name: result['user']['name'],
        phoneNumber: result['user']['phone'],
        email: result['user']['email'],
        businessName: result['user']['business_name'],
        state: result['user']['state'] ?? '',
        country: result['user']['country'] ?? '',
        pincode: result['user']['pincode']==null? '' : result['user']['pincode'].toString(),
        address: result['user']['address'] ?? '',
        website: result['user']['website'] ?? '',
        registeredAddress: result['user']['registered_address'] ?? '',
        facebook: result['user']['facebook'] ?? '',
        instagram: result['user']['instagram'] ?? '',
        twitter: result['user']['twitter'] ?? '',
        linkedIn: result['user']['linkedin'] ?? '',
      );

      return Right(user);
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }
}