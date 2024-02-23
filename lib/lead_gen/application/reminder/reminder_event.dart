part of 'reminder_bloc.dart';

@freezed
class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.setRemainder(String message,DateTime reminderDate,TimeOfDay reminderTime) = _setRemainder;
}
