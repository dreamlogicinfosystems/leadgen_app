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
      title: json['title'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      message: json['message'] as String?,
      createdAt: json['createdAt'] as String?,
      showStatus: json['showStatus'] as String?,
      lastChatDate: json['lastChatDate'] as String?,
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
      'title': instance.title,
      'date': instance.date,
      'time': instance.time,
      'message': instance.message,
      'createdAt': instance.createdAt,
      'showStatus': instance.showStatus,
      'lastChatDate': instance.lastChatDate,
      'departmentIds': instance.departmentIds,
    };
