import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/maintenance/maintenance.dart';

part 'maintenance_dto.freezed.dart';

part 'maintenance_dto.g.dart';

@freezed
abstract class MaintenanceDto implements _$MaintenanceDto{
  const MaintenanceDto._();

  const factory MaintenanceDto({
    int? id,
    int? isEnabled,
    String? message,
    int? isCompulsory,
    int? minAndroidVersion,
    int? minIosVersion
  }) = _MaintenanceDto;

  factory MaintenanceDto.fromJson(Map<String,dynamic> json) => _$MaintenanceDtoFromJson(json);

  Maintenance toDomain(MaintenanceDto maintenanceDto){
    return Maintenance(
        id: maintenanceDto.id,
        isEnabled: maintenanceDto.isEnabled,
        isCompulsory: maintenanceDto.isCompulsory,
        message: maintenanceDto.message,
        minAndroidVersion: maintenanceDto.minAndroidVersion,
        minIosVersion: maintenanceDto.minIosVersion
    );
  }
}

