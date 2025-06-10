// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DepartmentUserEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentUser user, BuildContext context)
        addDepartmentUser,
    required TResult Function(BuildContext context) getDepartmentUser,
    required TResult Function(int userId, BuildContext context)
        deleteDepartmentUser,
    required TResult Function(DepartmentUser user, BuildContext context)
        updateDepartmentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult? Function(BuildContext context)? getDepartmentUser,
    TResult? Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult? Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult Function(BuildContext context)? getDepartmentUser,
    TResult Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDepartmentUser value) addDepartmentUser,
    required TResult Function(_getDepartmentUser value) getDepartmentUser,
    required TResult Function(_deleteDepartmentUser value) deleteDepartmentUser,
    required TResult Function(_updateDepartmentUser value) updateDepartmentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDepartmentUser value)? addDepartmentUser,
    TResult? Function(_getDepartmentUser value)? getDepartmentUser,
    TResult? Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult? Function(_updateDepartmentUser value)? updateDepartmentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDepartmentUser value)? addDepartmentUser,
    TResult Function(_getDepartmentUser value)? getDepartmentUser,
    TResult Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult Function(_updateDepartmentUser value)? updateDepartmentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DepartmentUserEventCopyWith<DepartmentUserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentUserEventCopyWith<$Res> {
  factory $DepartmentUserEventCopyWith(
          DepartmentUserEvent value, $Res Function(DepartmentUserEvent) then) =
      _$DepartmentUserEventCopyWithImpl<$Res, DepartmentUserEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$DepartmentUserEventCopyWithImpl<$Res, $Val extends DepartmentUserEvent>
    implements $DepartmentUserEventCopyWith<$Res> {
  _$DepartmentUserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$addDepartmentUserImplCopyWith<$Res>
    implements $DepartmentUserEventCopyWith<$Res> {
  factory _$$addDepartmentUserImplCopyWith(_$addDepartmentUserImpl value,
          $Res Function(_$addDepartmentUserImpl) then) =
      __$$addDepartmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DepartmentUser user, BuildContext context});

  $DepartmentUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$addDepartmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserEventCopyWithImpl<$Res, _$addDepartmentUserImpl>
    implements _$$addDepartmentUserImplCopyWith<$Res> {
  __$$addDepartmentUserImplCopyWithImpl(_$addDepartmentUserImpl _value,
      $Res Function(_$addDepartmentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? context = null,
  }) {
    return _then(_$addDepartmentUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DepartmentUser,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentUserCopyWith<$Res> get user {
    return $DepartmentUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$addDepartmentUserImpl implements _addDepartmentUser {
  const _$addDepartmentUserImpl(this.user, this.context);

  @override
  final DepartmentUser user;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentUserEvent.addDepartmentUser(user: $user, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addDepartmentUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, context);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addDepartmentUserImplCopyWith<_$addDepartmentUserImpl> get copyWith =>
      __$$addDepartmentUserImplCopyWithImpl<_$addDepartmentUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentUser user, BuildContext context)
        addDepartmentUser,
    required TResult Function(BuildContext context) getDepartmentUser,
    required TResult Function(int userId, BuildContext context)
        deleteDepartmentUser,
    required TResult Function(DepartmentUser user, BuildContext context)
        updateDepartmentUser,
  }) {
    return addDepartmentUser(user, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult? Function(BuildContext context)? getDepartmentUser,
    TResult? Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult? Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
  }) {
    return addDepartmentUser?.call(user, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult Function(BuildContext context)? getDepartmentUser,
    TResult Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (addDepartmentUser != null) {
      return addDepartmentUser(user, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDepartmentUser value) addDepartmentUser,
    required TResult Function(_getDepartmentUser value) getDepartmentUser,
    required TResult Function(_deleteDepartmentUser value) deleteDepartmentUser,
    required TResult Function(_updateDepartmentUser value) updateDepartmentUser,
  }) {
    return addDepartmentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDepartmentUser value)? addDepartmentUser,
    TResult? Function(_getDepartmentUser value)? getDepartmentUser,
    TResult? Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult? Function(_updateDepartmentUser value)? updateDepartmentUser,
  }) {
    return addDepartmentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDepartmentUser value)? addDepartmentUser,
    TResult Function(_getDepartmentUser value)? getDepartmentUser,
    TResult Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult Function(_updateDepartmentUser value)? updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (addDepartmentUser != null) {
      return addDepartmentUser(this);
    }
    return orElse();
  }
}

abstract class _addDepartmentUser implements DepartmentUserEvent {
  const factory _addDepartmentUser(
          final DepartmentUser user, final BuildContext context) =
      _$addDepartmentUserImpl;

  DepartmentUser get user;
  @override
  BuildContext get context;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addDepartmentUserImplCopyWith<_$addDepartmentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getDepartmentUserImplCopyWith<$Res>
    implements $DepartmentUserEventCopyWith<$Res> {
  factory _$$getDepartmentUserImplCopyWith(_$getDepartmentUserImpl value,
          $Res Function(_$getDepartmentUserImpl) then) =
      __$$getDepartmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getDepartmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserEventCopyWithImpl<$Res, _$getDepartmentUserImpl>
    implements _$$getDepartmentUserImplCopyWith<$Res> {
  __$$getDepartmentUserImplCopyWithImpl(_$getDepartmentUserImpl _value,
      $Res Function(_$getDepartmentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getDepartmentUserImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getDepartmentUserImpl implements _getDepartmentUser {
  const _$getDepartmentUserImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentUserEvent.getDepartmentUser(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getDepartmentUserImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getDepartmentUserImplCopyWith<_$getDepartmentUserImpl> get copyWith =>
      __$$getDepartmentUserImplCopyWithImpl<_$getDepartmentUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentUser user, BuildContext context)
        addDepartmentUser,
    required TResult Function(BuildContext context) getDepartmentUser,
    required TResult Function(int userId, BuildContext context)
        deleteDepartmentUser,
    required TResult Function(DepartmentUser user, BuildContext context)
        updateDepartmentUser,
  }) {
    return getDepartmentUser(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult? Function(BuildContext context)? getDepartmentUser,
    TResult? Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult? Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
  }) {
    return getDepartmentUser?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult Function(BuildContext context)? getDepartmentUser,
    TResult Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (getDepartmentUser != null) {
      return getDepartmentUser(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDepartmentUser value) addDepartmentUser,
    required TResult Function(_getDepartmentUser value) getDepartmentUser,
    required TResult Function(_deleteDepartmentUser value) deleteDepartmentUser,
    required TResult Function(_updateDepartmentUser value) updateDepartmentUser,
  }) {
    return getDepartmentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDepartmentUser value)? addDepartmentUser,
    TResult? Function(_getDepartmentUser value)? getDepartmentUser,
    TResult? Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult? Function(_updateDepartmentUser value)? updateDepartmentUser,
  }) {
    return getDepartmentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDepartmentUser value)? addDepartmentUser,
    TResult Function(_getDepartmentUser value)? getDepartmentUser,
    TResult Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult Function(_updateDepartmentUser value)? updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (getDepartmentUser != null) {
      return getDepartmentUser(this);
    }
    return orElse();
  }
}

abstract class _getDepartmentUser implements DepartmentUserEvent {
  const factory _getDepartmentUser(final BuildContext context) =
      _$getDepartmentUserImpl;

  @override
  BuildContext get context;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getDepartmentUserImplCopyWith<_$getDepartmentUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteDepartmentUserImplCopyWith<$Res>
    implements $DepartmentUserEventCopyWith<$Res> {
  factory _$$deleteDepartmentUserImplCopyWith(_$deleteDepartmentUserImpl value,
          $Res Function(_$deleteDepartmentUserImpl) then) =
      __$$deleteDepartmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, BuildContext context});
}

/// @nodoc
class __$$deleteDepartmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserEventCopyWithImpl<$Res, _$deleteDepartmentUserImpl>
    implements _$$deleteDepartmentUserImplCopyWith<$Res> {
  __$$deleteDepartmentUserImplCopyWithImpl(_$deleteDepartmentUserImpl _value,
      $Res Function(_$deleteDepartmentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? context = null,
  }) {
    return _then(_$deleteDepartmentUserImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$deleteDepartmentUserImpl implements _deleteDepartmentUser {
  const _$deleteDepartmentUserImpl(this.userId, this.context);

  @override
  final int userId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentUserEvent.deleteDepartmentUser(userId: $userId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteDepartmentUserImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, context);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteDepartmentUserImplCopyWith<_$deleteDepartmentUserImpl>
      get copyWith =>
          __$$deleteDepartmentUserImplCopyWithImpl<_$deleteDepartmentUserImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentUser user, BuildContext context)
        addDepartmentUser,
    required TResult Function(BuildContext context) getDepartmentUser,
    required TResult Function(int userId, BuildContext context)
        deleteDepartmentUser,
    required TResult Function(DepartmentUser user, BuildContext context)
        updateDepartmentUser,
  }) {
    return deleteDepartmentUser(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult? Function(BuildContext context)? getDepartmentUser,
    TResult? Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult? Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
  }) {
    return deleteDepartmentUser?.call(userId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult Function(BuildContext context)? getDepartmentUser,
    TResult Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (deleteDepartmentUser != null) {
      return deleteDepartmentUser(userId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDepartmentUser value) addDepartmentUser,
    required TResult Function(_getDepartmentUser value) getDepartmentUser,
    required TResult Function(_deleteDepartmentUser value) deleteDepartmentUser,
    required TResult Function(_updateDepartmentUser value) updateDepartmentUser,
  }) {
    return deleteDepartmentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDepartmentUser value)? addDepartmentUser,
    TResult? Function(_getDepartmentUser value)? getDepartmentUser,
    TResult? Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult? Function(_updateDepartmentUser value)? updateDepartmentUser,
  }) {
    return deleteDepartmentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDepartmentUser value)? addDepartmentUser,
    TResult Function(_getDepartmentUser value)? getDepartmentUser,
    TResult Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult Function(_updateDepartmentUser value)? updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (deleteDepartmentUser != null) {
      return deleteDepartmentUser(this);
    }
    return orElse();
  }
}

abstract class _deleteDepartmentUser implements DepartmentUserEvent {
  const factory _deleteDepartmentUser(
          final int userId, final BuildContext context) =
      _$deleteDepartmentUserImpl;

  int get userId;
  @override
  BuildContext get context;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$deleteDepartmentUserImplCopyWith<_$deleteDepartmentUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateDepartmentUserImplCopyWith<$Res>
    implements $DepartmentUserEventCopyWith<$Res> {
  factory _$$updateDepartmentUserImplCopyWith(_$updateDepartmentUserImpl value,
          $Res Function(_$updateDepartmentUserImpl) then) =
      __$$updateDepartmentUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DepartmentUser user, BuildContext context});

  $DepartmentUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$updateDepartmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserEventCopyWithImpl<$Res, _$updateDepartmentUserImpl>
    implements _$$updateDepartmentUserImplCopyWith<$Res> {
  __$$updateDepartmentUserImplCopyWithImpl(_$updateDepartmentUserImpl _value,
      $Res Function(_$updateDepartmentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? context = null,
  }) {
    return _then(_$updateDepartmentUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as DepartmentUser,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DepartmentUserCopyWith<$Res> get user {
    return $DepartmentUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$updateDepartmentUserImpl implements _updateDepartmentUser {
  const _$updateDepartmentUserImpl(this.user, this.context);

  @override
  final DepartmentUser user;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'DepartmentUserEvent.updateDepartmentUser(user: $user, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateDepartmentUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, context);

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateDepartmentUserImplCopyWith<_$updateDepartmentUserImpl>
      get copyWith =>
          __$$updateDepartmentUserImplCopyWithImpl<_$updateDepartmentUserImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DepartmentUser user, BuildContext context)
        addDepartmentUser,
    required TResult Function(BuildContext context) getDepartmentUser,
    required TResult Function(int userId, BuildContext context)
        deleteDepartmentUser,
    required TResult Function(DepartmentUser user, BuildContext context)
        updateDepartmentUser,
  }) {
    return updateDepartmentUser(user, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult? Function(BuildContext context)? getDepartmentUser,
    TResult? Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult? Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
  }) {
    return updateDepartmentUser?.call(user, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DepartmentUser user, BuildContext context)?
        addDepartmentUser,
    TResult Function(BuildContext context)? getDepartmentUser,
    TResult Function(int userId, BuildContext context)? deleteDepartmentUser,
    TResult Function(DepartmentUser user, BuildContext context)?
        updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (updateDepartmentUser != null) {
      return updateDepartmentUser(user, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addDepartmentUser value) addDepartmentUser,
    required TResult Function(_getDepartmentUser value) getDepartmentUser,
    required TResult Function(_deleteDepartmentUser value) deleteDepartmentUser,
    required TResult Function(_updateDepartmentUser value) updateDepartmentUser,
  }) {
    return updateDepartmentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addDepartmentUser value)? addDepartmentUser,
    TResult? Function(_getDepartmentUser value)? getDepartmentUser,
    TResult? Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult? Function(_updateDepartmentUser value)? updateDepartmentUser,
  }) {
    return updateDepartmentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addDepartmentUser value)? addDepartmentUser,
    TResult Function(_getDepartmentUser value)? getDepartmentUser,
    TResult Function(_deleteDepartmentUser value)? deleteDepartmentUser,
    TResult Function(_updateDepartmentUser value)? updateDepartmentUser,
    required TResult orElse(),
  }) {
    if (updateDepartmentUser != null) {
      return updateDepartmentUser(this);
    }
    return orElse();
  }
}

abstract class _updateDepartmentUser implements DepartmentUserEvent {
  const factory _updateDepartmentUser(
          final DepartmentUser user, final BuildContext context) =
      _$updateDepartmentUserImpl;

  DepartmentUser get user;
  @override
  BuildContext get context;

  /// Create a copy of DepartmentUserEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateDepartmentUserImplCopyWith<_$updateDepartmentUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DepartmentUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<DepartmentUser> users) departmentUser,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<DepartmentUser> users)? departmentUser,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<DepartmentUser> users)? departmentUser,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentUser value) departmentUser,
    required TResult Function(_failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentUser value)? departmentUser,
    TResult? Function(_failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentUserStateCopyWith<$Res> {
  factory $DepartmentUserStateCopyWith(
          DepartmentUserState value, $Res Function(DepartmentUserState) then) =
      _$DepartmentUserStateCopyWithImpl<$Res, DepartmentUserState>;
}

/// @nodoc
class _$DepartmentUserStateCopyWithImpl<$Res, $Val extends DepartmentUserState>
    implements $DepartmentUserStateCopyWith<$Res> {
  _$DepartmentUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DepartmentUserState
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
    extends _$DepartmentUserStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DepartmentUserState.initial()';
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
    required TResult Function(List<DepartmentUser> users) departmentUser,
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
    TResult? Function(List<DepartmentUser> users)? departmentUser,
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
    TResult Function(List<DepartmentUser> users)? departmentUser,
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
    required TResult Function(_departmentUser value) departmentUser,
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
    TResult? Function(_departmentUser value)? departmentUser,
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
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DepartmentUserState {
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
    extends _$DepartmentUserStateCopyWithImpl<$Res, _$loadingInProgressImpl>
    implements _$$loadingInProgressImplCopyWith<$Res> {
  __$$loadingInProgressImplCopyWithImpl(_$loadingInProgressImpl _value,
      $Res Function(_$loadingInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingInProgressImpl implements _loadingInProgress {
  const _$loadingInProgressImpl();

  @override
  String toString() {
    return 'DepartmentUserState.loadingInProgress()';
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
    required TResult Function(List<DepartmentUser> users) departmentUser,
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
    TResult? Function(List<DepartmentUser> users)? departmentUser,
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
    TResult Function(List<DepartmentUser> users)? departmentUser,
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
    required TResult Function(_departmentUser value) departmentUser,
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
    TResult? Function(_departmentUser value)? departmentUser,
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
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements DepartmentUserState {
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
    extends _$DepartmentUserStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserState
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
    return 'DepartmentUserState.success(message: $message)';
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

  /// Create a copy of DepartmentUserState
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
    required TResult Function(List<DepartmentUser> users) departmentUser,
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
    TResult? Function(List<DepartmentUser> users)? departmentUser,
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
    TResult Function(List<DepartmentUser> users)? departmentUser,
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
    required TResult Function(_departmentUser value) departmentUser,
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
    TResult? Function(_departmentUser value)? departmentUser,
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
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements DepartmentUserState {
  const factory _success(final String message) = _$successImpl;

  String get message;

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$departmentUserImplCopyWith<$Res> {
  factory _$$departmentUserImplCopyWith(_$departmentUserImpl value,
          $Res Function(_$departmentUserImpl) then) =
      __$$departmentUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DepartmentUser> users});
}

/// @nodoc
class __$$departmentUserImplCopyWithImpl<$Res>
    extends _$DepartmentUserStateCopyWithImpl<$Res, _$departmentUserImpl>
    implements _$$departmentUserImplCopyWith<$Res> {
  __$$departmentUserImplCopyWithImpl(
      _$departmentUserImpl _value, $Res Function(_$departmentUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$departmentUserImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<DepartmentUser>,
    ));
  }
}

/// @nodoc

class _$departmentUserImpl implements _departmentUser {
  const _$departmentUserImpl(final List<DepartmentUser> users) : _users = users;

  final List<DepartmentUser> _users;
  @override
  List<DepartmentUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'DepartmentUserState.departmentUser(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$departmentUserImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$departmentUserImplCopyWith<_$departmentUserImpl> get copyWith =>
      __$$departmentUserImplCopyWithImpl<_$departmentUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(List<DepartmentUser> users) departmentUser,
    required TResult Function(String error) failed,
  }) {
    return departmentUser(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(List<DepartmentUser> users)? departmentUser,
    TResult? Function(String error)? failed,
  }) {
    return departmentUser?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(List<DepartmentUser> users)? departmentUser,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (departmentUser != null) {
      return departmentUser(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_departmentUser value) departmentUser,
    required TResult Function(_failed value) failed,
  }) {
    return departmentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_departmentUser value)? departmentUser,
    TResult? Function(_failed value)? failed,
  }) {
    return departmentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (departmentUser != null) {
      return departmentUser(this);
    }
    return orElse();
  }
}

abstract class _departmentUser implements DepartmentUserState {
  const factory _departmentUser(final List<DepartmentUser> users) =
      _$departmentUserImpl;

  List<DepartmentUser> get users;

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$departmentUserImplCopyWith<_$departmentUserImpl> get copyWith =>
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
    extends _$DepartmentUserStateCopyWithImpl<$Res, _$failedImpl>
    implements _$$failedImplCopyWith<$Res> {
  __$$failedImplCopyWithImpl(
      _$failedImpl _value, $Res Function(_$failedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DepartmentUserState
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
    return 'DepartmentUserState.failed(error: $error)';
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

  /// Create a copy of DepartmentUserState
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
    required TResult Function(List<DepartmentUser> users) departmentUser,
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
    TResult? Function(List<DepartmentUser> users)? departmentUser,
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
    TResult Function(List<DepartmentUser> users)? departmentUser,
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
    required TResult Function(_departmentUser value) departmentUser,
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
    TResult? Function(_departmentUser value)? departmentUser,
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
    TResult Function(_departmentUser value)? departmentUser,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements DepartmentUserState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;

  /// Create a copy of DepartmentUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
