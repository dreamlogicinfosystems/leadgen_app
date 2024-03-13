// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDtoImpl _$$ChatDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChatDtoImpl(
      name: json['name'] as String?,
      message: json['message'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$ChatDtoImplToJson(_$ChatDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'message': instance.message,
      'date': instance.date,
    };
