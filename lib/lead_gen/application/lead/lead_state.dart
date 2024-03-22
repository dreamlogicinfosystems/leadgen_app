part of 'lead_bloc.dart';

@freezed
class LeadState with _$LeadState {
  const factory LeadState.initial() = _Initial;

  const factory LeadState.loadingInProgress() = _loadingInProgress;

  const factory LeadState.success(String message) = _success;

  const factory LeadState.failed(String error) = _failed;

  const factory LeadState.emptyLeadList(List<Lead> empty) = _emptyLeadList;

  const factory LeadState.successLeadsList(List<Lead> leads) = _successLeadsList;

  const factory LeadState.successChatList(List<Chat> leadChat) = _successChatList;
}
