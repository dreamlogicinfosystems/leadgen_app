part of 'department_bloc.dart';

@freezed
class DepartmentState with _$DepartmentState {
  const factory DepartmentState.initial() = _Initial;

  const factory DepartmentState.loadingInProgress() = _loadingInProgress;

  const factory DepartmentState.success(String message) = _success;

  const factory DepartmentState.failed(String error) = _failed;
}
