import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../constants/constant.dart';
import '../../domain/lead/chat.dart';
import '../../domain/lead/lead.dart';
import '../../domain/lead/lead_repository.dart';

part 'lead_event.dart';
part 'lead_state.dart';
part 'lead_bloc.freezed.dart';

class LeadBloc extends Bloc<LeadEvent, LeadState> {
  final LeadRepository _leadRepository;
  static List<String> departmentIds = [];
  static DateTime? pickedDate;
  static TimeOfDay? pickedTime;
  static String? formattedDate;
  LeadBloc(this._leadRepository) : super(const LeadState.initial()) {
    on<LeadEvent>(mapEventToState);
  }

  Future<void>mapEventToState(LeadEvent event,Emitter<LeadState>emit) async{
    await event.map(
        addLead: (e) async{
          emit(const LeadState.loadingInProgress());

          if(pickedDate!=null){
            formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate!);
          }

          final reminderDateTime = DateTime(pickedDate!.year,pickedDate!.month,pickedDate!.day,pickedTime!.hour,pickedTime!.minute);

          final tryAddLead = await _leadRepository.addLead(
              Lead(
                name: e.lead.name,
                phone: e.lead.phone,
                email: e.lead.email,
                title: e.lead.title,
                date: formattedDate ?? '',
                time: e.lead.time,
                message: e.lead.message,
                departmentIds: e.lead.departmentIds
              ),
              reminderDateTime,
              e.context
          );

          tryAddLead.fold((error){
            emit(LeadState.failed(error.message));
          },(success){
            emit(LeadState.success(success.successMessage));
          });
        },
        addLeadChat: (e) async{
          emit(const LeadState.loadingInProgress());

          final tryAddLeadChat = await _leadRepository.addLeadChat(
                Lead(id: e.lead.id, message: e.lead.message), e.context
          );

          tryAddLeadChat.fold((error){
            emit(LeadState.failed(error.message));
          },(message){
            emit(LeadState.success(message.successMessage));
            add(LeadEvent.getLeadChat(e.lead.id!, e.context));
          });
        },
        getLeads: (e) async{
          emit(const LeadState.loadingInProgress());

          final tryGetLeads = await _leadRepository.getLeadsList(e.type,e.deptId,e.context);

          tryGetLeads.fold((emptyList){
            emit(LeadState.emptyLeadList(emptyList));
          },(leadList){
            emit(LeadState.successLeadsList(leadList));
          });
        },
        getLeadChat: (e) async{
          emit(const LeadState.loadingInProgress());

          final getChatList = await _leadRepository.getLeadChat(e.leadId, e.context);

          getChatList.fold((error){
            emit(LeadState.failed(error.message));
          },(leadChatList){
            emit(LeadState.successChatList(leadChatList));
          });
        },
        updateLeadStatus: (e) async{
          emit(const LeadState.loadingInProgress());

          final tryUpdateStatus = await _leadRepository.updateLeadStatus(
              e.leadId,
              e.statusId,
              e.message,
              e.context
          );

          tryUpdateStatus.fold((error){
            emit(LeadState.failed(error.message));
          },(message){
            emit(LeadState.success(message.successMessage));
          });
        }
    );
  }

  static isTimePassed(DateTime dateTime){
    final now = DateTime.now();

    final selectedDateTime = dateTime;

    return now.isAfter(selectedDateTime);
  }

  static Future<String?> selectReminderDateTime(BuildContext context) async{
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
        pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(DateTime.now())
        );

        debugPrint("Time: $pickedTime");

        if(pickedTime!=null){
          if(pickedTime!.hour>=12){
            if(pickedTime!.hour==12){
              time = "${pickedTime!.hour}:${pickedTime!.minute} PM";
            }else{
              final hour = pickedTime!.hour - 12;
              debugPrint(hour.toString());
              time = "$hour:${pickedTime!.minute} PM";
            }
          }
          else{
            if(pickedTime!.hour==00){
              final hour = pickedTime!.hour + 12;
              debugPrint(hour.toString());
              time = "$hour:${pickedTime!.minute} AM";
            }else{
              time = "${pickedTime!.hour}:${pickedTime!.minute} AM";
            }
          }
          final dateTime = DateTime(pickedDate!.year,pickedDate!.month,pickedDate!.day,pickedTime!.hour,pickedTime!.minute);

          if(isTimePassed(dateTime)){
            showErrorToastMessage("Time has been passed! Please select another time");
          }else {
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
