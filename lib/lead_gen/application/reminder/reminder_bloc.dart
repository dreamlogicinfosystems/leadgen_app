import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:lead_gen/lead_gen/constants/constant.dart';
import 'package:lead_gen/lead_gen/domain/reminder/reminder_repository.dart';

import '../../domain/reminder/reminder.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderRepository _reminderRepository;
  static DateTime? pickedDate;
  static TimeOfDay? pickedTime;
  static TimeOfDay? selectedTime;
  ReminderBloc(this._reminderRepository) : super(const ReminderState.initial()) {
    on<ReminderEvent>(mapEventToState);
  }

  Future<void> mapEventToState(ReminderEvent event,Emitter<ReminderState>emit) async{
    await event.map(
        addReminder: (e) async{
          emit(const ReminderState.loadingInProgress());

          final date = DateFormat('yyyy-MM-dd').format(pickedDate!);

          DateTime reminderDateTime = DateTime(pickedDate!.year,pickedDate!.month,pickedDate!.day,selectedTime!.hour,selectedTime!.minute);

          final tryAddReminder = await _reminderRepository.addReminder(
              Reminder(
                message: e.reminder.message,
                date: date,
                time: e.reminder.time,
                repeatInterval: e.reminder.repeatInterval,
                repeatCount: e.reminder.repeatCount
              ),
              reminderDateTime,
              e.context
          );

          tryAddReminder.fold((error){
            emit(ReminderState.failed(error.message));
          },(success){
            emit(ReminderState.saved(success.successMessage));
          });
        },
        getReminders: (e) async{
          emit(const ReminderState.loadingInProgress());

          final tryGetReminders = await _reminderRepository.getReminders(e.context);

          tryGetReminders.fold((error){
            emit(ReminderState.failed(error.message));
          },(remindersList){
            emit(ReminderState.successRemindersList(remindersList));
          });
        },
        deleteReminder: (e) async{
          emit(const ReminderState.loadingInProgress());

          final tryDeleteReminder = await _reminderRepository.deleteReminder(e.reminderId, e.context);

          tryDeleteReminder.fold((error){
            emit(ReminderState.failed(error.message));
          },(success){
            emit(ReminderState.saved(success.successMessage));
          });
        },
        setRemainder: (e) async{
          emit(const ReminderState.loadingInProgress());

          final result = await _reminderRepository.setRemainder(e.message, e.reminderDate, pickedTime!);

          result.fold((error){
            emit(ReminderState.failed(error));
          },(success){
            emit(ReminderState.saved(success));
          });
        },
        getRemindersCount: (e) async{
          emit(const ReminderState.loadingInProgress());

          final tryGetReminderCount = await _reminderRepository.getRemindersCount(e.context);

          tryGetReminderCount.fold((error){
            emit(ReminderState.failed(error.message));
          },(count){
            emit(ReminderState.successRemCount(count));
          });
        }
    );
  }

  static isTimePassed(DateTime dateTime){
    final now = DateTime.now();

    final selectedDateTime = dateTime;

    return now.isAfter(selectedDateTime);
  }

  static Future<String?> selectReminderDate(BuildContext context) async{
    pickedDate = await showDatePicker(
        builder: (context,child){
          return Theme(
              data: ThemeData(
                  datePickerTheme: const DatePickerThemeData(
                      backgroundColor: Colors.white
                  ),
                  useMaterial3: true
              ),
              child: child!
          );
        },
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2030)
    );

    String time = '';

    if(pickedDate!=null){
      if(context.mounted){
        final pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(DateTime.now())
        );

        selectedTime = pickedTime;

        debugPrint("Time: $pickedTime");

        if(pickedTime!=null){
          if(pickedTime.hour>=12){
            if(pickedTime.hour==12){
              final minute = pickedTime.minute.toString().length==1? "0${pickedTime.minute.toString()}" : pickedTime.minute.toString();
              time = "${pickedTime.hour}:$minute PM";
            }else{
              final temp = pickedTime.hour - 12;
              final hour = temp.toString().length==1? "0${temp.toString()}" : temp.toString();
              final minute = pickedTime.minute.toString().length==1? "0${pickedTime.minute.toString()}" : pickedTime.minute.toString();
              time = "$hour:$minute PM";
            }
          }
          else{
            if(pickedTime.hour==00){
              final hour = pickedTime.hour + 12;
              final minute = pickedTime.minute.toString().length==1? "0${pickedTime.minute.toString()}" : pickedTime.minute.toString();
              debugPrint(hour.toString());
              time = "$hour:$minute AM";
            }else{
              final hour = pickedTime.hour.toString().length==1? "0${pickedTime.hour.toString()}" : pickedTime.hour.toString();
              final minute = pickedTime.minute.toString().length==1? "0${pickedTime.minute.toString()}" : pickedTime.minute.toString();
              time = "$hour:$minute AM";
            }
          }

          final dateTime = DateTime(pickedDate!.year,pickedDate!.month,pickedDate!.day,pickedTime.hour,pickedTime.minute);

          if(isTimePassed(dateTime)){
            showErrorToastMessage("Time has been passed! Please select another time");
          }else{
            debugPrint("Time: $time");

            final formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate!);

            final simpleDateTime = "$formattedDate  $time";

            return simpleDateTime;
          }
        }else{
          showErrorToastMessage("Please select time");
        }
      }
    }else{
      showErrorToastMessage('Please select date!');
    }

    return null;
  }
}
