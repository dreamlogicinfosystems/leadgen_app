import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/data/status/status_data_source.dart';
import 'package:lead_gen/lead_gen/data/status/status_dto.dart';

import 'package:lead_gen/lead_gen/domain/status/status.dart';

import '../../domain/status/status_repository.dart';

class StatusRepositoryImpl extends StatusRepository{
  final StatusDataSource _statusDataSource;
  StatusRepositoryImpl(this._statusDataSource);

  @override
  Future<Either<ErrorMessage, List<Status>>> getStatuses(BuildContext context) async{
    final tryGetStatuses = await _statusDataSource.getStatusFromServer(context);

    return tryGetStatuses.fold((error){
      return Left(error);
    },(statusesList){
      return Right(statusesList.map((e) => const StatusDto().toDomain(e)).toList());
    });
  }
}