import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_api_data_source.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_dto.dart';
import 'package:lead_gen/lead_gen/domain/reminder/reminder.dart';

import '../../domain/reminder/reminder_repository.dart';

class ReminderRepositoryImpl extends ReminderRepository{
  final ReminderApiDataSource _reminderApiDataSource;
  ReminderRepositoryImpl(this._reminderApiDataSource);

  @override
  Future<Either<String, String>> setRemainder(String message, DateTime reminderDate, TimeOfDay reminderTime) async{
    final result = await _reminderApiDataSource.setReminderLocally(message, reminderDate, reminderTime);

    return result.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      }
    );
  }

  @override
  Future<Either<ErrorMessage, Success>> addReminder(Reminder reminder, BuildContext context) async{
    if(reminder == const Reminder()){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final reminderDtoData = ReminderDto.fromDomain(reminder);

      final tryAddReminder = await _reminderApiDataSource.addReminderToServer(reminderDtoData, context);

      return tryAddReminder.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> deleteReminder(int reminderId, BuildContext context) async{
    if(reminderId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong!'));
    }else{
      final tryDeleteReminder = await _reminderApiDataSource.deleteReminderFromServer(reminderId, context);

      return tryDeleteReminder.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }

  @override
  Future<Either<ErrorMessage, List<Reminder>>> getReminders(BuildContext context) async{

    final tryGetReminderList = await _reminderApiDataSource.getReminderFromServer(context);

    return tryGetReminderList.fold((error){
      return Left(error);
    },(remindersList){
      return Right(remindersList.map((e) => const ReminderDto().toDomain(e)).toList());
    });
  }

  @override
  Future<Either<ErrorMessage, int>> getRemindersCount(BuildContext context) async{
    final getCount = await _reminderApiDataSource.getReminderCount(context);

    return getCount.fold((error){
      return Left(error);
    },(count){
      return Right(count);
    });
  }
}