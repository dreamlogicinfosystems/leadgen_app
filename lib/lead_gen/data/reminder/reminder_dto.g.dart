// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderDtoImpl _$$ReminderDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReminderDtoImpl(
      id: json['id'] as int?,
      message: json['message'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      dateTime: json['dateTime'] as String?,
    );

Map<String, dynamic> _$$ReminderDtoImplToJson(_$ReminderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'date': instance.date,
      'time': instance.time,
      'dateTime': instance.dateTime,
    };
