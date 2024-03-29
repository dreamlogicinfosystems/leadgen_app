import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/data/department/department_dto.dart';
import 'package:lead_gen/lead_gen/domain/department_user/department_user.dart';

part 'department_user_dto.freezed.dart';

part 'department_user_dto.g.dart';

@freezed
abstract class DepartmentUserDto implements _$DepartmentUserDto{
  const DepartmentUserDto._();

  const factory DepartmentUserDto({
    int? id,
    String? name,
    String? phone,
    String? email,
    String? password,
    List<int>? departmentId,
    List<DepartmentDto>? departmentDtos,
  }) = _DepartmentUserDto;

  factory DepartmentUserDto.fromJson(Map<String,dynamic>json) => _$DepartmentUserDtoFromJson(json);

  factory DepartmentUserDto.fromDomain(DepartmentUser departmentUser){
    return DepartmentUserDto(
      id: departmentUser.id,
      name: departmentUser.name,
      password: departmentUser.password,
      phone: departmentUser.phone,
      email: departmentUser.email,
      departmentId: departmentUser.departmentId
    );
  }

  DepartmentUser toDomain(DepartmentUserDto departmentUserDto){
    return DepartmentUser(
      id: departmentUserDto.id,
      name: departmentUserDto.name,
      phone: departmentUserDto.phone,
      email: departmentUserDto.email,
      departments: departmentUserDto.departmentDtos?.map((e) => const DepartmentDto().toDomain()).toList(),
    );
  }
}