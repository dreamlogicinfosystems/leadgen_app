import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/status/status.dart';

part 'status_dto.freezed.dart';

part 'status_dto.g.dart';

@freezed
abstract class StatusDto implements _$StatusDto{
  const StatusDto._();

  const factory StatusDto({
    int? id,
    String? name,
  }) = _StatusDto;

  factory StatusDto.fromJson(Map<String,dynamic>json) => _$StatusDtoFromJson(json);

  Status toDomain(StatusDto statusDto){
    return Status(
      id: statusDto.id,
      name: statusDto.name
    );
  }
}