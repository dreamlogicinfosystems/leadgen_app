part of 'department_bloc.dart';

@freezed
class DepartmentEvent with _$DepartmentEvent {
  const factory DepartmentEvent.createDepartment(String departName,BuildContext context) = _createDepartment;
}
