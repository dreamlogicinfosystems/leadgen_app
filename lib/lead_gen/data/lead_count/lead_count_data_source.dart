import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/data/lead_count/lead_count_dto.dart';

import '../../constants/api.dart';
import '../../constants/api_endpoint.dart';

class LeadCountDataSource{
  final ApiMethods _apiMethods;
  final ApiEndPoint _apiEndPoint;
  LeadCountDataSource(this._apiMethods, this._apiEndPoint);

  Future<Either<ErrorMessage,LeadCountDto>> getLeadsCount(BuildContext context) async{

    final response = await _apiMethods.get(
        url: _apiEndPoint.getDashboardData,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      LeadCountDto leadCountDto = LeadCountDto(
        totalLeads: result['total'],
        dueLeads: result['due'],
        upcomingLeads: result['upcoming']
      );

      return Right(leadCountDto);
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }
}