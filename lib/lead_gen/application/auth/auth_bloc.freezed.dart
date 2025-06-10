// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
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
abstract class _$$tryLoginImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$tryLoginImplCopyWith(
          _$tryLoginImpl value, $Res Function(_$tryLoginImpl) then) =
      __$$tryLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$tryLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$tryLoginImpl>
    implements _$$tryLoginImplCopyWith<$Res> {
  __$$tryLoginImplCopyWithImpl(
      _$tryLoginImpl _value, $Res Function(_$tryLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$tryLoginImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$tryLoginImpl implements _tryLogin {
  const _$tryLoginImpl(this.email, this.password, this.context);

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.tryLogin(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$tryLoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$tryLoginImplCopyWith<_$tryLoginImpl> get copyWith =>
      __$$tryLoginImplCopyWithImpl<_$tryLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return tryLogin(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return tryLogin?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (tryLogin != null) {
      return tryLogin(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return tryLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return tryLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (tryLogin != null) {
      return tryLogin(this);
    }
    return orElse();
  }
}

abstract class _tryLogin implements AuthEvent {
  const factory _tryLogin(final String email, final String password,
      final BuildContext context) = _$tryLoginImpl;

  String get email;
  String get password;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$tryLoginImplCopyWith<_$tryLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$registerUserImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$registerUserImplCopyWith(
          _$registerUserImpl value, $Res Function(_$registerUserImpl) then) =
      __$$registerUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, BuildContext context});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$registerUserImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$registerUserImpl>
    implements _$$registerUserImplCopyWith<$Res> {
  __$$registerUserImplCopyWithImpl(
      _$registerUserImpl _value, $Res Function(_$registerUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? context = null,
  }) {
    return _then(_$registerUserImpl(
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$registerUserImpl implements _registerUser {
  const _$registerUserImpl(this.user, this.context);

  @override
  final User user;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.registerUser(user: $user, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$registerUserImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      __$$registerUserImplCopyWithImpl<_$registerUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return registerUser(user, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return registerUser?.call(user, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(user, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class _registerUser implements AuthEvent {
  const factory _registerUser(final User user, final BuildContext context) =
      _$registerUserImpl;

  User get user;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$registerUserImplCopyWith<_$registerUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$logOutImplCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$$logOutImplCopyWith(
          _$logOutImpl value, $Res Function(_$logOutImpl) then) =
      __$$logOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$logOutImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$logOutImpl>
    implements _$$logOutImplCopyWith<$Res> {
  __$$logOutImplCopyWithImpl(
      _$logOutImpl _value, $Res Function(_$logOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$logOutImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$logOutImpl implements _logOut {
  const _$logOutImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.logOut(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logOutImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$logOutImplCopyWith<_$logOutImpl> get copyWith =>
      __$$logOutImplCopyWithImpl<_$logOutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return logOut(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return logOut?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _logOut implements AuthEvent {
  const factory _logOut(final BuildContext context) = _$logOutImpl;

  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$logOutImplCopyWith<_$logOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$verifyEmailImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$verifyEmailImplCopyWith(
          _$verifyEmailImpl value, $Res Function(_$verifyEmailImpl) then) =
      __$$verifyEmailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, BuildContext context});
}

/// @nodoc
class __$$verifyEmailImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$verifyEmailImpl>
    implements _$$verifyEmailImplCopyWith<$Res> {
  __$$verifyEmailImplCopyWithImpl(
      _$verifyEmailImpl _value, $Res Function(_$verifyEmailImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? context = null,
  }) {
    return _then(_$verifyEmailImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$verifyEmailImpl implements _verifyEmail {
  const _$verifyEmailImpl(this.email, this.context);

  @override
  final String email;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.verifyEmail(email: $email, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$verifyEmailImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$verifyEmailImplCopyWith<_$verifyEmailImpl> get copyWith =>
      __$$verifyEmailImplCopyWithImpl<_$verifyEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return verifyEmail(email, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return verifyEmail?.call(email, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(email, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return verifyEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return verifyEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (verifyEmail != null) {
      return verifyEmail(this);
    }
    return orElse();
  }
}

abstract class _verifyEmail implements AuthEvent {
  const factory _verifyEmail(final String email, final BuildContext context) =
      _$verifyEmailImpl;

  String get email;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$verifyEmailImplCopyWith<_$verifyEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$verifyOtpImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$verifyOtpImplCopyWith(
          _$verifyOtpImpl value, $Res Function(_$verifyOtpImpl) then) =
      __$$verifyOtpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String otp, BuildContext context});
}

/// @nodoc
class __$$verifyOtpImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$verifyOtpImpl>
    implements _$$verifyOtpImplCopyWith<$Res> {
  __$$verifyOtpImplCopyWithImpl(
      _$verifyOtpImpl _value, $Res Function(_$verifyOtpImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? context = null,
  }) {
    return _then(_$verifyOtpImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$verifyOtpImpl implements _verifyOtp {
  const _$verifyOtpImpl(this.otp, this.context);

  @override
  final String otp;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$verifyOtpImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$verifyOtpImplCopyWith<_$verifyOtpImpl> get copyWith =>
      __$$verifyOtpImplCopyWithImpl<_$verifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return verifyOtp(otp, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return verifyOtp?.call(otp, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _verifyOtp implements AuthEvent {
  const factory _verifyOtp(final String otp, final BuildContext context) =
      _$verifyOtpImpl;

  String get otp;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$verifyOtpImplCopyWith<_$verifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$resetPasswordImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$resetPasswordImplCopyWith(
          _$resetPasswordImpl value, $Res Function(_$resetPasswordImpl) then) =
      __$$resetPasswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String password, BuildContext context});
}

/// @nodoc
class __$$resetPasswordImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$resetPasswordImpl>
    implements _$$resetPasswordImplCopyWith<$Res> {
  __$$resetPasswordImplCopyWithImpl(
      _$resetPasswordImpl _value, $Res Function(_$resetPasswordImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$resetPasswordImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$resetPasswordImpl implements _resetPassword {
  const _$resetPasswordImpl(this.password, this.context);

  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(password: $password, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$resetPasswordImpl &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$resetPasswordImplCopyWith<_$resetPasswordImpl> get copyWith =>
      __$$resetPasswordImplCopyWithImpl<_$resetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return resetPassword(password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return resetPassword?.call(password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _resetPassword implements AuthEvent {
  const factory _resetPassword(
      final String password, final BuildContext context) = _$resetPasswordImpl;

  String get password;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$resetPasswordImplCopyWith<_$resetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteAccountImplCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$deleteAccountImplCopyWith(
          _$deleteAccountImpl value, $Res Function(_$deleteAccountImpl) then) =
      __$$deleteAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, BuildContext context});
}

/// @nodoc
class __$$deleteAccountImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$deleteAccountImpl>
    implements _$$deleteAccountImplCopyWith<$Res> {
  __$$deleteAccountImplCopyWithImpl(
      _$deleteAccountImpl _value, $Res Function(_$deleteAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? context = null,
  }) {
    return _then(_$deleteAccountImpl(
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

class _$deleteAccountImpl implements _deleteAccount {
  const _$deleteAccountImpl(this.id, this.context);

  @override
  final int id;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'AuthEvent.deleteAccount(id: $id, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, context);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteAccountImplCopyWith<_$deleteAccountImpl> get copyWith =>
      __$$deleteAccountImplCopyWithImpl<_$deleteAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        tryLogin,
    required TResult Function(User user, BuildContext context) registerUser,
    required TResult Function(BuildContext context) logOut,
    required TResult Function(String email, BuildContext context) verifyEmail,
    required TResult Function(String otp, BuildContext context) verifyOtp,
    required TResult Function(String password, BuildContext context)
        resetPassword,
    required TResult Function(int id, BuildContext context) deleteAccount,
  }) {
    return deleteAccount(id, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult? Function(User user, BuildContext context)? registerUser,
    TResult? Function(BuildContext context)? logOut,
    TResult? Function(String email, BuildContext context)? verifyEmail,
    TResult? Function(String otp, BuildContext context)? verifyOtp,
    TResult? Function(String password, BuildContext context)? resetPassword,
    TResult? Function(int id, BuildContext context)? deleteAccount,
  }) {
    return deleteAccount?.call(id, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        tryLogin,
    TResult Function(User user, BuildContext context)? registerUser,
    TResult Function(BuildContext context)? logOut,
    TResult Function(String email, BuildContext context)? verifyEmail,
    TResult Function(String otp, BuildContext context)? verifyOtp,
    TResult Function(String password, BuildContext context)? resetPassword,
    TResult Function(int id, BuildContext context)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(id, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_tryLogin value) tryLogin,
    required TResult Function(_registerUser value) registerUser,
    required TResult Function(_logOut value) logOut,
    required TResult Function(_verifyEmail value) verifyEmail,
    required TResult Function(_verifyOtp value) verifyOtp,
    required TResult Function(_resetPassword value) resetPassword,
    required TResult Function(_deleteAccount value) deleteAccount,
  }) {
    return deleteAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_tryLogin value)? tryLogin,
    TResult? Function(_registerUser value)? registerUser,
    TResult? Function(_logOut value)? logOut,
    TResult? Function(_verifyEmail value)? verifyEmail,
    TResult? Function(_verifyOtp value)? verifyOtp,
    TResult? Function(_resetPassword value)? resetPassword,
    TResult? Function(_deleteAccount value)? deleteAccount,
  }) {
    return deleteAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_tryLogin value)? tryLogin,
    TResult Function(_registerUser value)? registerUser,
    TResult Function(_logOut value)? logOut,
    TResult Function(_verifyEmail value)? verifyEmail,
    TResult Function(_verifyOtp value)? verifyOtp,
    TResult Function(_resetPassword value)? resetPassword,
    TResult Function(_deleteAccount value)? deleteAccount,
    required TResult orElse(),
  }) {
    if (deleteAccount != null) {
      return deleteAccount(this);
    }
    return orElse();
  }
}

abstract class _deleteAccount implements AuthEvent {
  const factory _deleteAccount(final int id, final BuildContext context) =
      _$deleteAccountImpl;

  int get id;
  @override
  BuildContext get context;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$deleteAccountImplCopyWith<_$deleteAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String? message) success,
    required TResult Function(String? error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String? error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String? message)? success,
    TResult Function(String? error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
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
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
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
    required TResult Function(String? message) success,
    required TResult Function(String? error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String? error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String? message)? success,
    TResult Function(String? error)? failed,
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
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
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
    extends _$AuthStateCopyWithImpl<$Res, _$loadingInProgressImpl>
    implements _$$loadingInProgressImplCopyWith<$Res> {
  __$$loadingInProgressImplCopyWithImpl(_$loadingInProgressImpl _value,
      $Res Function(_$loadingInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingInProgressImpl implements _loadingInProgress {
  const _$loadingInProgressImpl();

  @override
  String toString() {
    return 'AuthState.loadingInProgress()';
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
    required TResult Function(String? message) success,
    required TResult Function(String? error) failed,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String? error)? failed,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String? message)? success,
    TResult Function(String? error)? failed,
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
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements AuthState {
  const factory _loadingInProgress() = _$loadingInProgressImpl;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$successImpl(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.success(message: $message)';
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

  /// Create a copy of AuthState
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
    required TResult Function(String? message) success,
    required TResult Function(String? error) failed,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String? error)? failed,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String? message)? success,
    TResult Function(String? error)? failed,
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
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements AuthState {
  const factory _success(final String? message) = _$successImpl;

  String? get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failedImplCopyWith<$Res> {
  factory _$$failedImplCopyWith(
          _$failedImpl value, $Res Function(_$failedImpl) then) =
      __$$failedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$failedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$failedImpl>
    implements _$$failedImplCopyWith<$Res> {
  __$$failedImplCopyWithImpl(
      _$failedImpl _value, $Res Function(_$failedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$failedImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$failedImpl implements _failed {
  const _$failedImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.failed(error: $error)';
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

  /// Create a copy of AuthState
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
    required TResult Function(String? message) success,
    required TResult Function(String? error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String? message)? success,
    TResult? Function(String? error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String? message)? success,
    TResult Function(String? error)? failed,
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
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements AuthState {
  const factory _failed(final String? error) = _$failedImpl;

  String? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
