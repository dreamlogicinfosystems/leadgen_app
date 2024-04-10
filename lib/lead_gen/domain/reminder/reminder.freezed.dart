// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Reminder {
  int? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  String? get repeatInterval => throw _privateConstructorUsedError;
  String? get repeatCount => throw _privateConstructorUsedError;
  List<ReminderDetails>? get reminderData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReminderCopyWith<Reminder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderCopyWith<$Res> {
  factory $ReminderCopyWith(Reminder value, $Res Function(Reminder) then) =
      _$ReminderCopyWithImpl<$Res, Reminder>;
  @useResult
  $Res call(
      {int? id,
      String? message,
      String? date,
      String? time,
      String? dateTime,
      String? repeatInterval,
      String? repeatCount,
      List<ReminderDetails>? reminderData});
}

/// @nodoc
class _$ReminderCopyWithImpl<$Res, $Val extends Reminder>
    implements $ReminderCopyWith<$Res> {
  _$ReminderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? dateTime = freezed,
    Object? repeatInterval = freezed,
    Object? repeatCount = freezed,
    Object? reminderData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatInterval: freezed == repeatInterval
          ? _value.repeatInterval
          : repeatInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatCount: freezed == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderData: freezed == reminderData
          ? _value.reminderData
          : reminderData // ignore: cast_nullable_to_non_nullable
              as List<ReminderDetails>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderImplCopyWith<$Res>
    implements $ReminderCopyWith<$Res> {
  factory _$$ReminderImplCopyWith(
          _$ReminderImpl value, $Res Function(_$ReminderImpl) then) =
      __$$ReminderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? message,
      String? date,
      String? time,
      String? dateTime,
      String? repeatInterval,
      String? repeatCount,
      List<ReminderDetails>? reminderData});
}

/// @nodoc
class __$$ReminderImplCopyWithImpl<$Res>
    extends _$ReminderCopyWithImpl<$Res, _$ReminderImpl>
    implements _$$ReminderImplCopyWith<$Res> {
  __$$ReminderImplCopyWithImpl(
      _$ReminderImpl _value, $Res Function(_$ReminderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? dateTime = freezed,
    Object? repeatInterval = freezed,
    Object? repeatCount = freezed,
    Object? reminderData = freezed,
  }) {
    return _then(_$ReminderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatInterval: freezed == repeatInterval
          ? _value.repeatInterval
          : repeatInterval // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatCount: freezed == repeatCount
          ? _value.repeatCount
          : repeatCount // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderData: freezed == reminderData
          ? _value._reminderData
          : reminderData // ignore: cast_nullable_to_non_nullable
              as List<ReminderDetails>?,
    ));
  }
}

/// @nodoc

class _$ReminderImpl implements _Reminder {
  const _$ReminderImpl(
      {this.id,
      this.message,
      this.date,
      this.time,
      this.dateTime,
      this.repeatInterval,
      this.repeatCount,
      final List<ReminderDetails>? reminderData})
      : _reminderData = reminderData;

  @override
  final int? id;
  @override
  final String? message;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final String? dateTime;
  @override
  final String? repeatInterval;
  @override
  final String? repeatCount;
  final List<ReminderDetails>? _reminderData;
  @override
  List<ReminderDetails>? get reminderData {
    final value = _reminderData;
    if (value == null) return null;
    if (_reminderData is EqualUnmodifiableListView) return _reminderData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Reminder(id: $id, message: $message, date: $date, time: $time, dateTime: $dateTime, repeatInterval: $repeatInterval, repeatCount: $repeatCount, reminderData: $reminderData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.repeatInterval, repeatInterval) ||
                other.repeatInterval == repeatInterval) &&
            (identical(other.repeatCount, repeatCount) ||
                other.repeatCount == repeatCount) &&
            const DeepCollectionEquality()
                .equals(other._reminderData, _reminderData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      message,
      date,
      time,
      dateTime,
      repeatInterval,
      repeatCount,
      const DeepCollectionEquality().hash(_reminderData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      __$$ReminderImplCopyWithImpl<_$ReminderImpl>(this, _$identity);
}

abstract class _Reminder implements Reminder {
  const factory _Reminder(
      {final int? id,
      final String? message,
      final String? date,
      final String? time,
      final String? dateTime,
      final String? repeatInterval,
      final String? repeatCount,
      final List<ReminderDetails>? reminderData}) = _$ReminderImpl;

  @override
  int? get id;
  @override
  String? get message;
  @override
  String? get date;
  @override
  String? get time;
  @override
  String? get dateTime;
  @override
  String? get repeatInterval;
  @override
  String? get repeatCount;
  @override
  List<ReminderDetails>? get reminderData;
  @override
  @JsonKey(ignore: true)
  _$$ReminderImplCopyWith<_$ReminderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReminderDetails {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get inviteSendOn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReminderDetailsCopyWith<ReminderDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderDetailsCopyWith<$Res> {
  factory $ReminderDetailsCopyWith(
          ReminderDetails value, $Res Function(ReminderDetails) then) =
      _$ReminderDetailsCopyWithImpl<$Res, ReminderDetails>;
  @useResult
  $Res call({int? id, String? note, String? inviteSendOn});
}

/// @nodoc
class _$ReminderDetailsCopyWithImpl<$Res, $Val extends ReminderDetails>
    implements $ReminderDetailsCopyWith<$Res> {
  _$ReminderDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? inviteSendOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteSendOn: freezed == inviteSendOn
          ? _value.inviteSendOn
          : inviteSendOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderDetailsImplCopyWith<$Res>
    implements $ReminderDetailsCopyWith<$Res> {
  factory _$$ReminderDetailsImplCopyWith(_$ReminderDetailsImpl value,
          $Res Function(_$ReminderDetailsImpl) then) =
      __$$ReminderDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? note, String? inviteSendOn});
}

/// @nodoc
class __$$ReminderDetailsImplCopyWithImpl<$Res>
    extends _$ReminderDetailsCopyWithImpl<$Res, _$ReminderDetailsImpl>
    implements _$$ReminderDetailsImplCopyWith<$Res> {
  __$$ReminderDetailsImplCopyWithImpl(
      _$ReminderDetailsImpl _value, $Res Function(_$ReminderDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? inviteSendOn = freezed,
  }) {
    return _then(_$ReminderDetailsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      inviteSendOn: freezed == inviteSendOn
          ? _value.inviteSendOn
          : inviteSendOn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ReminderDetailsImpl implements _ReminderDetails {
  const _$ReminderDetailsImpl({this.id, this.note, this.inviteSendOn});

  @override
  final int? id;
  @override
  final String? note;
  @override
  final String? inviteSendOn;

  @override
  String toString() {
    return 'ReminderDetails(id: $id, note: $note, inviteSendOn: $inviteSendOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.inviteSendOn, inviteSendOn) ||
                other.inviteSendOn == inviteSendOn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, note, inviteSendOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderDetailsImplCopyWith<_$ReminderDetailsImpl> get copyWith =>
      __$$ReminderDetailsImplCopyWithImpl<_$ReminderDetailsImpl>(
          this, _$identity);
}

abstract class _ReminderDetails implements ReminderDetails {
  const factory _ReminderDetails(
      {final int? id,
      final String? note,
      final String? inviteSendOn}) = _$ReminderDetailsImpl;

  @override
  int? get id;
  @override
  String? get note;
  @override
  String? get inviteSendOn;
  @override
  @JsonKey(ignore: true)
  _$$ReminderDetailsImplCopyWith<_$ReminderDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
