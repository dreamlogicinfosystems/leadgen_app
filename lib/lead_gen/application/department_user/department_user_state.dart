part of 'department_user_bloc.dart';

@freezed
class DepartmentUserState with _$DepartmentUserState {
  const factory DepartmentUserState.initial() = _Initial;

  const factory DepartmentUserState.loadingInProgress() = _loadingInProgress;

  const factory DepartmentUserState.success(String message) = _success;

  const factory DepartmentUserState.departmentUser(List<DepartmentUser> users) = _departmentUser;

  const factory DepartmentUserState.failed(String error) = _failed;
}
