part of 'reminder_bloc.dart';

@freezed
class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.addReminder(Reminder reminder,BuildContext context) = _addReminder;

  const factory ReminderEvent.getReminders(BuildContext context) = _getReminders;

  const factory ReminderEvent.deleteReminder(int reminderId,BuildContext context) = _deleteReminder;

  const factory ReminderEvent.setRemainder(String message,DateTime reminderDate,TimeOfDay reminderTime) = _setRemainder;
}
