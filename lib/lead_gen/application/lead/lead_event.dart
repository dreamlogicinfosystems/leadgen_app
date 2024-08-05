part of 'lead_bloc.dart';

@freezed
class LeadEvent with _$LeadEvent {
  const factory LeadEvent.addLead(Lead lead,BuildContext context) = _addLead;

  const factory LeadEvent.addLeadChat(Lead lead,BuildContext context) = _addLeadChat;

  const factory LeadEvent.getLeads(String type,int deptId,BuildContext context) = _getLeads;

  const factory LeadEvent.getLeadChat(int leadId,BuildContext context) = _getLeadChat;

  const factory LeadEvent.getArchiveLeads(String type,String subType,BuildContext context) = _getArchiveLeads;

  const factory LeadEvent.getSearchedLead(String name,String type,String subType,BuildContext context) = _getSearchedLead;

  const factory LeadEvent.updateLeadStatus(int leadId,int statusId,String message,BuildContext context) = _updateLeadStatus;

  const factory LeadEvent.updateLeadDepartments(int id,List<int> deptIds,BuildContext context) = _updateLeadDepartments;
}
