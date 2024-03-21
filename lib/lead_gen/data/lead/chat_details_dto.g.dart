// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatDetailsDtoImpl _$$ChatDetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ChatDetailsDtoImpl(
      createdAt: json['createdAt'] as String?,
      message: json['message'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ChatDetailsDtoImplToJson(
        _$ChatDetailsDtoImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'message': instance.message,
      'name': instance.name,
    };
