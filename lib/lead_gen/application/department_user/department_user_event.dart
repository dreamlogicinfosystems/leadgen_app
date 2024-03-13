part of 'department_user_bloc.dart';

@freezed
class DepartmentUserEvent with _$DepartmentUserEvent {
  const factory DepartmentUserEvent.addDepartmentUser(DepartmentUser user,BuildContext context) = _addDepartmentUser;

  const factory DepartmentUserEvent.getDepartmentUser(BuildContext context) = _getDepartmentUser;

  const factory DepartmentUserEvent.deleteDepartmentUser(int userId,BuildContext context) = _deleteDepartmentUser;

  const factory DepartmentUserEvent.updateDepartmentUser(DepartmentUser user,BuildContext context) = _updateDepartmentUser;
}
