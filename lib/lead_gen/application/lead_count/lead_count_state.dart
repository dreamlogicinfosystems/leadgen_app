part of 'lead_count_bloc.dart';

@freezed
class LeadCountState with _$LeadCountState {
  const factory LeadCountState.initial() = _Initial;

  const factory LeadCountState.loadingInProgress() = _loadingInProgress;

  const factory LeadCountState.successLeadCount(LeadCount leadCount) = _successLeadCount;

  const factory LeadCountState.failed(String message) = _failed;
}
