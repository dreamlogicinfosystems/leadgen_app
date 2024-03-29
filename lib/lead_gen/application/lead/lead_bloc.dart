import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lead/chat.dart';
import '../../domain/lead/lead.dart';
import '../../domain/lead/lead_repository.dart';

part 'lead_event.dart';
part 'lead_state.dart';
part 'lead_bloc.freezed.dart';

class LeadBloc extends Bloc<LeadEvent, LeadState> {
  final LeadRepository _leadRepository;
  static List<String> departmentIds = [];
  LeadBloc(this._leadRepository) : super(const LeadState.initial()) {
    on<LeadEvent>(mapEventToState);
  }

  Future<void>mapEventToState(LeadEvent event,Emitter<LeadState>emit) async{
    await event.map(
        addLead: (e) async{
          emit(const LeadState.loadingInProgress());

          final tryAddLead = await _leadRepository.addLead(
              Lead(
                name: e.lead.name,
                phone: e.lead.phone,
                email: e.lead.email,
                message: e.lead.message,
                departmentIds: e.lead.departmentIds
              ),
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

          final tryGetLeads = await _leadRepository.getLeadsList(e.type,e.context);

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
              e.leadId, e.statusId,
              e.message, e.context
          );

          tryUpdateStatus.fold((error){
            emit(LeadState.failed(error.message));
          },(message){
            emit(LeadState.success(message.successMessage));
          });
        }
    );
  }
}
