// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getUserData,
    required TResult Function(User user, BuildContext context) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getUserData,
    TResult? Function(User user, BuildContext context)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getUserData,
    TResult Function(User user, BuildContext context)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserData value) getUserData,
    required TResult Function(_updateUserData value) updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserData value)? getUserData,
    TResult? Function(_updateUserData value)? updateUserData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserData value)? getUserData,
    TResult Function(_updateUserData value)? updateUserData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEventCopyWith<ProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$getUserDataImplCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$getUserDataImplCopyWith(
          _$getUserDataImpl value, $Res Function(_$getUserDataImpl) then) =
      __$$getUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getUserDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$getUserDataImpl>
    implements _$$getUserDataImplCopyWith<$Res> {
  __$$getUserDataImplCopyWithImpl(
      _$getUserDataImpl _value, $Res Function(_$getUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getUserDataImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getUserDataImpl implements _getUserData {
  const _$getUserDataImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProfileEvent.getUserData(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getUserDataImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getUserDataImplCopyWith<_$getUserDataImpl> get copyWith =>
      __$$getUserDataImplCopyWithImpl<_$getUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getUserData,
    required TResult Function(User user, BuildContext context) updateUserData,
  }) {
    return getUserData(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getUserData,
    TResult? Function(User user, BuildContext context)? updateUserData,
  }) {
    return getUserData?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getUserData,
    TResult Function(User user, BuildContext context)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserData value) getUserData,
    required TResult Function(_updateUserData value) updateUserData,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserData value)? getUserData,
    TResult? Function(_updateUserData value)? updateUserData,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserData value)? getUserData,
    TResult Function(_updateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class _getUserData implements ProfileEvent {
  const factory _getUserData(final BuildContext context) = _$getUserDataImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getUserDataImplCopyWith<_$getUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateUserDataImplCopyWith<$Res>
    implements $ProfileEventCopyWith<$Res> {
  factory _$$updateUserDataImplCopyWith(_$updateUserDataImpl value,
          $Res Function(_$updateUserDataImpl) then) =
      __$$updateUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, BuildContext context});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$updateUserDataImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$updateUserDataImpl>
    implements _$$updateUserDataImplCopyWith<$Res> {
  __$$updateUserDataImplCopyWithImpl(
      _$updateUserDataImpl _value, $Res Function(_$updateUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? context = null,
  }) {
    return _then(_$updateUserDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$updateUserDataImpl implements _updateUserData {
  const _$updateUserDataImpl(this.user, this.context);

  @override
  final User user;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ProfileEvent.updateUserData(user: $user, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateUserDataImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateUserDataImplCopyWith<_$updateUserDataImpl> get copyWith =>
      __$$updateUserDataImplCopyWithImpl<_$updateUserDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getUserData,
    required TResult Function(User user, BuildContext context) updateUserData,
  }) {
    return updateUserData(user, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getUserData,
    TResult? Function(User user, BuildContext context)? updateUserData,
  }) {
    return updateUserData?.call(user, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getUserData,
    TResult Function(User user, BuildContext context)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(user, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getUserData value) getUserData,
    required TResult Function(_updateUserData value) updateUserData,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getUserData value)? getUserData,
    TResult? Function(_updateUserData value)? updateUserData,
  }) {
    return updateUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getUserData value)? getUserData,
    TResult Function(_updateUserData value)? updateUserData,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class _updateUserData implements ProfileEvent {
  const factory _updateUserData(final User user, final BuildContext context) =
      _$updateUserDataImpl;

  User get user;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$updateUserDataImplCopyWith<_$updateUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
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
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
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
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
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
    extends _$ProfileStateCopyWithImpl<$Res, _$loadingInProgressImpl>
    implements _$$loadingInProgressImplCopyWith<$Res> {
  __$$loadingInProgressImplCopyWithImpl(_$loadingInProgressImpl _value,
      $Res Function(_$loadingInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingInProgressImpl implements _loadingInProgress {
  const _$loadingInProgressImpl();

  @override
  String toString() {
    return 'ProfileState.loadingInProgress()';
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
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
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
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements ProfileState {
  const factory _loadingInProgress() = _$loadingInProgressImpl;
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
    extends _$ProfileStateCopyWithImpl<$Res, _$failedImpl>
    implements _$$failedImplCopyWith<$Res> {
  __$$failedImplCopyWithImpl(
      _$failedImpl _value, $Res Function(_$failedImpl) _then)
      : super(_value, _then);

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
    return 'ProfileState.failed(error: $error)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      __$$failedImplCopyWithImpl<_$failedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
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
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements ProfileState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ProfileStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

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
    return 'ProfileState.success(message: $message)';
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
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
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements ProfileState {
  const factory _success(final String message) = _$successImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userDataImplCopyWith<$Res> {
  factory _$$userDataImplCopyWith(
          _$userDataImpl value, $Res Function(_$userDataImpl) then) =
      __$$userDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$userDataImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$userDataImpl>
    implements _$$userDataImplCopyWith<$Res> {
  __$$userDataImplCopyWithImpl(
      _$userDataImpl _value, $Res Function(_$userDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$userDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$userDataImpl implements _userData {
  const _$userDataImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'ProfileState.userData(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userDataImplCopyWith<_$userDataImpl> get copyWith =>
      __$$userDataImplCopyWithImpl<_$userDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
    required TResult Function(User user) userData,
  }) {
    return userData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
    TResult? Function(User user)? userData,
  }) {
    return userData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    TResult Function(User user)? userData,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
    required TResult Function(_userData value) userData,
  }) {
    return userData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
    TResult? Function(_userData value)? userData,
  }) {
    return userData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    TResult Function(_userData value)? userData,
    required TResult orElse(),
  }) {
    if (userData != null) {
      return userData(this);
    }
    return orElse();
  }
}

abstract class _userData implements ProfileState {
  const factory _userData(final User user) = _$userDataImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$userDataImplCopyWith<_$userDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
