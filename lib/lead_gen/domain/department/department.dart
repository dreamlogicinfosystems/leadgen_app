import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

@freezed
class Department with _$Department{
  const factory Department({
    int? id,
    String? departmentName,
  }) = _Department;
}