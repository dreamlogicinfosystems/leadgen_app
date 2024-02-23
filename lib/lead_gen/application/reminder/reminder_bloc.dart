import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/reminder/reminder_repository.dart';

part 'reminder_event.dart';
part 'reminder_state.dart';
part 'reminder_bloc.freezed.dart';

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderRepository _reminderRepository;
  static DateTime? pickedDate;
  static TimeOfDay? pickedTime;
  ReminderBloc(this._reminderRepository) : super(const ReminderState.initial()) {
    on<ReminderEvent>(mapEventToState);
  }

  Future<void> mapEventToState(ReminderEvent event,Emitter<ReminderState>emit) async{
    emit(const ReminderState.loadingInProgress());

    final result = await _reminderRepository.setRemainder(event.message, event.reminderDate, pickedTime!);

    result.fold((error){
      emit(const ReminderState.failed());
    },(success){
      emit(ReminderState.saved(success));
    });
  }

  static Future<DateTime?> selectReminderDate(BuildContext context) async{
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

    if(pickedDate!=null){
      return pickedDate;
    }
    return null;
  }

  static Future<String?> selectReminderTime(BuildContext context) async{
    pickedTime = await showTimePicker(
      builder: (context,child){
        return Theme(
            data: ThemeData(
                timePickerTheme: const TimePickerThemeData(
                    backgroundColor: Colors.white
                ),
                shadowColor: Colors.black,
                useMaterial3: true
            ),
            child: child!
        );
      },
      context: context,
      initialTime: TimeOfDay.now(),
    );

    debugPrint("Time: $pickedTime");

    if(pickedTime!=null){
      if(pickedTime!.hour>=12){
        if(pickedTime!.hour==12){
          return "${pickedTime!.hour}:${pickedTime!.minute} PM";
        }else{
          final hour = pickedTime!.hour - 12;
          debugPrint(hour.toString());
          return "$hour:${pickedTime!.minute} PM";
        }
      }else{
        if(pickedTime!.hour==00){
          final hour = pickedTime!.hour + 12;
          debugPrint(hour.toString());
          return "$hour:${pickedTime!.minute} AM";
        }else{
          return "${pickedTime!.hour}:${pickedTime!.minute} AM";
        }
      }
    }
    return null;
  }
}
