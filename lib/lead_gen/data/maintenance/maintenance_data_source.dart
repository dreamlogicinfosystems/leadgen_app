import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/data/maintenance/maintenance_dto.dart';

import '../../constants/api_endpoint.dart';

class MaintenanceDataSource{
  final ApiMethods _apiMethod;
  MaintenanceDataSource(this._apiMethod);

  Future<Either<ErrorMessage,MaintenanceDto>> getMaintenanceData(BuildContext context) async{
    final response = await _apiMethod.get(
        url: "get_maintenances",
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      MaintenanceDto maintenanceDto = MaintenanceDto(
        id: result['maintenances'][0]['id'],
        isEnabled: result['maintenances'][0]['is_enabled'],
        isCompulsory: result['maintenances'][0]['is_compulsory'],
        message: result['maintenances'][0]['message'],
        minAndroidVersion: result['maintenances'][0]['min_android_version'],
        minIosVersion: result['maintenances'][0]['min_ios_version']
      );

      return  Right(maintenanceDto);
    } else {
      return Left(ErrorMessage(result['message']));
    }
  }
}