part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loadingInProgress() = _loadingInProgress;

  const factory AuthState.success(String? message) = _success;

  const factory AuthState.failed(String? error) = _failed;
}
