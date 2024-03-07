import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/auth/user_dto.dart';
import 'package:lead_gen/lead_gen/data/profile/profile_data_source.dart';

import 'package:lead_gen/lead_gen/domain/auth/user.dart';

import '../../domain/profile/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository{
  final ProfileDataSource _profileDataSource;
  ProfileRepositoryImpl(this._profileDataSource);

  @override
  Future<Either<ErrorMessage, User>> getUserDetails(BuildContext context) async{
    final getProfileData = await _profileDataSource.getUserDetails(context);

    return getProfileData.fold((error){
      return Left(error);
    },(profileData){
      final userData = const UserDto().toDomain(profileData);
      return Right(userData);
    });
  }

  @override
  Future<Either<ErrorMessage, Success>> updateUserDetails(User user, BuildContext context)  async{
    final userDtoData = UserDto.fromDomain(user);

    final tryUpdate = await _profileDataSource.updateUserData(userDtoData, context);

    return tryUpdate.fold((error){
      return Left(error);
    },(success){
      return Right(success);
    });
  }
}