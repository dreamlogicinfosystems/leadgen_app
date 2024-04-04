part of 'lead_count_bloc.dart';

@freezed
class LeadCountEvent with _$LeadCountEvent {
  const factory LeadCountEvent.getLeadCount(BuildContext context) = _getLeadCount;
}
