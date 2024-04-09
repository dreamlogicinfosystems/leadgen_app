// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadEventCopyWith<LeadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadEventCopyWith<$Res> {
  factory $LeadEventCopyWith(LeadEvent value, $Res Function(LeadEvent) then) =
      _$LeadEventCopyWithImpl<$Res, LeadEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$LeadEventCopyWithImpl<$Res, $Val extends LeadEvent>
    implements $LeadEventCopyWith<$Res> {
  _$LeadEventCopyWithImpl(this._value, this._then);

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
abstract class _$$addLeadImplCopyWith<$Res>
    implements $LeadEventCopyWith<$Res> {
  factory _$$addLeadImplCopyWith(
          _$addLeadImpl value, $Res Function(_$addLeadImpl) then) =
      __$$addLeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Lead lead, BuildContext context});

  $LeadCopyWith<$Res> get lead;
}

/// @nodoc
class __$$addLeadImplCopyWithImpl<$Res>
    extends _$LeadEventCopyWithImpl<$Res, _$addLeadImpl>
    implements _$$addLeadImplCopyWith<$Res> {
  __$$addLeadImplCopyWithImpl(
      _$addLeadImpl _value, $Res Function(_$addLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lead = null,
    Object? context = null,
  }) {
    return _then(_$addLeadImpl(
      null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_value.lead, (value) {
      return _then(_value.copyWith(lead: value));
    });
  }
}

/// @nodoc

class _$addLeadImpl implements _addLead {
  const _$addLeadImpl(this.lead, this.context);

  @override
  final Lead lead;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadEvent.addLead(lead: $lead, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addLeadImpl &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addLeadImplCopyWith<_$addLeadImpl> get copyWith =>
      __$$addLeadImplCopyWithImpl<_$addLeadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) {
    return addLead(lead, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) {
    return addLead?.call(lead, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) {
    if (addLead != null) {
      return addLead(lead, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) {
    return addLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) {
    return addLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) {
    if (addLead != null) {
      return addLead(this);
    }
    return orElse();
  }
}

abstract class _addLead implements LeadEvent {
  const factory _addLead(final Lead lead, final BuildContext context) =
      _$addLeadImpl;

  Lead get lead;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$addLeadImplCopyWith<_$addLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$addLeadChatImplCopyWith<$Res>
    implements $LeadEventCopyWith<$Res> {
  factory _$$addLeadChatImplCopyWith(
          _$addLeadChatImpl value, $Res Function(_$addLeadChatImpl) then) =
      __$$addLeadChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Lead lead, BuildContext context});

  $LeadCopyWith<$Res> get lead;
}

/// @nodoc
class __$$addLeadChatImplCopyWithImpl<$Res>
    extends _$LeadEventCopyWithImpl<$Res, _$addLeadChatImpl>
    implements _$$addLeadChatImplCopyWith<$Res> {
  __$$addLeadChatImplCopyWithImpl(
      _$addLeadChatImpl _value, $Res Function(_$addLeadChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lead = null,
    Object? context = null,
  }) {
    return _then(_$addLeadChatImpl(
      null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LeadCopyWith<$Res> get lead {
    return $LeadCopyWith<$Res>(_value.lead, (value) {
      return _then(_value.copyWith(lead: value));
    });
  }
}

/// @nodoc

class _$addLeadChatImpl implements _addLeadChat {
  const _$addLeadChatImpl(this.lead, this.context);

  @override
  final Lead lead;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadEvent.addLeadChat(lead: $lead, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addLeadChatImpl &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addLeadChatImplCopyWith<_$addLeadChatImpl> get copyWith =>
      __$$addLeadChatImplCopyWithImpl<_$addLeadChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) {
    return addLeadChat(lead, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) {
    return addLeadChat?.call(lead, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) {
    if (addLeadChat != null) {
      return addLeadChat(lead, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) {
    return addLeadChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) {
    return addLeadChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) {
    if (addLeadChat != null) {
      return addLeadChat(this);
    }
    return orElse();
  }
}

abstract class _addLeadChat implements LeadEvent {
  const factory _addLeadChat(final Lead lead, final BuildContext context) =
      _$addLeadChatImpl;

  Lead get lead;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$addLeadChatImplCopyWith<_$addLeadChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getLeadsImplCopyWith<$Res>
    implements $LeadEventCopyWith<$Res> {
  factory _$$getLeadsImplCopyWith(
          _$getLeadsImpl value, $Res Function(_$getLeadsImpl) then) =
      __$$getLeadsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int deptId, BuildContext context});
}

/// @nodoc
class __$$getLeadsImplCopyWithImpl<$Res>
    extends _$LeadEventCopyWithImpl<$Res, _$getLeadsImpl>
    implements _$$getLeadsImplCopyWith<$Res> {
  __$$getLeadsImplCopyWithImpl(
      _$getLeadsImpl _value, $Res Function(_$getLeadsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? deptId = null,
    Object? context = null,
  }) {
    return _then(_$getLeadsImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == deptId
          ? _value.deptId
          : deptId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getLeadsImpl implements _getLeads {
  const _$getLeadsImpl(this.type, this.deptId, this.context);

  @override
  final String type;
  @override
  final int deptId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadEvent.getLeads(type: $type, deptId: $deptId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getLeadsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.deptId, deptId) || other.deptId == deptId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, deptId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getLeadsImplCopyWith<_$getLeadsImpl> get copyWith =>
      __$$getLeadsImplCopyWithImpl<_$getLeadsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) {
    return getLeads(type, deptId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) {
    return getLeads?.call(type, deptId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) {
    if (getLeads != null) {
      return getLeads(type, deptId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) {
    return getLeads(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) {
    return getLeads?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) {
    if (getLeads != null) {
      return getLeads(this);
    }
    return orElse();
  }
}

abstract class _getLeads implements LeadEvent {
  const factory _getLeads(
          final String type, final int deptId, final BuildContext context) =
      _$getLeadsImpl;

  String get type;
  int get deptId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getLeadsImplCopyWith<_$getLeadsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getLeadChatImplCopyWith<$Res>
    implements $LeadEventCopyWith<$Res> {
  factory _$$getLeadChatImplCopyWith(
          _$getLeadChatImpl value, $Res Function(_$getLeadChatImpl) then) =
      __$$getLeadChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int leadId, BuildContext context});
}

/// @nodoc
class __$$getLeadChatImplCopyWithImpl<$Res>
    extends _$LeadEventCopyWithImpl<$Res, _$getLeadChatImpl>
    implements _$$getLeadChatImplCopyWith<$Res> {
  __$$getLeadChatImplCopyWithImpl(
      _$getLeadChatImpl _value, $Res Function(_$getLeadChatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? context = null,
  }) {
    return _then(_$getLeadChatImpl(
      null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getLeadChatImpl implements _getLeadChat {
  const _$getLeadChatImpl(this.leadId, this.context);

  @override
  final int leadId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadEvent.getLeadChat(leadId: $leadId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getLeadChatImpl &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leadId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getLeadChatImplCopyWith<_$getLeadChatImpl> get copyWith =>
      __$$getLeadChatImplCopyWithImpl<_$getLeadChatImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) {
    return getLeadChat(leadId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) {
    return getLeadChat?.call(leadId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) {
    if (getLeadChat != null) {
      return getLeadChat(leadId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) {
    return getLeadChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) {
    return getLeadChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) {
    if (getLeadChat != null) {
      return getLeadChat(this);
    }
    return orElse();
  }
}

abstract class _getLeadChat implements LeadEvent {
  const factory _getLeadChat(final int leadId, final BuildContext context) =
      _$getLeadChatImpl;

  int get leadId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getLeadChatImplCopyWith<_$getLeadChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateLeadStatusImplCopyWith<$Res>
    implements $LeadEventCopyWith<$Res> {
  factory _$$updateLeadStatusImplCopyWith(_$updateLeadStatusImpl value,
          $Res Function(_$updateLeadStatusImpl) then) =
      __$$updateLeadStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int leadId, int statusId, String message, BuildContext context});
}

/// @nodoc
class __$$updateLeadStatusImplCopyWithImpl<$Res>
    extends _$LeadEventCopyWithImpl<$Res, _$updateLeadStatusImpl>
    implements _$$updateLeadStatusImplCopyWith<$Res> {
  __$$updateLeadStatusImplCopyWithImpl(_$updateLeadStatusImpl _value,
      $Res Function(_$updateLeadStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadId = null,
    Object? statusId = null,
    Object? message = null,
    Object? context = null,
  }) {
    return _then(_$updateLeadStatusImpl(
      null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as int,
      null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$updateLeadStatusImpl implements _updateLeadStatus {
  const _$updateLeadStatusImpl(
      this.leadId, this.statusId, this.message, this.context);

  @override
  final int leadId;
  @override
  final int statusId;
  @override
  final String message;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'LeadEvent.updateLeadStatus(leadId: $leadId, statusId: $statusId, message: $message, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateLeadStatusImpl &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, leadId, statusId, message, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateLeadStatusImplCopyWith<_$updateLeadStatusImpl> get copyWith =>
      __$$updateLeadStatusImplCopyWithImpl<_$updateLeadStatusImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Lead lead, BuildContext context) addLead,
    required TResult Function(Lead lead, BuildContext context) addLeadChat,
    required TResult Function(String type, int deptId, BuildContext context)
        getLeads,
    required TResult Function(int leadId, BuildContext context) getLeadChat,
    required TResult Function(
            int leadId, int statusId, String message, BuildContext context)
        updateLeadStatus,
  }) {
    return updateLeadStatus(leadId, statusId, message, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Lead lead, BuildContext context)? addLead,
    TResult? Function(Lead lead, BuildContext context)? addLeadChat,
    TResult? Function(String type, int deptId, BuildContext context)? getLeads,
    TResult? Function(int leadId, BuildContext context)? getLeadChat,
    TResult? Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
  }) {
    return updateLeadStatus?.call(leadId, statusId, message, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Lead lead, BuildContext context)? addLead,
    TResult Function(Lead lead, BuildContext context)? addLeadChat,
    TResult Function(String type, int deptId, BuildContext context)? getLeads,
    TResult Function(int leadId, BuildContext context)? getLeadChat,
    TResult Function(
            int leadId, int statusId, String message, BuildContext context)?
        updateLeadStatus,
    required TResult orElse(),
  }) {
    if (updateLeadStatus != null) {
      return updateLeadStatus(leadId, statusId, message, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addLead value) addLead,
    required TResult Function(_addLeadChat value) addLeadChat,
    required TResult Function(_getLeads value) getLeads,
    required TResult Function(_getLeadChat value) getLeadChat,
    required TResult Function(_updateLeadStatus value) updateLeadStatus,
  }) {
    return updateLeadStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addLead value)? addLead,
    TResult? Function(_addLeadChat value)? addLeadChat,
    TResult? Function(_getLeads value)? getLeads,
    TResult? Function(_getLeadChat value)? getLeadChat,
    TResult? Function(_updateLeadStatus value)? updateLeadStatus,
  }) {
    return updateLeadStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addLead value)? addLead,
    TResult Function(_addLeadChat value)? addLeadChat,
    TResult Function(_getLeads value)? getLeads,
    TResult Function(_getLeadChat value)? getLeadChat,
    TResult Function(_updateLeadStatus value)? updateLeadStatus,
    required TResult orElse(),
  }) {
    if (updateLeadStatus != null) {
      return updateLeadStatus(this);
    }
    return orElse();
  }
}

abstract class _updateLeadStatus implements LeadEvent {
  const factory _updateLeadStatus(
      final int leadId,
      final int statusId,
      final String message,
      final BuildContext context) = _$updateLeadStatusImpl;

  int get leadId;
  int get statusId;
  String get message;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$updateLeadStatusImplCopyWith<_$updateLeadStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LeadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_success value) success,
    required TResult Function(_failed value) failed,
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_failed value)? failed,
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadStateCopyWith<$Res> {
  factory $LeadStateCopyWith(LeadState value, $Res Function(LeadState) then) =
      _$LeadStateCopyWithImpl<$Res, LeadState>;
}

/// @nodoc
class _$LeadStateCopyWithImpl<$Res, $Val extends LeadState>
    implements $LeadStateCopyWith<$Res> {
  _$LeadStateCopyWithImpl(this._value, this._then);

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
    extends _$LeadStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'LeadState.initial()';
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
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
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
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
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
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LeadState {
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
    extends _$LeadStateCopyWithImpl<$Res, _$loadingInProgressImpl>
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
    return 'LeadState.loadingInProgress()';
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
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
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
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
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
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements LeadState {
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
    extends _$LeadStateCopyWithImpl<$Res, _$successImpl>
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
    return 'LeadState.success(message: $message)';
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
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
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
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
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
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements LeadState {
  const factory _success(final String message) = _$successImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
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
    extends _$LeadStateCopyWithImpl<$Res, _$failedImpl>
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
    return 'LeadState.failed(error: $error)';
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
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
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
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
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
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements LeadState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$emptyLeadListImplCopyWith<$Res> {
  factory _$$emptyLeadListImplCopyWith(
          _$emptyLeadListImpl value, $Res Function(_$emptyLeadListImpl) then) =
      __$$emptyLeadListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Lead> empty});
}

/// @nodoc
class __$$emptyLeadListImplCopyWithImpl<$Res>
    extends _$LeadStateCopyWithImpl<$Res, _$emptyLeadListImpl>
    implements _$$emptyLeadListImplCopyWith<$Res> {
  __$$emptyLeadListImplCopyWithImpl(
      _$emptyLeadListImpl _value, $Res Function(_$emptyLeadListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? empty = null,
  }) {
    return _then(_$emptyLeadListImpl(
      null == empty
          ? _value._empty
          : empty // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
    ));
  }
}

/// @nodoc

class _$emptyLeadListImpl implements _emptyLeadList {
  const _$emptyLeadListImpl(final List<Lead> empty) : _empty = empty;

  final List<Lead> _empty;
  @override
  List<Lead> get empty {
    if (_empty is EqualUnmodifiableListView) return _empty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_empty);
  }

  @override
  String toString() {
    return 'LeadState.emptyLeadList(empty: $empty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$emptyLeadListImpl &&
            const DeepCollectionEquality().equals(other._empty, _empty));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_empty));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$emptyLeadListImplCopyWith<_$emptyLeadListImpl> get copyWith =>
      __$$emptyLeadListImplCopyWithImpl<_$emptyLeadListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return emptyLeadList(empty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return emptyLeadList?.call(empty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
    required TResult orElse(),
  }) {
    if (emptyLeadList != null) {
      return emptyLeadList(empty);
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
  }) {
    return emptyLeadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_failed value)? failed,
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
  }) {
    return emptyLeadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (emptyLeadList != null) {
      return emptyLeadList(this);
    }
    return orElse();
  }
}

abstract class _emptyLeadList implements LeadState {
  const factory _emptyLeadList(final List<Lead> empty) = _$emptyLeadListImpl;

  List<Lead> get empty;
  @JsonKey(ignore: true)
  _$$emptyLeadListImplCopyWith<_$emptyLeadListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successLeadsListImplCopyWith<$Res> {
  factory _$$successLeadsListImplCopyWith(_$successLeadsListImpl value,
          $Res Function(_$successLeadsListImpl) then) =
      __$$successLeadsListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Lead> leads});
}

/// @nodoc
class __$$successLeadsListImplCopyWithImpl<$Res>
    extends _$LeadStateCopyWithImpl<$Res, _$successLeadsListImpl>
    implements _$$successLeadsListImplCopyWith<$Res> {
  __$$successLeadsListImplCopyWithImpl(_$successLeadsListImpl _value,
      $Res Function(_$successLeadsListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leads = null,
  }) {
    return _then(_$successLeadsListImpl(
      null == leads
          ? _value._leads
          : leads // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
    ));
  }
}

/// @nodoc

class _$successLeadsListImpl implements _successLeadsList {
  const _$successLeadsListImpl(final List<Lead> leads) : _leads = leads;

  final List<Lead> _leads;
  @override
  List<Lead> get leads {
    if (_leads is EqualUnmodifiableListView) return _leads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leads);
  }

  @override
  String toString() {
    return 'LeadState.successLeadsList(leads: $leads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successLeadsListImpl &&
            const DeepCollectionEquality().equals(other._leads, _leads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leads));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successLeadsListImplCopyWith<_$successLeadsListImpl> get copyWith =>
      __$$successLeadsListImplCopyWithImpl<_$successLeadsListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return successLeadsList(leads);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return successLeadsList?.call(leads);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
    required TResult orElse(),
  }) {
    if (successLeadsList != null) {
      return successLeadsList(leads);
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
  }) {
    return successLeadsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_failed value)? failed,
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
  }) {
    return successLeadsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (successLeadsList != null) {
      return successLeadsList(this);
    }
    return orElse();
  }
}

abstract class _successLeadsList implements LeadState {
  const factory _successLeadsList(final List<Lead> leads) =
      _$successLeadsListImpl;

  List<Lead> get leads;
  @JsonKey(ignore: true)
  _$$successLeadsListImplCopyWith<_$successLeadsListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successChatListImplCopyWith<$Res> {
  factory _$$successChatListImplCopyWith(_$successChatListImpl value,
          $Res Function(_$successChatListImpl) then) =
      __$$successChatListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Chat> leadChat});
}

/// @nodoc
class __$$successChatListImplCopyWithImpl<$Res>
    extends _$LeadStateCopyWithImpl<$Res, _$successChatListImpl>
    implements _$$successChatListImplCopyWith<$Res> {
  __$$successChatListImplCopyWithImpl(
      _$successChatListImpl _value, $Res Function(_$successChatListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leadChat = null,
  }) {
    return _then(_$successChatListImpl(
      null == leadChat
          ? _value._leadChat
          : leadChat // ignore: cast_nullable_to_non_nullable
              as List<Chat>,
    ));
  }
}

/// @nodoc

class _$successChatListImpl implements _successChatList {
  const _$successChatListImpl(final List<Chat> leadChat) : _leadChat = leadChat;

  final List<Chat> _leadChat;
  @override
  List<Chat> get leadChat {
    if (_leadChat is EqualUnmodifiableListView) return _leadChat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_leadChat);
  }

  @override
  String toString() {
    return 'LeadState.successChatList(leadChat: $leadChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successChatListImpl &&
            const DeepCollectionEquality().equals(other._leadChat, _leadChat));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_leadChat));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successChatListImplCopyWith<_$successChatListImpl> get copyWith =>
      __$$successChatListImplCopyWithImpl<_$successChatListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) success,
    required TResult Function(String error) failed,
    required TResult Function(List<Lead> empty) emptyLeadList,
    required TResult Function(List<Lead> leads) successLeadsList,
    required TResult Function(List<Chat> leadChat) successChatList,
  }) {
    return successChatList(leadChat);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? success,
    TResult? Function(String error)? failed,
    TResult? Function(List<Lead> empty)? emptyLeadList,
    TResult? Function(List<Lead> leads)? successLeadsList,
    TResult? Function(List<Chat> leadChat)? successChatList,
  }) {
    return successChatList?.call(leadChat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? success,
    TResult Function(String error)? failed,
    TResult Function(List<Lead> empty)? emptyLeadList,
    TResult Function(List<Lead> leads)? successLeadsList,
    TResult Function(List<Chat> leadChat)? successChatList,
    required TResult orElse(),
  }) {
    if (successChatList != null) {
      return successChatList(leadChat);
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
    required TResult Function(_emptyLeadList value) emptyLeadList,
    required TResult Function(_successLeadsList value) successLeadsList,
    required TResult Function(_successChatList value) successChatList,
  }) {
    return successChatList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_success value)? success,
    TResult? Function(_failed value)? failed,
    TResult? Function(_emptyLeadList value)? emptyLeadList,
    TResult? Function(_successLeadsList value)? successLeadsList,
    TResult? Function(_successChatList value)? successChatList,
  }) {
    return successChatList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_success value)? success,
    TResult Function(_failed value)? failed,
    TResult Function(_emptyLeadList value)? emptyLeadList,
    TResult Function(_successLeadsList value)? successLeadsList,
    TResult Function(_successChatList value)? successChatList,
    required TResult orElse(),
  }) {
    if (successChatList != null) {
      return successChatList(this);
    }
    return orElse();
  }
}

abstract class _successChatList implements LeadState {
  const factory _successChatList(final List<Chat> leadChat) =
      _$successChatListImpl;

  List<Chat> get leadChat;
  @JsonKey(ignore: true)
  _$$successChatListImplCopyWith<_$successChatListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
