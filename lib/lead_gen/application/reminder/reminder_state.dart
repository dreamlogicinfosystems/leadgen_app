part of 'reminder_bloc.dart';

@freezed
class ReminderState with _$ReminderState {
  const factory ReminderState.initial() = _Initial;

  const factory ReminderState.loadingInProgress() = _loadingInProgress;

  const factory ReminderState.saved(String message) = _saved;

  const factory ReminderState.failed() = _failed;
}
