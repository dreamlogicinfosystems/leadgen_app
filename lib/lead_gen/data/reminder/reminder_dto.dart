import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/reminder/reminder.dart';

part 'reminder_dto.freezed.dart';

part 'reminder_dto.g.dart';

@freezed
abstract class ReminderDto implements _$ReminderDto{
  const ReminderDto._();

  const factory ReminderDto({
    int? id,
    String? message,
    String? date,
    String? time,
    String? dateTime
  }) = _ReminderDto;

  factory ReminderDto.fromJson(Map<String,dynamic>json) => _$ReminderDtoFromJson(json);

  factory ReminderDto.fromDomain(Reminder reminder){
    return ReminderDto(
      message: reminder.message,
      date: reminder.date,
      time: reminder.time
    );
  }

  Reminder toDomain(ReminderDto reminderDto){
    return Reminder(
      id: reminderDto.id,
      message: reminderDto.message,
      dateTime: reminderDto.dateTime
    );
  }
}