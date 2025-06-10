part of 'lead_info_extractor_bloc.dart';

@freezed
class LeadInfoExtractorState with _$LeadInfoExtractorState {
  const factory LeadInfoExtractorState.initial() = _Initial;

  const factory LeadInfoExtractorState.loadingInProgress() = _LoadingInProgress;

  const factory LeadInfoExtractorState.leadInfo(LeadDetails leadInfo) = _LeadInfo;

  const factory LeadInfoExtractorState.failed(String failure) = _Failed;
}
