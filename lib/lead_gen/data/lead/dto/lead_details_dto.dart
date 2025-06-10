import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead_details.dart';

part 'lead_details_dto.freezed.dart';

part 'lead_details_dto.g.dart';

@freezed
abstract class LeadDetailsDto implements _$LeadDetailsDto {
  const LeadDetailsDto._();

  const factory LeadDetailsDto({
    @JsonKey(name: "customer_name") String? customerName,
    @JsonKey(name: "requirement") String? requirement
  }) = _LeadDetailsDto;

  factory LeadDetailsDto.fromJson(Map<String,dynamic> json) => _$LeadDetailsDtoFromJson(json);

  LeadDetails toDomain() {
    return LeadDetails(
      customerName: customerName == null || customerName == "" ? null : customerName,
      requirement: requirement == null || requirement == "" ? null : requirement
    );
  }
}
