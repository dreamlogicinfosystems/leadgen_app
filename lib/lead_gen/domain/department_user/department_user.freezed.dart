// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentUser {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  List<int>? get departmentId => throw _privateConstructorUsedError;
  List<Department>? get departments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepartmentUserCopyWith<DepartmentUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentUserCopyWith<$Res> {
  factory $DepartmentUserCopyWith(
          DepartmentUser value, $Res Function(DepartmentUser) then) =
      _$DepartmentUserCopyWithImpl<$Res, DepartmentUser>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? password,
      List<int>? departmentId,
      List<Department>? departments});
}

/// @nodoc
class _$DepartmentUserCopyWithImpl<$Res, $Val extends DepartmentUser>
    implements $DepartmentUserCopyWith<$Res> {
  _$DepartmentUserCopyWithImpl(this._value, this._then);

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
    Object? departments = freezed,
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
      departments: freezed == departments
          ? _value.departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DepartmentUserImplCopyWith<$Res>
    implements $DepartmentUserCopyWith<$Res> {
  factory _$$DepartmentUserImplCopyWith(_$DepartmentUserImpl value,
          $Res Function(_$DepartmentUserImpl) then) =
      __$$DepartmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? password,
      List<int>? departmentId,
      List<Department>? departments});
}

/// @nodoc
class __$$DepartmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserCopyWithImpl<$Res, _$DepartmentUserImpl>
    implements _$$DepartmentUserImplCopyWith<$Res> {
  __$$DepartmentUserImplCopyWithImpl(
      _$DepartmentUserImpl _value, $Res Function(_$DepartmentUserImpl) _then)
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
    Object? departments = freezed,
  }) {
    return _then(_$DepartmentUserImpl(
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
      departments: freezed == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>?,
    ));
  }
}

/// @nodoc

class _$DepartmentUserImpl implements _DepartmentUser {
  const _$DepartmentUserImpl(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.password,
      final List<int>? departmentId,
      final List<Department>? departments})
      : _departmentId = departmentId,
        _departments = departments;

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

  final List<Department>? _departments;
  @override
  List<Department>? get departments {
    final value = _departments;
    if (value == null) return null;
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DepartmentUser(id: $id, name: $name, phone: $phone, email: $email, password: $password, departmentId: $departmentId, departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DepartmentUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality()
                .equals(other._departmentId, _departmentId) &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      phone,
      email,
      password,
      const DeepCollectionEquality().hash(_departmentId),
      const DeepCollectionEquality().hash(_departments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DepartmentUserImplCopyWith<_$DepartmentUserImpl> get copyWith =>
      __$$DepartmentUserImplCopyWithImpl<_$DepartmentUserImpl>(
          this, _$identity);
}

abstract class _DepartmentUser implements DepartmentUser {
  const factory _DepartmentUser(
      {final int? id,
      final String? name,
      final String? phone,
      final String? email,
      final String? password,
      final List<int>? departmentId,
      final List<Department>? departments}) = _$DepartmentUserImpl;

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
  List<Department>? get departments;
  @override
  @JsonKey(ignore: true)
  _$$DepartmentUserImplCopyWith<_$DepartmentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
