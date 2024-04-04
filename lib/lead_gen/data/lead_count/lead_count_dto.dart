import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/lead_count/lead_count.dart';

part 'lead_count_dto.freezed.dart';

@freezed
abstract class LeadCountDto implements _$LeadCountDto{
  const LeadCountDto._();

  const factory LeadCountDto({
    int? totalLeads,
    int? dueLeads,
    int? upcomingLeads
  }) = _LeadCountDto;

  LeadCount toDomain(LeadCountDto leadCountDto){
    return LeadCount(
      totalLeads: leadCountDto.totalLeads,
      dueLeads: leadCountDto.dueLeads,
      upcomingLeads: leadCountDto.upcomingLeads
    );
  }
}