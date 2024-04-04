import 'package:either_dart/either.dart';

import 'package:flutter/cupertino.dart';

import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/domain/lead_count/lead_count.dart';

import '../../domain/lead_count/lead_count_repository.dart';

import 'lead_count_data_source.dart';

class LeadCountRepositoryImpl extends LeadCountRepository{
  final LeadCountDataSource _countDataSource;
  LeadCountRepositoryImpl(this._countDataSource);

  @override
  Future<Either<ErrorMessage, LeadCount>> getLeadCount(BuildContext context) async{
    final tryGetLeadCount = await _countDataSource.getLeadsCount(context);

    return tryGetLeadCount.fold(
      (error){
        return Left(error);
      },
      (leadCount){
        return Right(leadCount.toDomain(leadCount));
      }
    );
  }

}