import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';

import '../../domain/auth/auth_repository.dart';
import '../../domain/auth/user.dart';
import 'auth_api_data_source.dart';

class AuthRepositoryImpl extends AuthRepository{
  final AuthApiDataSource _apiDataSource;
  AuthRepositoryImpl(this._apiDataSource);
  @override
  Future<Either<ErrorMessage, Success>> registerUser(User user,BuildContext context) async{
    if(user == const User()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final userDto = UserDto.fromDomain(user);

      final result = await _apiDataSource.tryRegister(userDto,context);

      return result.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> tryLogin(String email,String password, String fcmToken,String device
      ,BuildContext context) async{
    if(email.isEmpty || password.isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryLogin = await _apiDataSource.login(email, password,fcmToken,device,context);

      return tryLogin.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> doLogOut(BuildContext context) async{
    final doLogOut = await _apiDataSource.logOut(context);

    return doLogOut.fold((error){
      return Left(error);
      }, (success){
      return Right(success);
    });
    }

  @override
  Future<Either<ErrorMessage, Success>> forgotPassword(String password,BuildContext context) async{
    final changePass = await _apiDataSource.changePassword(password, context);

    return changePass.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> verifyEmailAddress(String email,BuildContext context) async{
    final tryVerifyEmail = await _apiDataSource.verifyEmailAddress(email, context);

    return tryVerifyEmail.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> verifyOTP(String otp,BuildContext context) async{
    final tryVerifyOtp = await _apiDataSource.verifyOtp(otp, context);

    return tryVerifyOtp.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> deleteAccountRequest(int id, BuildContext context) async{
    if(id.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryDeleteAcc = await _apiDataSource.deleteAccountRequest(id, context);

      return tryDeleteAcc.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }
}