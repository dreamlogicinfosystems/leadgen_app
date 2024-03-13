part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.createDepartment(String departName,BuildContext context) = _createDepartment;

  const factory DepartmentEvent.getDepartments(BuildContext context) = _getDepartments;

  const factory DepartmentEvent.updateDepartment(Department department,BuildContext context) = _updateDepartment;

  const factory DepartmentEvent.deleteDepartment(int id,BuildContext context) = _deleteDepartment;
}
