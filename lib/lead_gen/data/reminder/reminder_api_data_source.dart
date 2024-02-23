import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

import 'local_notification_handler.dart';

class ReminderApiDataSource{
  final LocalNotificationHandler _localNotificationHandler;
  ReminderApiDataSource(this._localNotificationHandler);
  Future<Either<String,String>> setReminderLocally(String message, DateTime reminderDate, TimeOfDay reminderTime) async{
    try{
      await _localNotificationHandler.init();

      await _localNotificationHandler.setRemainder(message, reminderDate, reminderTime);

      return const Right("Reminder set successfully!!");
    } catch (e){
      return const Left("Something went wrong");
    }
  }
}