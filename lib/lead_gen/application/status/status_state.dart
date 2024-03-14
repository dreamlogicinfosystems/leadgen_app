part of 'status_bloc.dart';

@freezed
class StatusState with _$StatusState {
  const factory StatusState.initial() = _Initial;

  const factory StatusState.loadingInProgress() = _loadingInProgress;

  const factory StatusState.failed(String error) = _failed;

  const factory StatusState.successStatusesList(List<Status> statusesList) = _successStatusesList;
}
