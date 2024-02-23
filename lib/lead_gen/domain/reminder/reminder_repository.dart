import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

abstract class ReminderRepository{
  Future<Either<String,String>> setRemainder(String message,DateTime reminderDate,TimeOfDay reminderTime);
}