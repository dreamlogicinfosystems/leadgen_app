// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DepartmentUserDto _$DepartmentUserDtoFromJson(Map<String, dynamic> json) {
  return _DepartmentUserDto.fromJson(json);
}

/// @nodoc
mixin _$DepartmentUserDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<int>? get departmentId => throw _privateConstructorUsedError;
  DepartmentDto? get departmentDto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentUserDtoCopyWith<DepartmentUserDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentUserDtoCopyWith<$Res> {
  factory $DepartmentUserDtoCopyWith(
          DepartmentUserDto value, $Res Function(DepartmentUserDto) then) =
      _$DepartmentUserDtoCopyWithImpl<$Res, DepartmentUserDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? password,
      List<int>? departmentId,
      DepartmentDto? departmentDto});

  $DepartmentDtoCopyWith<$Res>? get departmentDto;
}

/// @nodoc
class _$DepartmentUserDtoCopyWithImpl<$Res, $Val extends DepartmentUserDto>
    implements $DepartmentUserDtoCopyWith<$Res> {
  _$DepartmentUserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? departmentId = freezed,
    Object? departmentDto = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentId: freezed == departmentId
          ? _value.departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      departmentDto: freezed == departmentDto
          ? _value.departmentDto
          : departmentDto // ignore: cast_nullable_to_non_nullable
              as DepartmentDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DepartmentDtoCopyWith<$Res>? get departmentDto {
    if (_value.departmentDto == null) {
      return null;
    }

    return $DepartmentDtoCopyWith<$Res>(_value.departmentDto!, (value) {
      return _then(_value.copyWith(departmentDto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DepartmentUserDtoImplCopyWith<$Res>
    implements $DepartmentUserDtoCopyWith<$Res> {
  factory _$$DepartmentUserDtoImplCopyWith(_$DepartmentUserDtoImpl value,
          $Res Function(_$DepartmentUserDtoImpl) then) =
      __$$DepartmentUserDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? password,
      List<int>? departmentId,
      DepartmentDto? departmentDto});

  @override
  $DepartmentDtoCopyWith<$Res>? get departmentDto;
}

/// @nodoc
class __$$DepartmentUserDtoImplCopyWithImpl<$Res>
    extends _$DepartmentUserDtoCopyWithImpl<$Res, _$DepartmentUserDtoImpl>
    implements _$$DepartmentUserDtoImplCopyWith<$Res> {
  __$$DepartmentUserDtoImplCopyWithImpl(_$DepartmentUserDtoImpl _value,
      $Res Function(_$DepartmentUserDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? departmentId = freezed,
    Object? departmentDto = freezed,
  }) {
    return _then(_$DepartmentUserDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentId: freezed == departmentId
          ? _value._departmentId
          : departmentId // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      departmentDto: freezed == departmentDto
          ? _value.departmentDto
          : departmentDto // ignore: cast_nullable_to_non_nullable
              as DepartmentDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DepartmentUserDtoImpl extends _DepartmentUserDto {
  const _$DepartmentUserDtoImpl(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.password,
      final List<int>? departmentId,
      this.departmentDto})
      : _departmentId = departmentId,
        super._();

  factory _$DepartmentUserDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DepartmentUserDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? password;
  final List<int>? _departmentId;
  @override
  List<int>? get departmentId {
    final value = _departmentId;
    if (value == null) return null;
    if (_departmentId is EqualUnmodifiableListView) return _departmentId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DepartmentDto? departmentDto;

  @override
  String toString() {
    return 'DepartmentUserDto(id: $id, name: $name, phone: $phone, email: $email, password: $password, departmentId: $departmentId, departmentDto: $departmentDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentUserDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._departmentId, _departmentId) &&
            (identical(other.departmentDto, departmentDto) ||
                other.departmentDto == departmentDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, password,
      const DeepCollectionEquality().hash(_departmentId), departmentDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentUserDtoImplCopyWith<_$DepartmentUserDtoImpl> get copyWith =>
      __$$DepartmentUserDtoImplCopyWithImpl<_$DepartmentUserDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DepartmentUserDtoImplToJson(
      this,
    );
  }
}

abstract class _DepartmentUserDto extends DepartmentUserDto {
  const factory _DepartmentUserDto(
      {final int? id,
      final String? name,
      final String? phone,
      final String? email,
      final String? password,
      final List<int>? departmentId,
      final DepartmentDto? departmentDto}) = _$DepartmentUserDtoImpl;
  const _DepartmentUserDto._() : super._();

  factory _DepartmentUserDto.fromJson(Map<String, dynamic> json) =
      _$DepartmentUserDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get password;
  @override
  List<int>? get departmentId;
  @override
  DepartmentDto? get departmentDto;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentUserDtoImplCopyWith<_$DepartmentUserDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
