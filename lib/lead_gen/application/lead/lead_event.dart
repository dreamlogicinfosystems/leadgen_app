part of 'lead_bloc.dart';

@freezed
class LeadEvent with _$LeadEvent {
  const factory LeadEvent.addLead(Lead lead,BuildContext context) = _addLead;

  const factory LeadEvent.addLeadChat(Lead lead,BuildContext context) = _addLeadChat;

  const factory LeadEvent.getLeads(String type,BuildContext context) = _getLeads;

  const factory LeadEvent.getLeadChat(int leadId,BuildContext context) = _getLeadChat;

  const factory LeadEvent.updateLeadStatus(int leadId,int statusId,String message,BuildContext context) = _updateLeadStatus;
}
