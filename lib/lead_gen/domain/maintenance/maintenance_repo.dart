import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/domain/maintenance/maintenance.dart';

abstract class MaintenanceRepository{
  Future<Either<ErrorMessage,Maintenance>> checkMaintenance(BuildContext context);
}