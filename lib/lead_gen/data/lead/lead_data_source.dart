import 'dart:convert';
import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/department/department_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/chat_details_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/chat_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/dto/lead_details_dto.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../constants/api_endpoint.dart';
import '../../constants/error.dart';
import '../../domain/department/department.dart';
import '../reminder/local_notification_handler.dart';
import 'lead_dto.dart';

class LeadDataSource{
  final ApiMethods _apiMethods;
  final LocalNotificationHandler _localNotificationHandler;
  final ApiEndPoint _apiEndPoint;
  LeadDataSource(this._apiMethods, this._localNotificationHandler, this._apiEndPoint);

  Future<Either<ErrorMessage,Success>> addLeadToServer(LeadDto leadDto,DateTime reminderTime,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};
      String departmentIds = '';

      //Stringify department ids
      departmentIds = leadDto.departmentIds!.join(",");

      map['name'] = leadDto.name;
      map['phone'] = leadDto.phone;
      map['email'] = leadDto.email;
      map['title'] = leadDto.title;
      map['date'] = leadDto.date;
      map['time'] = leadDto.time;
      map['message'] = leadDto.message;
      map['department_ids'] = departmentIds;

      final response = await _apiMethods.post(
          url: _apiEndPoint.addLead,
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        // if(reminderTime != DateTime(0) && leadDto.date!.isNotEmpty){
        //   final randomNumber = DateTime.now().millisecondsSinceEpoch;
        //   //generating a random number
        //   final id = int.parse(randomNumber.toString().substring(7,13));
        //
        //   await _localNotificationHandler.setReminder1(id, leadDto.title!, reminderTime, "Fixed", 0);
        // }
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
          url: _apiEndPoint.addLeadChat,
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
  
  Future<Either<List<Lead>,List<LeadDto>>>getLeads(String type,int deptId,BuildContext context) async{
    try{
      List<LeadDto> leadsList = [];
      List<DepartmentDto> departments = [];
      
      final response = await _apiMethods.get(
          url: 'get_leads?type=$type&department_id=$deptId',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i = 0; i<result['leads'].length; i++){

          final dept = result['leads'][i]['departments'];

          for(int i=0; i<dept.length; i++){
            DepartmentDto department = DepartmentDto(
                id: dept[i]['id'],
                departmentName: dept[i]['name']
            );

            departments.add(department);
          }

          LeadDto leadDto = LeadDto(
            id: result['leads'][i]['id'],
            name: result['leads'][i]['name'],
            phone: result['leads'][i]['phone'],
            email: result['leads'][i]['email'],
            message: result['leads'][i]['note'],
            title: result['leads'][i]['title']?? '',
            createdAt: result['leads'][i]['created_at'],
            showStatus: result['leads'][i]['show_status'],
            lastChatDate: result['leads'][i]['last_chat_date'],
            departments: List.from(departments)
          );

          leadsList.add(leadDto);

          departments.clear();
        }
        return Right(leadsList);
      }else{
        return Left(result['message']);
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

      map['id'] = leadId.toString();
      map['message'] = message;
      map['status_id'] = statusId.toString();

      final response = await _apiMethods.post(
          url: _apiEndPoint.updateLeadStatus,
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

  Future<Either<List<Lead>,List<LeadDto>>>getArchiveLeads(String type,String subType,BuildContext context) async{

    List<LeadDto> leadsList = [];
    List<DepartmentDto> departments = [];

    final response = await _apiMethods.get(
        url: 'get_leads?type=$type&sub_type=$subType',
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      for(int i = 0; i<result['leads'].length; i++){

        final dept = result['leads'][i]['departments'];
        
        for(int i=0; i<dept.length; i++){
          DepartmentDto department = DepartmentDto(
              id: dept[i]['id'],
              departmentName: dept[i]['name']
          );
          departments.add(department);
        }
        
        LeadDto leadDto = LeadDto(
            id: result['leads'][i]['id'],
            name: result['leads'][i]['name'],
            phone: result['leads'][i]['phone'],
            email: result['leads'][i]['email'],
            message: result['leads'][i]['note'],
            title: result['leads'][i]['title']?? '',
            createdAt: result['leads'][i]['created_at'],
            showStatus: result['leads'][i]['show_status'],
            lastChatDate: result['leads'][i]['last_chat_date'],
            departments: List.from(departments)
        );

        leadsList.add(leadDto);

        departments.clear();
      }
      return Right(leadsList);
    }else{
      return const Left([]);
    }
  }

  Future<Either<List<Lead>,List<LeadDto>>>getSearchedLeads(String custDetail,String type,String subType,BuildContext context) async{
    List<LeadDto> leadsList = [];

    final response = await _apiMethods.get(
        url: 'get_customers?search=$custDetail&type=$type&sub_type=$subType',
        context: context
    );

    final result = jsonDecode(response!.body);


    if(result['status'] == true){

      for(int i=0; i<result['customers'].length; i++){
        LeadDto leadDto = LeadDto(
            id: result['customers'][i]['id'],
            name: result['customers'][i]['name'],
            phone: result['customers'][i]['phone'],
            email: result['customers'][i]['email'],
            message: result['customers'][i]['note'],
            title: result['customers'][i]['title']?? '',
            createdAt: result['customers'][i]['created_at'],
            showStatus: result['customers'][i]['show_status'],
            lastChatDate: result['customers'][i]['last_followup_date']
        );

        leadsList.add(leadDto);
      }

      return Right(leadsList);
    }else{
      return const Left([]);
    }
  }

  Future<Either<ErrorMessage,Success>> updateLeadDepartments(int leadId,List<int> deptIds,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};
      final departmentIds = deptIds.join(",");

      map['id'] = leadId.toString();
      map['department_ids'] = departmentIds;

      final response = await _apiMethods.post(
          url: 'update_lead_departments',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result["message"]));
      } else{
        return Left(ErrorMessage(result["message"]));
      }
    } catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,Success>> updateLeadDescript(int leadId,String description,BuildContext context) async {
    try{
      Map<String,dynamic> map = {};

      map['id'] = leadId.toString();
      map['description'] = description;

      final response = await _apiMethods.post(
          url: 'update_lead_description',
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        return Right(Success(result["message"]));
      } else{
        return Left(ErrorMessage(result["message"]));
      }
    } catch (e) {
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,LeadDetailsDto>> getLeadInfoFromMessage(String message,BuildContext context) async {
    try{
      final response = await _apiMethods.get(
          url: 'read_message?message=$message',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){
        Map<String, dynamic> details = result["details"];

        final leadDetailsInfoDto = LeadDetailsDto.fromJson(details);

        return Right(leadDetailsInfoDto);
      } else{
        return Left(ErrorMessage("Something went wrong. Please try again later"));
      }
    } catch (e) {
      return Left(ErrorMessage("Something went wrong. Please try again later"));
    }
  }
}