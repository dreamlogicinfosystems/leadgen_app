import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_count.freezed.dart';

@freezed
class LeadCount with _$LeadCount{
  const factory LeadCount({
    int? totalLeads,
    int? dueLeads,
    int? upcomingLeads
  }) = _LeadCount;
}