import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/lead/lead.dart';

part 'lead_dto.freezed.dart';

part 'lead_dto.g.dart';

@freezed
abstract class LeadDto implements _$LeadDto{
  const LeadDto._();

  const factory LeadDto({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? message,
    String? createdAt,
    String? lastChatDate,
    List<int>? departmentIds
  }) = _LeadDto;

  factory LeadDto.fromJson(Map<String,dynamic>json) => _$LeadDtoFromJson(json);

  factory LeadDto.fromDomain(Lead lead){
    return LeadDto(
      name: lead.name,
      phone: lead.phone,
      email: lead.email,
      message: lead.message,
      departmentIds: lead.departmentIds
    );
  }

  Lead toDomain(LeadDto leadDto){
    return Lead(
      id: leadDto.id,
      name: leadDto.name,
      phone: leadDto.phone,
      email: leadDto.email,
      message: leadDto.message,
      createdAt: leadDto.createdAt,
      lastChatDate: leadDto.lastChatDate
    );
  }
}