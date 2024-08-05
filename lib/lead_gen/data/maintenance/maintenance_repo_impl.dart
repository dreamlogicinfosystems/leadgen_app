import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/data/maintenance/maintenance_dto.dart';
import 'package:lead_gen/lead_gen/domain/maintenance/maintenance.dart';
import 'package:lead_gen/lead_gen/domain/maintenance/maintenance_repo.dart';

import 'maintenance_data_source.dart';

class MaintenanceRepoImpl extends MaintenanceRepository{
  final MaintenanceDataSource _maintenanceDataSource;
  MaintenanceRepoImpl(this._maintenanceDataSource);

  @override
  Future<Either<ErrorMessage, Maintenance>> checkMaintenance(BuildContext context) async{
    final result = await _maintenanceDataSource.getMaintenanceData(context);

    return result.fold((error){
      return Left(error);
    },(success){
      final data = const MaintenanceDto().toDomain(success);
      return Right(data);
    });
  }
}