// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lead_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeadDtoImpl _$$LeadDtoImplFromJson(Map<String, dynamic> json) =>
    _$LeadDtoImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      message: json['message'] as String?,
      departmentIds: (json['departmentIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$LeadDtoImplToJson(_$LeadDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'message': instance.message,
      'departmentIds': instance.departmentIds,
    };
