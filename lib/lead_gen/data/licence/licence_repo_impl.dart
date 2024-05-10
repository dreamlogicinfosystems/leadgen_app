import 'package:either_dart/either.dart';

import 'package:flutter/cupertino.dart';

import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/shared_preference.dart';

import '../../domain/licence/licence_repository.dart';
import 'licence_data_source.dart';

class LicenceRepositoryImpl extends LicenceRepository{
  final LocalDataSource _localDataSource;
  final LicenceDataSource _licenceDataSource;
  LicenceRepositoryImpl(this._localDataSource, this._licenceDataSource);

  @override
  Future<Either<ErrorMessage, String>> checkLicenceValidity(BuildContext context) async{
    final userId = await _localDataSource.getUserId();

    if(userId!.isEmpty){
      return Left(ErrorMessage("Something went wrong!"));
    }else{
      Either<ErrorMessage,String>? result;

      if(context.mounted){
        result = await _licenceDataSource.checkLicenceValidity(userId,context);
      }

      return result!.fold((error){
        return Left(error);
      }, (success){
        return Right(success);
      });
    }
  }
}