import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/data/status/status_dto.dart';

import '../../constants/error.dart';

class StatusDataSource{
  final ApiMethods _apiMethods;
  StatusDataSource(this._apiMethods);
  
  Future<Either<ErrorMessage,List<StatusDto>>>getStatusFromServer(BuildContext context) async{
    try{
      List<StatusDto> statusesList = [];

      final response = await _apiMethods.get(
          url: 'get_statuses',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0; i<result['statuses'].length; i++){
          StatusDto statusDto = StatusDto(
            id: result['statuses'][i]['id'],
            name: result['statuses'][i]['name']
          );

          statusesList.add(statusDto);
        }

        return Right(statusesList);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}