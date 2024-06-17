// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReminderDtoImpl _$$ReminderDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReminderDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      dateTime: json['dateTime'] as String?,
      repeatInterval: json['repeatInterval'] as String?,
      repeatCount: json['repeatCount'] as String?,
      reminderData: (json['reminderData'] as List<dynamic>?)
          ?.map((e) => ReminderDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReminderDtoImplToJson(_$ReminderDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'date': instance.date,
      'time': instance.time,
      'dateTime': instance.dateTime,
      'repeatInterval': instance.repeatInterval,
      'repeatCount': instance.repeatCount,
      'reminderData': instance.reminderData,
    };

_$ReminderDataDtoImpl _$$ReminderDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReminderDataDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      note: json['note'] as String?,
      inviteSendOn: json['inviteSendOn'] as String?,
    );

Map<String, dynamic> _$$ReminderDataDtoImplToJson(
        _$ReminderDataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'note': instance.note,
      'inviteSendOn': instance.inviteSendOn,
    };
