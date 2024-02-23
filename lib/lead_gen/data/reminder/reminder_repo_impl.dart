import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import 'package:lead_gen/lead_gen/data/reminder/reminder_api_data_source.dart';

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

}