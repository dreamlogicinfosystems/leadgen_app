import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/lead/chat_details_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/chat_dto.dart';
import 'package:lead_gen/lead_gen/domain/lead/chat_details.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../constants/constant.dart';
import '../../constants/error.dart';
import 'lead_dto.dart';

class LeadDataSource{
  final ApiMethods _apiMethods;
  LeadDataSource(this._apiMethods);

  Future<Either<ErrorMessage,Success>> addLeadToServer(LeadDto leadDto,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};
      List<String> departmentIds = [];

      for(int i=0; i<leadDto.departmentIds!.length; i++){
        departmentIds.add(leadDto.departmentIds![i].toString());
      }

      final stringDeptId = departmentIds.join(' ,');

      map['name'] = leadDto.name;
      map['phone'] = leadDto.phone;
      map['email'] = leadDto.email;
      map['message'] = leadDto.message;
      map['department_ids[0]'] = stringDeptId;

      final response = await _apiMethods.post(
          url: 'add_lead',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result['message']));
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,Success>> addLeadChatToServer(LeadDto leadDto,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = leadDto.id.toString();
      map['message'] = leadDto.message;

      final response = await _apiMethods.post(
          url: 'add_lead_chat',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result['message']));
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
  
  Future<Either<List<Lead>,List<LeadDto>>>getLeads(String type,BuildContext context) async{
    try{
      List<LeadDto> leadsList = [];
      
      final response = await _apiMethods.get(
          url: 'get_leads?type=$type',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i = 0; i<result['leads'].length; i++){
          LeadDto leadDto = LeadDto(
            id: result['leads'][i]['id'],
            name: result['leads'][i]['name'],
            phone: result['leads'][i]['phone'],
            email: result['leads'][i]['email'],
            message: result['leads'][i]['note'],
            createdAt: result['leads'][i]['created_at'],
            lastChatDate: result['leads'][i]['last_chat_date']
          );

          leadsList.add(leadDto);
        }
        return Right(leadsList);
      }else{
        return Left(result['leads']);
      }
    }catch(e){
      return const Left([]);
    }
  }

  Future<Either<ErrorMessage,List<ChatDto>>> getLeadChatFromServer(int leadId,BuildContext context) async{
    try{
      List<ChatDto> chatList = [];

      List<ChatDetailsDto> chatDetails = [];

      final response = await _apiMethods.get(
          url: 'get_lead_details?id=$leadId',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(var chatData in result['lead'].entries){

          chatDetails.clear();

          for(int i=0; i<chatData.value.length; i++){

            ChatDetailsDto chat = ChatDetailsDto(
                createdAt: chatData.value[i]['created_at'],
                message: chatData.value[i]['note'],
                name: chatData.value[i]['name']
            );

            chatDetails.add(chat);
          }

          ChatDto chatDto = ChatDto(
            date: chatData.key,
            chatData: List.from(chatDetails)
          );

          chatList.add(chatDto);
        }

        print(chatList);

        return Right(chatList);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,Success>> updateLeadStatus(int leadId, int statusId, String message,
      BuildContext context) async{
    try{
      Map<String, dynamic> map = {};

      map['id'] = leadId;
      map['message'] = message;
      map['status_id'] = statusId;

      final response = await _apiMethods.post(
          url: 'update_lead_status',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result['message']));
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}