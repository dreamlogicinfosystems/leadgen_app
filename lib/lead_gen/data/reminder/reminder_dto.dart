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
    String? dateTime,
    String? repeatInterval,
    String? repeatCount,
    List<ReminderDataDto>? reminderData,
  }) = _ReminderDto;

  factory ReminderDto.fromJson(Map<String,dynamic>json) => _$ReminderDtoFromJson(json);

  factory ReminderDto.fromDomain(Reminder reminder){
    return ReminderDto(
      message: reminder.message,
      date: reminder.date,
      time: reminder.time,
      repeatInterval: reminder.repeatInterval,
      repeatCount: reminder.repeatCount
    );
  }

  Reminder toDomain(ReminderDto reminderDto){
    return Reminder(
      date: reminderDto.date,
      reminderData: reminderDto.reminderData?.map((e) => const ReminderDataDto().toDomain(e)).toList(),
    );
  }
}


@freezed
abstract class ReminderDataDto implements _$ReminderDataDto{
  const ReminderDataDto._();

  const factory ReminderDataDto({
    int? id,
    String? note,
    String? inviteSendOn,
  }) = _ReminderDataDto;

  factory ReminderDataDto.fromJson(Map<String,dynamic>json) => _$ReminderDataDtoFromJson(json);

  ReminderDetails toDomain(ReminderDataDto reminderDataDto){
    return ReminderDetails(
      id: reminderDataDto.id,
      note: reminderDataDto.note,
      inviteSendOn: reminderDataDto.inviteSendOn
    );
  }
}