// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepartmentDto _$DepartmentDtoFromJson(Map<String, dynamic> json) {
  return _DepartmentDto.fromJson(json);
}

/// @nodoc
mixin _$DepartmentDto {
  int? get id => throw _privateConstructorUsedError;
  String? get departmentName => throw _privateConstructorUsedError;

  /// Serializes this DepartmentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DepartmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentDtoCopyWith<DepartmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentDtoCopyWith<$Res> {
  factory $DepartmentDtoCopyWith(
          DepartmentDto value, $Res Function(DepartmentDto) then) =
      _$DepartmentDtoCopyWithImpl<$Res, DepartmentDto>;
  @useResult
  $Res call({int? id, String? departmentName});
}

/// @nodoc
class _$DepartmentDtoCopyWithImpl<$Res, $Val extends DepartmentDto>
    implements $DepartmentDtoCopyWith<$Res> {
  _$DepartmentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? departmentName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentName: freezed == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentDtoImplCopyWith<$Res>
    implements $DepartmentDtoCopyWith<$Res> {
  factory _$$DepartmentDtoImplCopyWith(
          _$DepartmentDtoImpl value, $Res Function(_$DepartmentDtoImpl) then) =
      __$$DepartmentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? departmentName});
}

/// @nodoc
class __$$DepartmentDtoImplCopyWithImpl<$Res>
    extends _$DepartmentDtoCopyWithImpl<$Res, _$DepartmentDtoImpl>
    implements _$$DepartmentDtoImplCopyWith<$Res> {
  __$$DepartmentDtoImplCopyWithImpl(
      _$DepartmentDtoImpl _value, $Res Function(_$DepartmentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? departmentName = freezed,
  }) {
    return _then(_$DepartmentDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      departmentName: freezed == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentDtoImpl extends _DepartmentDto {
  const _$DepartmentDtoImpl({this.id, this.departmentName}) : super._();

  factory _$DepartmentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? departmentName;

  @override
  String toString() {
    return 'DepartmentDto(id: $id, departmentName: $departmentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, departmentName);

  /// Create a copy of DepartmentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentDtoImplCopyWith<_$DepartmentDtoImpl> get copyWith =>
      __$$DepartmentDtoImplCopyWithImpl<_$DepartmentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentDtoImplToJson(
      this,
    );
  }
}

abstract class _DepartmentDto extends DepartmentDto {
  const factory _DepartmentDto({final int? id, final String? departmentName}) =
      _$DepartmentDtoImpl;
  const _DepartmentDto._() : super._();

  factory _DepartmentDto.fromJson(Map<String, dynamic> json) =
      _$DepartmentDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get departmentName;

  /// Create a copy of DepartmentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DepartmentDtoImplCopyWith<_$DepartmentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
