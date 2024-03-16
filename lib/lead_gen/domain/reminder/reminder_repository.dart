import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/domain/reminder/reminder.dart';

abstract class ReminderRepository{
  Future<Either<String,String>> setRemainder(String message,DateTime reminderDate,TimeOfDay reminderTime);

  Future<Either<ErrorMessage,Success>>addReminder(Reminder reminder,BuildContext context);

  Future<Either<ErrorMessage,List<Reminder>>>getReminders(BuildContext context);

  Future<Either<ErrorMessage,Success>>deleteReminder(int reminderId,BuildContext context);
}