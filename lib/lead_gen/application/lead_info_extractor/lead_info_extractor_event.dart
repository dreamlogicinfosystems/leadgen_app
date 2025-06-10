part of 'lead_info_extractor_bloc.dart';

@freezed
class LeadInfoExtractorEvent with _$LeadInfoExtractorEvent {
  const factory LeadInfoExtractorEvent.getLeadInfoFromQuery(String query, BuildContext context) = _GetLeadInfoFromQuery;
}
