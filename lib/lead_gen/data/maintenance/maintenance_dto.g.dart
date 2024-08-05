// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintenance_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MaintenanceDtoImpl _$$MaintenanceDtoImplFromJson(Map<String, dynamic> json) =>
    _$MaintenanceDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      isEnabled: (json['isEnabled'] as num?)?.toInt(),
      message: json['message'] as String?,
      isCompulsory: (json['isCompulsory'] as num?)?.toInt(),
      minAndroidVersion: (json['minAndroidVersion'] as num?)?.toInt(),
      minIosVersion: (json['minIosVersion'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MaintenanceDtoImplToJson(
        _$MaintenanceDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isEnabled': instance.isEnabled,
      'message': instance.message,
      'isCompulsory': instance.isCompulsory,
      'minAndroidVersion': instance.minAndroidVersion,
      'minIosVersion': instance.minIosVersion,
    };
