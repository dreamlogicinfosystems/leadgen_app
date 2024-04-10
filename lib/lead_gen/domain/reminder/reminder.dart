import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder.freezed.dart';

@freezed
class Reminder with _$Reminder{
  const factory Reminder({
    int? id,
    String? message,
    String? date,
    String? time,
    String? dateTime,
    String? repeatInterval,
    String? repeatCount,
    List<ReminderDetails>? reminderData,
  }) = _Reminder;
}


@freezed
class ReminderDetails with _$ReminderDetails{
  const factory ReminderDetails({
    int? id,
    String? note,
    String? inviteSendOn,
  }) = _ReminderDetails;
}