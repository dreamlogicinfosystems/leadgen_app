import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/department/department.dart';

part 'department_dto.freezed.dart';

part 'department_dto.g.dart';

@freezed
abstract class DepartmentDto implements _$DepartmentDto{
  const DepartmentDto._();

  const factory DepartmentDto({
    int? id,
    String? departmentName
  }) = _DepartmentDto;

  factory DepartmentDto.fromJson(Map<String,dynamic>json) => _$DepartmentDtoFromJson(json);

  factory DepartmentDto.fromDomain(Department department){
    return DepartmentDto(
      id: department.id,
      departmentName: department.departmentName
    );
  }

  Department toDomain(DepartmentDto departmentDto){
    return Department(
      id: departmentDto.id,
      departmentName: departmentDto.departmentName
    );
  }
}