import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_dto.dart';

import '../../constants/api.dart';
import '../../constants/api_endpoint.dart';
import '../../constants/error.dart';
import 'local_notification_handler.dart';

class ReminderApiDataSource{
  final LocalNotificationHandler _localNotificationHandler;
  final ApiMethods _apiMethods;
  final ApiEndPoint _apiEndPoint;
  ReminderApiDataSource(this._localNotificationHandler, this._apiMethods, this._apiEndPoint);

  Future<Either<String,String>> setReminderLocally(String message, DateTime reminderDate, TimeOfDay reminderTime) async{
    try{
      await _localNotificationHandler.init();

      await _localNotificationHandler.setRemainder(message, reminderDate, reminderTime);

      return const Right("Reminder set successfully!!");
    } catch (e){
      return const Left("Something went wrong");
    }
  }

  Future<Either<ErrorMessage,Success>> addReminderToServer(ReminderDto reminderDto,DateTime reminderDateTime,BuildContext context) async{
    try{
      Map<String,dynamic> map = {};

      map['message'] = reminderDto.message;
      map['date'] = reminderDto.date;
      map['time'] = reminderDto.time;
      map['type'] = reminderDto.repeatInterval;
      map['repeat'] = reminderDto.repeatCount;

      final response = await _apiMethods.post(
          url: _apiEndPoint.addReminder,
          data: map,
          context: context
      );

      final result = jsonDecode(response!.body);

      // Map<String,dynamic> result = {
      //   'status': true,
      //   'message':"Reminder set successfully!",
      // };

      if(result['status'] == true){
        // final randomNumber = DateTime.now().millisecondsSinceEpoch;
        // //generating a random number
        // final id = int.parse(randomNumber.toString().substring(7,13));
        //
        // final count = int.parse(reminderDto.repeatCount!);
        // await _localNotificationHandler.setReminder1(id, reminderDto.message!, reminderDateTime, reminderDto.repeatInterval!,count);
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
          url: _apiEndPoint.deleteReminder,
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
      //To store reminder data list of a date
      List<ReminderDataDto> reminderDataList = [];
      //To store each reminder
      List<ReminderDto> reminders = [];
      
      final response = await _apiMethods.get(
          url: _apiEndPoint.getReminders,
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(var reminderData in result['reminders'].entries){

          reminderDataList.clear();

          for(int i=0; i<reminderData.value.length; i++){
            ReminderDataDto reminderDataDto = ReminderDataDto(
              id: reminderData.value[i]['id'],
              note: reminderData.value[i]['note'],
              inviteSendOn: reminderData.value[i]['send_invite_on']
            );

            reminderDataList.add(reminderDataDto);
          }

          ReminderDto reminderDto = ReminderDto(
            date: reminderData.key,
            reminderData: List.from(reminderDataList),
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

  Future<Either<ErrorMessage,int>>getReminderCount(BuildContext context) async{
    final response = await _apiMethods.get(
        url: _apiEndPoint.getRemindersCount,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      return Right(result['count']);
    }else{
      return Left(ErrorMessage('Something went wrong'));
    }
  }
}