import 'package:freezed_annotation/freezed_annotation.dart';

import '../department/department.dart';

part 'department_user.freezed.dart';

@freezed
class DepartmentUser with _$DepartmentUser{
  const factory DepartmentUser({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? password,
    List<int>? departmentId,
    List<Department>? departments,
  }) = _DepartmentUser;
}