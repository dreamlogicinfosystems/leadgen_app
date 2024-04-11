// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReminderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderEventCopyWith<$Res> {
  factory $ReminderEventCopyWith(
          ReminderEvent value, $Res Function(ReminderEvent) then) =
      _$ReminderEventCopyWithImpl<$Res, ReminderEvent>;
}

/// @nodoc
class _$ReminderEventCopyWithImpl<$Res, $Val extends ReminderEvent>
    implements $ReminderEventCopyWith<$Res> {
  _$ReminderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$addReminderImplCopyWith<$Res> {
  factory _$$addReminderImplCopyWith(
          _$addReminderImpl value, $Res Function(_$addReminderImpl) then) =
      __$$addReminderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Reminder reminder, BuildContext context});

  $ReminderCopyWith<$Res> get reminder;
}

/// @nodoc
class __$$addReminderImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$addReminderImpl>
    implements _$$addReminderImplCopyWith<$Res> {
  __$$addReminderImplCopyWithImpl(
      _$addReminderImpl _value, $Res Function(_$addReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminder = null,
    Object? context = null,
  }) {
    return _then(_$addReminderImpl(
      null == reminder
          ? _value.reminder
          : reminder // ignore: cast_nullable_to_non_nullable
              as Reminder,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ReminderCopyWith<$Res> get reminder {
    return $ReminderCopyWith<$Res>(_value.reminder, (value) {
      return _then(_value.copyWith(reminder: value));
    });
  }
}

/// @nodoc

class _$addReminderImpl implements _addReminder {
  const _$addReminderImpl(this.reminder, this.context);

  @override
  final Reminder reminder;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ReminderEvent.addReminder(reminder: $reminder, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addReminderImpl &&
            (identical(other.reminder, reminder) ||
                other.reminder == reminder) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminder, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$addReminderImplCopyWith<_$addReminderImpl> get copyWith =>
      __$$addReminderImplCopyWithImpl<_$addReminderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) {
    return addReminder(reminder, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) {
    return addReminder?.call(reminder, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) {
    if (addReminder != null) {
      return addReminder(reminder, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) {
    return addReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) {
    return addReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) {
    if (addReminder != null) {
      return addReminder(this);
    }
    return orElse();
  }
}

abstract class _addReminder implements ReminderEvent {
  const factory _addReminder(
      final Reminder reminder, final BuildContext context) = _$addReminderImpl;

  Reminder get reminder;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$addReminderImplCopyWith<_$addReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getRemindersImplCopyWith<$Res> {
  factory _$$getRemindersImplCopyWith(
          _$getRemindersImpl value, $Res Function(_$getRemindersImpl) then) =
      __$$getRemindersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getRemindersImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$getRemindersImpl>
    implements _$$getRemindersImplCopyWith<$Res> {
  __$$getRemindersImplCopyWithImpl(
      _$getRemindersImpl _value, $Res Function(_$getRemindersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getRemindersImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getRemindersImpl implements _getReminders {
  const _$getRemindersImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ReminderEvent.getReminders(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getRemindersImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getRemindersImplCopyWith<_$getRemindersImpl> get copyWith =>
      __$$getRemindersImplCopyWithImpl<_$getRemindersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) {
    return getReminders(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) {
    return getReminders?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) {
    if (getReminders != null) {
      return getReminders(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) {
    return getReminders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) {
    return getReminders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) {
    if (getReminders != null) {
      return getReminders(this);
    }
    return orElse();
  }
}

abstract class _getReminders implements ReminderEvent {
  const factory _getReminders(final BuildContext context) = _$getRemindersImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$getRemindersImplCopyWith<_$getRemindersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteReminderImplCopyWith<$Res> {
  factory _$$deleteReminderImplCopyWith(_$deleteReminderImpl value,
          $Res Function(_$deleteReminderImpl) then) =
      __$$deleteReminderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int reminderId, BuildContext context});
}

/// @nodoc
class __$$deleteReminderImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$deleteReminderImpl>
    implements _$$deleteReminderImplCopyWith<$Res> {
  __$$deleteReminderImplCopyWithImpl(
      _$deleteReminderImpl _value, $Res Function(_$deleteReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reminderId = null,
    Object? context = null,
  }) {
    return _then(_$deleteReminderImpl(
      null == reminderId
          ? _value.reminderId
          : reminderId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$deleteReminderImpl implements _deleteReminder {
  const _$deleteReminderImpl(this.reminderId, this.context);

  @override
  final int reminderId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ReminderEvent.deleteReminder(reminderId: $reminderId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteReminderImpl &&
            (identical(other.reminderId, reminderId) ||
                other.reminderId == reminderId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reminderId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteReminderImplCopyWith<_$deleteReminderImpl> get copyWith =>
      __$$deleteReminderImplCopyWithImpl<_$deleteReminderImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) {
    return deleteReminder(reminderId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) {
    return deleteReminder?.call(reminderId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) {
    if (deleteReminder != null) {
      return deleteReminder(reminderId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) {
    return deleteReminder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) {
    return deleteReminder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) {
    if (deleteReminder != null) {
      return deleteReminder(this);
    }
    return orElse();
  }
}

abstract class _deleteReminder implements ReminderEvent {
  const factory _deleteReminder(
      final int reminderId, final BuildContext context) = _$deleteReminderImpl;

  int get reminderId;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$deleteReminderImplCopyWith<_$deleteReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getRemindersCountImplCopyWith<$Res> {
  factory _$$getRemindersCountImplCopyWith(_$getRemindersCountImpl value,
          $Res Function(_$getRemindersCountImpl) then) =
      __$$getRemindersCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getRemindersCountImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$getRemindersCountImpl>
    implements _$$getRemindersCountImplCopyWith<$Res> {
  __$$getRemindersCountImplCopyWithImpl(_$getRemindersCountImpl _value,
      $Res Function(_$getRemindersCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getRemindersCountImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getRemindersCountImpl implements _getRemindersCount {
  const _$getRemindersCountImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'ReminderEvent.getRemindersCount(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getRemindersCountImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getRemindersCountImplCopyWith<_$getRemindersCountImpl> get copyWith =>
      __$$getRemindersCountImplCopyWithImpl<_$getRemindersCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) {
    return getRemindersCount(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) {
    return getRemindersCount?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) {
    if (getRemindersCount != null) {
      return getRemindersCount(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) {
    return getRemindersCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) {
    return getRemindersCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) {
    if (getRemindersCount != null) {
      return getRemindersCount(this);
    }
    return orElse();
  }
}

abstract class _getRemindersCount implements ReminderEvent {
  const factory _getRemindersCount(final BuildContext context) =
      _$getRemindersCountImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$getRemindersCountImplCopyWith<_$getRemindersCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$setRemainderImplCopyWith<$Res> {
  factory _$$setRemainderImplCopyWith(
          _$setRemainderImpl value, $Res Function(_$setRemainderImpl) then) =
      __$$setRemainderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, DateTime reminderDate, TimeOfDay reminderTime});
}

/// @nodoc
class __$$setRemainderImplCopyWithImpl<$Res>
    extends _$ReminderEventCopyWithImpl<$Res, _$setRemainderImpl>
    implements _$$setRemainderImplCopyWith<$Res> {
  __$$setRemainderImplCopyWithImpl(
      _$setRemainderImpl _value, $Res Function(_$setRemainderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? reminderDate = null,
    Object? reminderTime = null,
  }) {
    return _then(_$setRemainderImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      null == reminderDate
          ? _value.reminderDate
          : reminderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == reminderTime
          ? _value.reminderTime
          : reminderTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$setRemainderImpl implements _setRemainder {
  const _$setRemainderImpl(this.message, this.reminderDate, this.reminderTime);

  @override
  final String message;
  @override
  final DateTime reminderDate;
  @override
  final TimeOfDay reminderTime;

  @override
  String toString() {
    return 'ReminderEvent.setRemainder(message: $message, reminderDate: $reminderDate, reminderTime: $reminderTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setRemainderImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.reminderDate, reminderDate) ||
                other.reminderDate == reminderDate) &&
            (identical(other.reminderTime, reminderTime) ||
                other.reminderTime == reminderTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, reminderDate, reminderTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$setRemainderImplCopyWith<_$setRemainderImpl> get copyWith =>
      __$$setRemainderImplCopyWithImpl<_$setRemainderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reminder reminder, BuildContext context)
        addReminder,
    required TResult Function(BuildContext context) getReminders,
    required TResult Function(int reminderId, BuildContext context)
        deleteReminder,
    required TResult Function(BuildContext context) getRemindersCount,
    required TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)
        setRemainder,
  }) {
    return setRemainder(message, reminderDate, reminderTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Reminder reminder, BuildContext context)? addReminder,
    TResult? Function(BuildContext context)? getReminders,
    TResult? Function(int reminderId, BuildContext context)? deleteReminder,
    TResult? Function(BuildContext context)? getRemindersCount,
    TResult? Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
  }) {
    return setRemainder?.call(message, reminderDate, reminderTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reminder reminder, BuildContext context)? addReminder,
    TResult Function(BuildContext context)? getReminders,
    TResult Function(int reminderId, BuildContext context)? deleteReminder,
    TResult Function(BuildContext context)? getRemindersCount,
    TResult Function(
            String message, DateTime reminderDate, TimeOfDay reminderTime)?
        setRemainder,
    required TResult orElse(),
  }) {
    if (setRemainder != null) {
      return setRemainder(message, reminderDate, reminderTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_addReminder value) addReminder,
    required TResult Function(_getReminders value) getReminders,
    required TResult Function(_deleteReminder value) deleteReminder,
    required TResult Function(_getRemindersCount value) getRemindersCount,
    required TResult Function(_setRemainder value) setRemainder,
  }) {
    return setRemainder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_addReminder value)? addReminder,
    TResult? Function(_getReminders value)? getReminders,
    TResult? Function(_deleteReminder value)? deleteReminder,
    TResult? Function(_getRemindersCount value)? getRemindersCount,
    TResult? Function(_setRemainder value)? setRemainder,
  }) {
    return setRemainder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_addReminder value)? addReminder,
    TResult Function(_getReminders value)? getReminders,
    TResult Function(_deleteReminder value)? deleteReminder,
    TResult Function(_getRemindersCount value)? getRemindersCount,
    TResult Function(_setRemainder value)? setRemainder,
    required TResult orElse(),
  }) {
    if (setRemainder != null) {
      return setRemainder(this);
    }
    return orElse();
  }
}

abstract class _setRemainder implements ReminderEvent {
  const factory _setRemainder(final String message, final DateTime reminderDate,
      final TimeOfDay reminderTime) = _$setRemainderImpl;

  String get message;
  DateTime get reminderDate;
  TimeOfDay get reminderTime;
  @JsonKey(ignore: true)
  _$$setRemainderImplCopyWith<_$setRemainderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReminderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderStateCopyWith<$Res> {
  factory $ReminderStateCopyWith(
          ReminderState value, $Res Function(ReminderState) then) =
      _$ReminderStateCopyWithImpl<$Res, ReminderState>;
}

/// @nodoc
class _$ReminderStateCopyWithImpl<$Res, $Val extends ReminderState>
    implements $ReminderStateCopyWith<$Res> {
  _$ReminderStateCopyWithImpl(this._value, this._then);

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
    extends _$ReminderStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'ReminderState.initial()';
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
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
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
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReminderState {
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
    extends _$ReminderStateCopyWithImpl<$Res, _$loadingInProgressImpl>
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
    return 'ReminderState.loadingInProgress()';
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
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
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
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements ReminderState {
  const factory _loadingInProgress() = _$loadingInProgressImpl;
}

/// @nodoc
abstract class _$$savedImplCopyWith<$Res> {
  factory _$$savedImplCopyWith(
          _$savedImpl value, $Res Function(_$savedImpl) then) =
      __$$savedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$savedImplCopyWithImpl<$Res>
    extends _$ReminderStateCopyWithImpl<$Res, _$savedImpl>
    implements _$$savedImplCopyWith<$Res> {
  __$$savedImplCopyWithImpl(
      _$savedImpl _value, $Res Function(_$savedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$savedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$savedImpl implements _saved {
  const _$savedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ReminderState.saved(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$savedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$savedImplCopyWith<_$savedImpl> get copyWith =>
      __$$savedImplCopyWithImpl<_$savedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return saved(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return saved?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _saved implements ReminderState {
  const factory _saved(final String message) = _$savedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$savedImplCopyWith<_$savedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successRemCountImplCopyWith<$Res> {
  factory _$$successRemCountImplCopyWith(_$successRemCountImpl value,
          $Res Function(_$successRemCountImpl) then) =
      __$$successRemCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$successRemCountImplCopyWithImpl<$Res>
    extends _$ReminderStateCopyWithImpl<$Res, _$successRemCountImpl>
    implements _$$successRemCountImplCopyWith<$Res> {
  __$$successRemCountImplCopyWithImpl(
      _$successRemCountImpl _value, $Res Function(_$successRemCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$successRemCountImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$successRemCountImpl implements _successRemCount {
  const _$successRemCountImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'ReminderState.successRemCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successRemCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successRemCountImplCopyWith<_$successRemCountImpl> get copyWith =>
      __$$successRemCountImplCopyWithImpl<_$successRemCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return successRemCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return successRemCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (successRemCount != null) {
      return successRemCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return successRemCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return successRemCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (successRemCount != null) {
      return successRemCount(this);
    }
    return orElse();
  }
}

abstract class _successRemCount implements ReminderState {
  const factory _successRemCount(final int count) = _$successRemCountImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$successRemCountImplCopyWith<_$successRemCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successRemindersListImplCopyWith<$Res> {
  factory _$$successRemindersListImplCopyWith(_$successRemindersListImpl value,
          $Res Function(_$successRemindersListImpl) then) =
      __$$successRemindersListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Reminder> remindersList});
}

/// @nodoc
class __$$successRemindersListImplCopyWithImpl<$Res>
    extends _$ReminderStateCopyWithImpl<$Res, _$successRemindersListImpl>
    implements _$$successRemindersListImplCopyWith<$Res> {
  __$$successRemindersListImplCopyWithImpl(_$successRemindersListImpl _value,
      $Res Function(_$successRemindersListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remindersList = null,
  }) {
    return _then(_$successRemindersListImpl(
      null == remindersList
          ? _value._remindersList
          : remindersList // ignore: cast_nullable_to_non_nullable
              as List<Reminder>,
    ));
  }
}

/// @nodoc

class _$successRemindersListImpl implements _successRemindersList {
  const _$successRemindersListImpl(final List<Reminder> remindersList)
      : _remindersList = remindersList;

  final List<Reminder> _remindersList;
  @override
  List<Reminder> get remindersList {
    if (_remindersList is EqualUnmodifiableListView) return _remindersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_remindersList);
  }

  @override
  String toString() {
    return 'ReminderState.successRemindersList(remindersList: $remindersList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successRemindersListImpl &&
            const DeepCollectionEquality()
                .equals(other._remindersList, _remindersList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_remindersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successRemindersListImplCopyWith<_$successRemindersListImpl>
      get copyWith =>
          __$$successRemindersListImplCopyWithImpl<_$successRemindersListImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return successRemindersList(remindersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return successRemindersList?.call(remindersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
    TResult Function(String error)? failed,
    required TResult orElse(),
  }) {
    if (successRemindersList != null) {
      return successRemindersList(remindersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return successRemindersList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return successRemindersList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (successRemindersList != null) {
      return successRemindersList(this);
    }
    return orElse();
  }
}

abstract class _successRemindersList implements ReminderState {
  const factory _successRemindersList(final List<Reminder> remindersList) =
      _$successRemindersListImpl;

  List<Reminder> get remindersList;
  @JsonKey(ignore: true)
  _$$successRemindersListImplCopyWith<_$successRemindersListImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ReminderStateCopyWithImpl<$Res, _$failedImpl>
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
    return 'ReminderState.failed(error: $error)';
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
    required TResult Function(String message) saved,
    required TResult Function(int count) successRemCount,
    required TResult Function(List<Reminder> remindersList)
        successRemindersList,
    required TResult Function(String error) failed,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(String message)? saved,
    TResult? Function(int count)? successRemCount,
    TResult? Function(List<Reminder> remindersList)? successRemindersList,
    TResult? Function(String error)? failed,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(String message)? saved,
    TResult Function(int count)? successRemCount,
    TResult Function(List<Reminder> remindersList)? successRemindersList,
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
    required TResult Function(_saved value) saved,
    required TResult Function(_successRemCount value) successRemCount,
    required TResult Function(_successRemindersList value) successRemindersList,
    required TResult Function(_failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_saved value)? saved,
    TResult? Function(_successRemCount value)? successRemCount,
    TResult? Function(_successRemindersList value)? successRemindersList,
    TResult? Function(_failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_saved value)? saved,
    TResult Function(_successRemCount value)? successRemCount,
    TResult Function(_successRemindersList value)? successRemindersList,
    TResult Function(_failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements ReminderState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
