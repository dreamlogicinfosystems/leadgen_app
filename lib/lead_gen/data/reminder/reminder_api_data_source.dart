import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_dto.dart';

import '../../constants/api.dart';
import '../../constants/error.dart';
import 'local_notification_handler.dart';

class ReminderApiDataSource{
  final LocalNotificationHandler _localNotificationHandler;
  final ApiMethods _apiMethods;
  ReminderApiDataSource(this._localNotificationHandler, this._apiMethods);

  Future<Either<String,String>> setReminderLocally(String message, DateTime reminderDate, TimeOfDay reminderTime) async{
    try{
      await _localNotificationHandler.init();

      await _localNotificationHandler.setRemainder(message, reminderDate, reminderTime);

      return const Right("Reminder set successfully!!");
    } catch (e){
      return const Left("Something went wrong");
    }
  }

  Future<Either<ErrorMessage,Success>> addReminderToServer(ReminderDto reminderDto, BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['message'] = reminderDto.message;
      map['date'] = reminderDto.date;
      map['time'] = reminderDto.time;

      final response = await _apiMethods.post(
          url: 'add_reminder',
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

  Future<Either<ErrorMessage,Success>> deleteReminderFromServer(int reminderId,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['id'] = reminderId;

      final response = await _apiMethods.post(
          url: 'delete_reminder',
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

  Future<Either<ErrorMessage,List<ReminderDto>>> getReminderFromServer(BuildContext context) async{
    try{
      List<ReminderDto> reminders = [];
      
      final response = await _apiMethods.get(
          url: 'get_reminders',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0; i<result['reminders'].length; i++){

          ReminderDto reminderDto = ReminderDto(
            id: result['reminders'][i]['id'],
            message: result['reminders'][i]['note'],
            dateTime: result['reminders'][i]['send_invite_on']
          );

          reminders.add(reminderDto);
        }

        return Right(reminders);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }
}