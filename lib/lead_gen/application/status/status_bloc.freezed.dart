// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatusEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getStatuses value) getStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getStatuses value)? getStatuses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getStatuses value)? getStatuses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatusEventCopyWith<StatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusEventCopyWith<$Res> {
  factory $StatusEventCopyWith(
          StatusEvent value, $Res Function(StatusEvent) then) =
      _$StatusEventCopyWithImpl<$Res, StatusEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$StatusEventCopyWithImpl<$Res, $Val extends StatusEvent>
    implements $StatusEventCopyWith<$Res> {
  _$StatusEventCopyWithImpl(this._value, this._then);

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
abstract class _$$getStatusesImplCopyWith<$Res>
    implements $StatusEventCopyWith<$Res> {
  factory _$$getStatusesImplCopyWith(
          _$getStatusesImpl value, $Res Function(_$getStatusesImpl) then) =
      __$$getStatusesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getStatusesImplCopyWithImpl<$Res>
    extends _$StatusEventCopyWithImpl<$Res, _$getStatusesImpl>
    implements _$$getStatusesImplCopyWith<$Res> {
  __$$getStatusesImplCopyWithImpl(
      _$getStatusesImpl _value, $Res Function(_$getStatusesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getStatusesImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getStatusesImpl implements _getStatuses {
  const _$getStatusesImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'StatusEvent.getStatuses(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getStatusesImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getStatusesImplCopyWith<_$getStatusesImpl> get copyWith =>
      __$$getStatusesImplCopyWithImpl<_$getStatusesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getStatuses,
  }) {
    return getStatuses(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getStatuses,
  }) {
    return getStatuses?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getStatuses,
    required TResult orElse(),
  }) {
    if (getStatuses != null) {
      return getStatuses(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getStatuses value) getStatuses,
  }) {
    return getStatuses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getStatuses value)? getStatuses,
  }) {
    return getStatuses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getStatuses value)? getStatuses,
    required TResult orElse(),
  }) {
    if (getStatuses != null) {
      return getStatuses(this);
    }
    return orElse();
  }
}

abstract class _getStatuses implements StatusEvent {
  const factory _getStatuses(final BuildContext context) = _$getStatusesImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getStatusesImplCopyWith<_$getStatusesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(List<Status> statusesList) successStatusesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(List<Status> statusesList)? successStatusesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(List<Status> statusesList)? successStatusesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_failed value) failed,
    required TResult Function(_successStatusesList value) successStatusesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_successStatusesList value)? successStatusesList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_successStatusesList value)? successStatusesList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusStateCopyWith<$Res> {
  factory $StatusStateCopyWith(
          StatusState value, $Res Function(StatusState) then) =
      _$StatusStateCopyWithImpl<$Res, StatusState>;
}

/// @nodoc
class _$StatusStateCopyWithImpl<$Res, $Val extends StatusState>
    implements $StatusStateCopyWith<$Res> {
  _$StatusStateCopyWithImpl(this._value, this._then);

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
    extends _$StatusStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'StatusState.initial()';
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
    required TResult Function(List<Status> statusesList) successStatusesList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(List<Status> statusesList)? successStatusesList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(List<Status> statusesList)? successStatusesList,
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
    required TResult Function(_successStatusesList value) successStatusesList,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_successStatusesList value)? successStatusesList,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_successStatusesList value)? successStatusesList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StatusState {
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
    extends _$StatusStateCopyWithImpl<$Res, _$loadingInProgressImpl>
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
    return 'StatusState.loadingInProgress()';
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
    required TResult Function(List<Status> statusesList) successStatusesList,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(List<Status> statusesList)? successStatusesList,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(List<Status> statusesList)? successStatusesList,
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
    required TResult Function(_successStatusesList value) successStatusesList,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_successStatusesList value)? successStatusesList,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_successStatusesList value)? successStatusesList,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements StatusState {
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
    extends _$StatusStateCopyWithImpl<$Res, _$failedImpl>
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
    return 'StatusState.failed(error: $error)';
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
    required TResult Function(List<Status> statusesList) successStatusesList,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(List<Status> statusesList)? successStatusesList,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(List<Status> statusesList)? successStatusesList,
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
    required TResult Function(_successStatusesList value) successStatusesList,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_successStatusesList value)? successStatusesList,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_successStatusesList value)? successStatusesList,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements StatusState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successStatusesListImplCopyWith<$Res> {
  factory _$$successStatusesListImplCopyWith(_$successStatusesListImpl value,
          $Res Function(_$successStatusesListImpl) then) =
      __$$successStatusesListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Status> statusesList});
}

/// @nodoc
class __$$successStatusesListImplCopyWithImpl<$Res>
    extends _$StatusStateCopyWithImpl<$Res, _$successStatusesListImpl>
    implements _$$successStatusesListImplCopyWith<$Res> {
  __$$successStatusesListImplCopyWithImpl(_$successStatusesListImpl _value,
      $Res Function(_$successStatusesListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusesList = null,
  }) {
    return _then(_$successStatusesListImpl(
      null == statusesList
          ? _value._statusesList
          : statusesList // ignore: cast_nullable_to_non_nullable
              as List<Status>,
    ));
  }
}

/// @nodoc

class _$successStatusesListImpl implements _successStatusesList {
  const _$successStatusesListImpl(final List<Status> statusesList)
      : _statusesList = statusesList;

  final List<Status> _statusesList;
  @override
  List<Status> get statusesList {
    if (_statusesList is EqualUnmodifiableListView) return _statusesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_statusesList);
  }

  @override
  String toString() {
    return 'StatusState.successStatusesList(statusesList: $statusesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successStatusesListImpl &&
            const DeepCollectionEquality()
                .equals(other._statusesList, _statusesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_statusesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successStatusesListImplCopyWith<_$successStatusesListImpl> get copyWith =>
      __$$successStatusesListImplCopyWithImpl<_$successStatusesListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String error) failed,
    required TResult Function(List<Status> statusesList) successStatusesList,
  }) {
    return successStatusesList(statusesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String error)? failed,
    TResult? Function(List<Status> statusesList)? successStatusesList,
  }) {
    return successStatusesList?.call(statusesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String error)? failed,
    TResult Function(List<Status> statusesList)? successStatusesList,
    required TResult orElse(),
  }) {
    if (successStatusesList != null) {
      return successStatusesList(statusesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_failed value) failed,
    required TResult Function(_successStatusesList value) successStatusesList,
  }) {
    return successStatusesList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_failed value)? failed,
    TResult? Function(_successStatusesList value)? successStatusesList,
  }) {
    return successStatusesList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_failed value)? failed,
    TResult Function(_successStatusesList value)? successStatusesList,
    required TResult orElse(),
  }) {
    if (successStatusesList != null) {
      return successStatusesList(this);
    }
    return orElse();
  }
}

abstract class _successStatusesList implements StatusState {
  const factory _successStatusesList(final List<Status> statusesList) =
      _$successStatusesListImpl;

  List<Status> get statusesList;
  @JsonKey(ignore: true)
  _$$successStatusesListImplCopyWith<_$successStatusesListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
