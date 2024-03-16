import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder.freezed.dart';

@freezed
class Reminder with _$Reminder{
  const factory Reminder({
    int? id,
    String? message,
    String? date,
    String? time,
    String? dateTime
  }) = _Reminder;
}