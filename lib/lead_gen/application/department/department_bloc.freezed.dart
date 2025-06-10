// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentEventCopyWith<$Res> {
  factory $DepartmentEventCopyWith(
          DepartmentEvent value, $Res Function(DepartmentEvent) then) =
      _$DepartmentEventCopyWithImpl<$Res, DepartmentEvent>;
}

/// @nodoc
class _$DepartmentEventCopyWithImpl<$Res, $Val extends DepartmentEvent>
    implements $DepartmentEventCopyWith<$Res> {
  _$DepartmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$createDepartmentImplCopyWith<$Res> {
  factory _$$createDepartmentImplCopyWith(_$createDepartmentImpl value,
          $Res Function(_$createDepartmentImpl) then) =
      __$$createDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String departName, BuildContext context});
}

/// @nodoc
class __$$createDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$createDepartmentImpl>
    implements _$$createDepartmentImplCopyWith<$Res> {
  __$$createDepartmentImplCopyWithImpl(_$createDepartmentImpl _value,
      $Res Function(_$createDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departName = null,
    Object? context = null,
  }) {
    return _then(_$createDepartmentImpl(
      null == departName
          ? _value.departName
          : departName // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$createDepartmentImpl implements _createDepartment {
  const _$createDepartmentImpl(this.departName, this.context);

  @override
  final String departName;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentEvent.createDepartment(departName: $departName, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$createDepartmentImpl &&
            (identical(other.departName, departName) ||
                other.departName == departName) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, departName, context);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$createDepartmentImplCopyWith<_$createDepartmentImpl> get copyWith =>
      __$$createDepartmentImplCopyWithImpl<_$createDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return createDepartment(departName, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return createDepartment?.call(departName, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (createDepartment != null) {
      return createDepartment(departName, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return createDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return createDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (createDepartment != null) {
      return createDepartment(this);
    }
    return orElse();
  }
}

abstract class _createDepartment implements DepartmentEvent {
  const factory _createDepartment(
          final String departName, final BuildContext context) =
      _$createDepartmentImpl;

  String get departName;
  BuildContext get context;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$createDepartmentImplCopyWith<_$createDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getDepartmentsImplCopyWith<$Res> {
  factory _$$getDepartmentsImplCopyWith(_$getDepartmentsImpl value,
          $Res Function(_$getDepartmentsImpl) then) =
      __$$getDepartmentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getDepartmentsImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$getDepartmentsImpl>
    implements _$$getDepartmentsImplCopyWith<$Res> {
  __$$getDepartmentsImplCopyWithImpl(
      _$getDepartmentsImpl _value, $Res Function(_$getDepartmentsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getDepartmentsImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getDepartmentsImpl implements _getDepartments {
  const _$getDepartmentsImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentEvent.getDepartments(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getDepartmentsImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getDepartmentsImplCopyWith<_$getDepartmentsImpl> get copyWith =>
      __$$getDepartmentsImplCopyWithImpl<_$getDepartmentsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return getDepartments(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return getDepartments?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (getDepartments != null) {
      return getDepartments(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return getDepartments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return getDepartments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (getDepartments != null) {
      return getDepartments(this);
    }
    return orElse();
  }
}

abstract class _getDepartments implements DepartmentEvent {
  const factory _getDepartments(final BuildContext context) =
      _$getDepartmentsImpl;

  BuildContext get context;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getDepartmentsImplCopyWith<_$getDepartmentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateDepartmentImplCopyWith<$Res> {
  factory _$$updateDepartmentImplCopyWith(_$updateDepartmentImpl value,
          $Res Function(_$updateDepartmentImpl) then) =
      __$$updateDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Department department, BuildContext context});

  $DepartmentCopyWith<$Res> get department;
}

/// @nodoc
class __$$updateDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$updateDepartmentImpl>
    implements _$$updateDepartmentImplCopyWith<$Res> {
  __$$updateDepartmentImplCopyWithImpl(_$updateDepartmentImpl _value,
      $Res Function(_$updateDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? department = null,
    Object? context = null,
  }) {
    return _then(_$updateDepartmentImpl(
      null == department
          ? _value.department
          : department // ignore: cast_nullable_to_non_nullable
              as Department,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentCopyWith<$Res> get department {
    return $DepartmentCopyWith<$Res>(_value.department, (value) {
      return _then(_value.copyWith(department: value));
    });
  }
}

/// @nodoc

class _$updateDepartmentImpl implements _updateDepartment {
  const _$updateDepartmentImpl(this.department, this.context);

  @override
  final Department department;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentEvent.updateDepartment(department: $department, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateDepartmentImpl &&
            (identical(other.department, department) ||
                other.department == department) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, department, context);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateDepartmentImplCopyWith<_$updateDepartmentImpl> get copyWith =>
      __$$updateDepartmentImplCopyWithImpl<_$updateDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return updateDepartment(department, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return updateDepartment?.call(department, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(department, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return updateDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return updateDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (updateDepartment != null) {
      return updateDepartment(this);
    }
    return orElse();
  }
}

abstract class _updateDepartment implements DepartmentEvent {
  const factory _updateDepartment(
          final Department department, final BuildContext context) =
      _$updateDepartmentImpl;

  Department get department;
  BuildContext get context;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateDepartmentImplCopyWith<_$updateDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteDepartmentImplCopyWith<$Res> {
  factory _$$deleteDepartmentImplCopyWith(_$deleteDepartmentImpl value,
          $Res Function(_$deleteDepartmentImpl) then) =
      __$$deleteDepartmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, BuildContext context});
}

/// @nodoc
class __$$deleteDepartmentImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$deleteDepartmentImpl>
    implements _$$deleteDepartmentImplCopyWith<$Res> {
  __$$deleteDepartmentImplCopyWithImpl(_$deleteDepartmentImpl _value,
      $Res Function(_$deleteDepartmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$deleteDepartmentImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$deleteDepartmentImpl implements _deleteDepartment {
  const _$deleteDepartmentImpl(this.id, this.context);

  @override
  final int id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentEvent.deleteDepartment(id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteDepartmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteDepartmentImplCopyWith<_$deleteDepartmentImpl> get copyWith =>
      __$$deleteDepartmentImplCopyWithImpl<_$deleteDepartmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return deleteDepartment(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return deleteDepartment?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return deleteDepartment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return deleteDepartment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (deleteDepartment != null) {
      return deleteDepartment(this);
    }
    return orElse();
  }
}

abstract class _deleteDepartment implements DepartmentEvent {
  const factory _deleteDepartment(final int id, final BuildContext context) =
      _$deleteDepartmentImpl;

  int get id;
  BuildContext get context;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$deleteDepartmentImplCopyWith<_$deleteDepartmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setDeptIdImplCopyWith<$Res> {
  factory _$$setDeptIdImplCopyWith(
          _$setDeptIdImpl value, $Res Function(_$setDeptIdImpl) then) =
      __$$setDeptIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$setDeptIdImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$setDeptIdImpl>
    implements _$$setDeptIdImplCopyWith<$Res> {
  __$$setDeptIdImplCopyWithImpl(
      _$setDeptIdImpl _value, $Res Function(_$setDeptIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$setDeptIdImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$setDeptIdImpl implements _setDeptId {
  const _$setDeptIdImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'DepartmentEvent.setDeptId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setDeptIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$setDeptIdImplCopyWith<_$setDeptIdImpl> get copyWith =>
      __$$setDeptIdImplCopyWithImpl<_$setDeptIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return setDeptId(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return setDeptId?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (setDeptId != null) {
      return setDeptId(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return setDeptId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return setDeptId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (setDeptId != null) {
      return setDeptId(this);
    }
    return orElse();
  }
}

abstract class _setDeptId implements DepartmentEvent {
  const factory _setDeptId(final int id) = _$setDeptIdImpl;

  int get id;

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$setDeptIdImplCopyWith<_$setDeptIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$resetDeptIdImplCopyWith<$Res> {
  factory _$$resetDeptIdImplCopyWith(
          _$resetDeptIdImpl value, $Res Function(_$resetDeptIdImpl) then) =
      __$$resetDeptIdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$resetDeptIdImplCopyWithImpl<$Res>
    extends _$DepartmentEventCopyWithImpl<$Res, _$resetDeptIdImpl>
    implements _$$resetDeptIdImplCopyWith<$Res> {
  __$$resetDeptIdImplCopyWithImpl(
      _$resetDeptIdImpl _value, $Res Function(_$resetDeptIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$resetDeptIdImpl implements _resetDeptId {
  const _$resetDeptIdImpl();

  @override
  String toString() {
    return 'DepartmentEvent.resetDeptId()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$resetDeptIdImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String departName, BuildContext context)
        createDepartment,
    required TResult Function(BuildContext context) getDepartments,
    required TResult Function(Department department, BuildContext context)
        updateDepartment,
    required TResult Function(int id, BuildContext context) deleteDepartment,
    required TResult Function(int id) setDeptId,
    required TResult Function() resetDeptId,
  }) {
    return resetDeptId();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String departName, BuildContext context)?
        createDepartment,
    TResult? Function(BuildContext context)? getDepartments,
    TResult? Function(Department department, BuildContext context)?
        updateDepartment,
    TResult? Function(int id, BuildContext context)? deleteDepartment,
    TResult? Function(int id)? setDeptId,
    TResult? Function()? resetDeptId,
  }) {
    return resetDeptId?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String departName, BuildContext context)? createDepartment,
    TResult Function(BuildContext context)? getDepartments,
    TResult Function(Department department, BuildContext context)?
        updateDepartment,
    TResult Function(int id, BuildContext context)? deleteDepartment,
    TResult Function(int id)? setDeptId,
    TResult Function()? resetDeptId,
    required TResult orElse(),
  }) {
    if (resetDeptId != null) {
      return resetDeptId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_createDepartment value) createDepartment,
    required TResult Function(_getDepartments value) getDepartments,
    required TResult Function(_updateDepartment value) updateDepartment,
    required TResult Function(_deleteDepartment value) deleteDepartment,
    required TResult Function(_setDeptId value) setDeptId,
    required TResult Function(_resetDeptId value) resetDeptId,
  }) {
    return resetDeptId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_createDepartment value)? createDepartment,
    TResult? Function(_getDepartments value)? getDepartments,
    TResult? Function(_updateDepartment value)? updateDepartment,
    TResult? Function(_deleteDepartment value)? deleteDepartment,
    TResult? Function(_setDeptId value)? setDeptId,
    TResult? Function(_resetDeptId value)? resetDeptId,
  }) {
    return resetDeptId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_createDepartment value)? createDepartment,
    TResult Function(_getDepartments value)? getDepartments,
    TResult Function(_updateDepartment value)? updateDepartment,
    TResult Function(_deleteDepartment value)? deleteDepartment,
    TResult Function(_setDeptId value)? setDeptId,
    TResult Function(_resetDeptId value)? resetDeptId,
    required TResult orElse(),
  }) {
    if (resetDeptId != null) {
      return resetDeptId(this);
    }
    return orElse();
  }
}

abstract class _resetDeptId implements DepartmentEvent {
  const factory _resetDeptId() = _$resetDeptIdImpl;
}

/// @nodoc
mixin _$DepartmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentStateCopyWith<$Res> {
  factory $DepartmentStateCopyWith(
          DepartmentState value, $Res Function(DepartmentState) then) =
      _$DepartmentStateCopyWithImpl<$Res, DepartmentState>;
}

/// @nodoc
class _$DepartmentStateCopyWithImpl<$Res, $Val extends DepartmentState>
    implements $DepartmentStateCopyWith<$Res> {
  _$DepartmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DepartmentState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DepartmentState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingInProgressImplCopyWith<$Res> {
  factory _$$loadingInProgressImplCopyWith(_$loadingInProgressImpl value,
          $Res Function(_$loadingInProgressImpl) then) =
      __$$loadingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingInProgressImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$loadingInProgressImpl>
    implements _$$loadingInProgressImplCopyWith<$Res> {
  __$$loadingInProgressImplCopyWithImpl(_$loadingInProgressImpl _value,
      $Res Function(_$loadingInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingInProgressImpl implements _loadingInProgress {
  const _$loadingInProgressImpl();

  @override
  String toString() {
    return 'DepartmentState.loadingInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements DepartmentState {
  const factory _loadingInProgress() = _$loadingInProgressImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$successImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DepartmentState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements DepartmentState {
  const factory _success(final String message) = _$successImpl;

  String get message;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$departmentListImplCopyWith<$Res> {
  factory _$$departmentListImplCopyWith(_$departmentListImpl value,
          $Res Function(_$departmentListImpl) then) =
      __$$departmentListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Department> departments});
}

/// @nodoc
class __$$departmentListImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$departmentListImpl>
    implements _$$departmentListImplCopyWith<$Res> {
  __$$departmentListImplCopyWithImpl(
      _$departmentListImpl _value, $Res Function(_$departmentListImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departments = null,
  }) {
    return _then(_$departmentListImpl(
      null == departments
          ? _value._departments
          : departments // ignore: cast_nullable_to_non_nullable
              as List<Department>,
    ));
  }
}

/// @nodoc

class _$departmentListImpl implements _departmentList {
  const _$departmentListImpl(final List<Department> departments)
      : _departments = departments;

  final List<Department> _departments;
  @override
  List<Department> get departments {
    if (_departments is EqualUnmodifiableListView) return _departments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_departments);
  }

  @override
  String toString() {
    return 'DepartmentState.departmentList(departments: $departments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$departmentListImpl &&
            const DeepCollectionEquality()
                .equals(other._departments, _departments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_departments));

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$departmentListImplCopyWith<_$departmentListImpl> get copyWith =>
      __$$departmentListImplCopyWithImpl<_$departmentListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) {
    return departmentList(departments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) {
    return departmentList?.call(departments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (departmentList != null) {
      return departmentList(departments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) {
    return departmentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) {
    return departmentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (departmentList != null) {
      return departmentList(this);
    }
    return orElse();
  }
}

abstract class _departmentList implements DepartmentState {
  const factory _departmentList(final List<Department> departments) =
      _$departmentListImpl;

  List<Department> get departments;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$departmentListImplCopyWith<_$departmentListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failedImplCopyWith<$Res> {
  factory _$$failedImplCopyWith(
          _$failedImpl value, $Res Function(_$failedImpl) then) =
      __$$failedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$failedImplCopyWithImpl<$Res>
    extends _$DepartmentStateCopyWithImpl<$Res, _$failedImpl>
    implements _$$failedImplCopyWith<$Res> {
  __$$failedImplCopyWithImpl(
      _$failedImpl _value, $Res Function(_$failedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$failedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$failedImpl implements _failed {
  const _$failedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'DepartmentState.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      __$$failedImplCopyWithImpl<_$failedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<Department> departments) departmentList,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<Department> departments)? departmentList,
    TResult? Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<Department> departments)? departmentList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentList value) departmentList,
    required TResult Function(_failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentList value)? departmentList,
    TResult? Function(_failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentList value)? departmentList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements DepartmentState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;

  /// Create a copy of DepartmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
