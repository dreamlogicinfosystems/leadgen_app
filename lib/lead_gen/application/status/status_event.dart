part of 'status_bloc.dart';

@freezed
class StatusEvent with _$StatusEvent {
  const factory StatusEvent.getStatuses(BuildContext context) = _getStatuses;
}
