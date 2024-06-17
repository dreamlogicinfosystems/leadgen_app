// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DepartmentUserDtoImpl _$$DepartmentUserDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DepartmentUserDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      departmentId: (json['departmentId'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      departmentDtos: (json['departmentDtos'] as List<dynamic>?)
          ?.map((e) => DepartmentDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DepartmentUserDtoImplToJson(
        _$DepartmentUserDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'departmentId': instance.departmentId,
      'departmentDtos': instance.departmentDtos,
    };
