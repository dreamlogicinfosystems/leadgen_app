part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.loadingInProgress() = _loadingInProgress;

  const factory ProfileState.failed(String error) = _failed;

  const factory ProfileState.success(String message) = _success;

  const factory ProfileState.userData(User user) = _userData;
}
