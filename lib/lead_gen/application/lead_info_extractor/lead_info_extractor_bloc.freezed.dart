// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_info_extractor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadInfoExtractorEvent {
  String get query => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, BuildContext context)
        getLeadInfoFromQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, BuildContext context)? getLeadInfoFromQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, BuildContext context)? getLeadInfoFromQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeadInfoFromQuery value) getLeadInfoFromQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeadInfoFromQuery value)? getLeadInfoFromQuery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeadInfoFromQuery value)? getLeadInfoFromQuery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LeadInfoExtractorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadInfoExtractorEventCopyWith<LeadInfoExtractorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadInfoExtractorEventCopyWith<$Res> {
  factory $LeadInfoExtractorEventCopyWith(LeadInfoExtractorEvent value,
          $Res Function(LeadInfoExtractorEvent) then) =
      _$LeadInfoExtractorEventCopyWithImpl<$Res, LeadInfoExtractorEvent>;
  @useResult
  $Res call({String query, BuildContext context});
}

/// @nodoc
class _$LeadInfoExtractorEventCopyWithImpl<$Res,
        $Val extends LeadInfoExtractorEvent>
    implements $LeadInfoExtractorEventCopyWith<$Res> {
  _$LeadInfoExtractorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadInfoExtractorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetLeadInfoFromQueryImplCopyWith<$Res>
    implements $LeadInfoExtractorEventCopyWith<$Res> {
  factory _$$GetLeadInfoFromQueryImplCopyWith(_$GetLeadInfoFromQueryImpl value,
          $Res Function(_$GetLeadInfoFromQueryImpl) then) =
      __$$GetLeadInfoFromQueryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, BuildContext context});
}

/// @nodoc
class __$$GetLeadInfoFromQueryImplCopyWithImpl<$Res>
    extends _$LeadInfoExtractorEventCopyWithImpl<$Res,
        _$GetLeadInfoFromQueryImpl>
    implements _$$GetLeadInfoFromQueryImplCopyWith<$Res> {
  __$$GetLeadInfoFromQueryImplCopyWithImpl(_$GetLeadInfoFromQueryImpl _value,
      $Res Function(_$GetLeadInfoFromQueryImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadInfoExtractorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? context = null,
  }) {
    return _then(_$GetLeadInfoFromQueryImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$GetLeadInfoFromQueryImpl implements _GetLeadInfoFromQuery {
  const _$GetLeadInfoFromQueryImpl(this.query, this.context);

  @override
  final String query;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadInfoExtractorEvent.getLeadInfoFromQuery(query: $query, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLeadInfoFromQueryImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, context);

  /// Create a copy of LeadInfoExtractorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLeadInfoFromQueryImplCopyWith<_$GetLeadInfoFromQueryImpl>
      get copyWith =>
          __$$GetLeadInfoFromQueryImplCopyWithImpl<_$GetLeadInfoFromQueryImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, BuildContext context)
        getLeadInfoFromQuery,
  }) {
    return getLeadInfoFromQuery(query, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, BuildContext context)? getLeadInfoFromQuery,
  }) {
    return getLeadInfoFromQuery?.call(query, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, BuildContext context)? getLeadInfoFromQuery,
    required TResult orElse(),
  }) {
    if (getLeadInfoFromQuery != null) {
      return getLeadInfoFromQuery(query, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLeadInfoFromQuery value) getLeadInfoFromQuery,
  }) {
    return getLeadInfoFromQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLeadInfoFromQuery value)? getLeadInfoFromQuery,
  }) {
    return getLeadInfoFromQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLeadInfoFromQuery value)? getLeadInfoFromQuery,
    required TResult orElse(),
  }) {
    if (getLeadInfoFromQuery != null) {
      return getLeadInfoFromQuery(this);
    }
    return orElse();
  }
}

abstract class _GetLeadInfoFromQuery implements LeadInfoExtractorEvent {
  const factory _GetLeadInfoFromQuery(
          final String query, final BuildContext context) =
      _$GetLeadInfoFromQueryImpl;

  @override
  String get query;
  @override
  BuildContext get context;

  /// Create a copy of LeadInfoExtractorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLeadInfoFromQueryImplCopyWith<_$GetLeadInfoFromQueryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeadInfoExtractorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(LeadDetails leadInfo) leadInfo,
    required TResult Function(String failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(LeadDetails leadInfo)? leadInfo,
    TResult? Function(String failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(LeadDetails leadInfo)? leadInfo,
    TResult Function(String failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LeadInfo value) leadInfo,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_LeadInfo value)? leadInfo,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LeadInfo value)? leadInfo,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadInfoExtractorStateCopyWith<$Res> {
  factory $LeadInfoExtractorStateCopyWith(LeadInfoExtractorState value,
          $Res Function(LeadInfoExtractorState) then) =
      _$LeadInfoExtractorStateCopyWithImpl<$Res, LeadInfoExtractorState>;
}

/// @nodoc
class _$LeadInfoExtractorStateCopyWithImpl<$Res,
        $Val extends LeadInfoExtractorState>
    implements $LeadInfoExtractorStateCopyWith<$Res> {
  _$LeadInfoExtractorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadInfoExtractorState
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
    extends _$LeadInfoExtractorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LeadInfoExtractorState.initial()';
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
    required TResult Function(LeadDetails leadInfo) leadInfo,
    required TResult Function(String failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(LeadDetails leadInfo)? leadInfo,
    TResult? Function(String failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(LeadDetails leadInfo)? leadInfo,
    TResult Function(String failure)? failed,
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
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LeadInfo value) leadInfo,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_LeadInfo value)? leadInfo,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LeadInfo value)? leadInfo,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LeadInfoExtractorState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingInProgressImplCopyWith<$Res> {
  factory _$$LoadingInProgressImplCopyWith(_$LoadingInProgressImpl value,
          $Res Function(_$LoadingInProgressImpl) then) =
      __$$LoadingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingInProgressImplCopyWithImpl<$Res>
    extends _$LeadInfoExtractorStateCopyWithImpl<$Res, _$LoadingInProgressImpl>
    implements _$$LoadingInProgressImplCopyWith<$Res> {
  __$$LoadingInProgressImplCopyWithImpl(_$LoadingInProgressImpl _value,
      $Res Function(_$LoadingInProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingInProgressImpl implements _LoadingInProgress {
  const _$LoadingInProgressImpl();

  @override
  String toString() {
    return 'LeadInfoExtractorState.loadingInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(LeadDetails leadInfo) leadInfo,
    required TResult Function(String failure) failed,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(LeadDetails leadInfo)? leadInfo,
    TResult? Function(String failure)? failed,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(LeadDetails leadInfo)? leadInfo,
    TResult Function(String failure)? failed,
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
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LeadInfo value) leadInfo,
    required TResult Function(_Failed value) failed,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_LeadInfo value)? leadInfo,
    TResult? Function(_Failed value)? failed,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LeadInfo value)? leadInfo,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingInProgress implements LeadInfoExtractorState {
  const factory _LoadingInProgress() = _$LoadingInProgressImpl;
}

/// @nodoc
abstract class _$$LeadInfoImplCopyWith<$Res> {
  factory _$$LeadInfoImplCopyWith(
          _$LeadInfoImpl value, $Res Function(_$LeadInfoImpl) then) =
      __$$LeadInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LeadDetails leadInfo});

  $LeadDetailsCopyWith<$Res> get leadInfo;
}

/// @nodoc
class __$$LeadInfoImplCopyWithImpl<$Res>
    extends _$LeadInfoExtractorStateCopyWithImpl<$Res, _$LeadInfoImpl>
    implements _$$LeadInfoImplCopyWith<$Res> {
  __$$LeadInfoImplCopyWithImpl(
      _$LeadInfoImpl _value, $Res Function(_$LeadInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadInfo = null,
  }) {
    return _then(_$LeadInfoImpl(
      null == leadInfo
          ? _value.leadInfo
          : leadInfo // ignore: cast_nullable_to_non_nullable
              as LeadDetails,
    ));
  }

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeadDetailsCopyWith<$Res> get leadInfo {
    return $LeadDetailsCopyWith<$Res>(_value.leadInfo, (value) {
      return _then(_value.copyWith(leadInfo: value));
    });
  }
}

/// @nodoc

class _$LeadInfoImpl implements _LeadInfo {
  const _$LeadInfoImpl(this.leadInfo);

  @override
  final LeadDetails leadInfo;

  @override
  String toString() {
    return 'LeadInfoExtractorState.leadInfo(leadInfo: $leadInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadInfoImpl &&
            (identical(other.leadInfo, leadInfo) ||
                other.leadInfo == leadInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leadInfo);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadInfoImplCopyWith<_$LeadInfoImpl> get copyWith =>
      __$$LeadInfoImplCopyWithImpl<_$LeadInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(LeadDetails leadInfo) leadInfo,
    required TResult Function(String failure) failed,
  }) {
    return leadInfo(this.leadInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(LeadDetails leadInfo)? leadInfo,
    TResult? Function(String failure)? failed,
  }) {
    return leadInfo?.call(this.leadInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(LeadDetails leadInfo)? leadInfo,
    TResult Function(String failure)? failed,
    required TResult orElse(),
  }) {
    if (leadInfo != null) {
      return leadInfo(this.leadInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LeadInfo value) leadInfo,
    required TResult Function(_Failed value) failed,
  }) {
    return leadInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_LeadInfo value)? leadInfo,
    TResult? Function(_Failed value)? failed,
  }) {
    return leadInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LeadInfo value)? leadInfo,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (leadInfo != null) {
      return leadInfo(this);
    }
    return orElse();
  }
}

abstract class _LeadInfo implements LeadInfoExtractorState {
  const factory _LeadInfo(final LeadDetails leadInfo) = _$LeadInfoImpl;

  LeadDetails get leadInfo;

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadInfoImplCopyWith<_$LeadInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String failure});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$LeadInfoExtractorStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failure);

  @override
  final String failure;

  @override
  String toString() {
    return 'LeadInfoExtractorState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(LeadDetails leadInfo) leadInfo,
    required TResult Function(String failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(LeadDetails leadInfo)? leadInfo,
    TResult? Function(String failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(LeadDetails leadInfo)? leadInfo,
    TResult Function(String failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingInProgress value) loadingInProgress,
    required TResult Function(_LeadInfo value) leadInfo,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingInProgress value)? loadingInProgress,
    TResult? Function(_LeadInfo value)? leadInfo,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingInProgress value)? loadingInProgress,
    TResult Function(_LeadInfo value)? leadInfo,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements LeadInfoExtractorState {
  const factory _Failed(final String failure) = _$FailedImpl;

  String get failure;

  /// Create a copy of LeadInfoExtractorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
