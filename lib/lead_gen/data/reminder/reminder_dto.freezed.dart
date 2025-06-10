// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReminderDto _$ReminderDtoFromJson(Map<String, dynamic> json) {
  return _ReminderDto.fromJson(json);
}

/// @nodoc
mixin _$ReminderDto {
  int? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  String? get dateTime => throw _privateConstructorUsedError;
  String? get repeatInterval => throw _privateConstructorUsedError;
  String? get repeatCount => throw _privateConstructorUsedError;
  List<ReminderDataDto>? get reminderData => throw _privateConstructorUsedError;

  /// Serializes this ReminderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReminderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderDtoCopyWith<ReminderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderDtoCopyWith<$Res> {
  factory $ReminderDtoCopyWith(
          ReminderDto value, $Res Function(ReminderDto) then) =
      _$ReminderDtoCopyWithImpl<$Res, ReminderDto>;
  @useResult
  $Res call(
      {int? id,
      String? message,
      String? date,
      String? time,
      String? dateTime,
      String? repeatInterval,
      String? repeatCount,
      List<ReminderDataDto>? reminderData});
}

/// @nodoc
class _$ReminderDtoCopyWithImpl<$Res, $Val extends ReminderDto>
    implements $ReminderDtoCopyWith<$Res> {
  _$ReminderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderDto
  /// with the given fields replaced by the non-null parameter values.
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
              as List<ReminderDataDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReminderDtoImplCopyWith<$Res>
    implements $ReminderDtoCopyWith<$Res> {
  factory _$$ReminderDtoImplCopyWith(
          _$ReminderDtoImpl value, $Res Function(_$ReminderDtoImpl) then) =
      __$$ReminderDtoImplCopyWithImpl<$Res>;
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
      List<ReminderDataDto>? reminderData});
}

/// @nodoc
class __$$ReminderDtoImplCopyWithImpl<$Res>
    extends _$ReminderDtoCopyWithImpl<$Res, _$ReminderDtoImpl>
    implements _$$ReminderDtoImplCopyWith<$Res> {
  __$$ReminderDtoImplCopyWithImpl(
      _$ReminderDtoImpl _value, $Res Function(_$ReminderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderDto
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$ReminderDtoImpl(
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
              as List<ReminderDataDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReminderDtoImpl extends _ReminderDto {
  const _$ReminderDtoImpl(
      {this.id,
      this.message,
      this.date,
      this.time,
      this.dateTime,
      this.repeatInterval,
      this.repeatCount,
      final List<ReminderDataDto>? reminderData})
      : _reminderData = reminderData,
        super._();

  factory _$ReminderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReminderDtoImplFromJson(json);

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
  final List<ReminderDataDto>? _reminderData;
  @override
  List<ReminderDataDto>? get reminderData {
    final value = _reminderData;
    if (value == null) return null;
    if (_reminderData is EqualUnmodifiableListView) return _reminderData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReminderDto(id: $id, message: $message, date: $date, time: $time, dateTime: $dateTime, repeatInterval: $repeatInterval, repeatCount: $repeatCount, reminderData: $reminderData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ReminderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderDtoImplCopyWith<_$ReminderDtoImpl> get copyWith =>
      __$$ReminderDtoImplCopyWithImpl<_$ReminderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReminderDtoImplToJson(
      this,
    );
  }
}

abstract class _ReminderDto extends ReminderDto {
  const factory _ReminderDto(
      {final int? id,
      final String? message,
      final String? date,
      final String? time,
      final String? dateTime,
      final String? repeatInterval,
      final String? repeatCount,
      final List<ReminderDataDto>? reminderData}) = _$ReminderDtoImpl;
  const _ReminderDto._() : super._();

  factory _ReminderDto.fromJson(Map<String, dynamic> json) =
      _$ReminderDtoImpl.fromJson;

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
  List<ReminderDataDto>? get reminderData;

  /// Create a copy of ReminderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderDtoImplCopyWith<_$ReminderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReminderDataDto _$ReminderDataDtoFromJson(Map<String, dynamic> json) {
  return _ReminderDataDto.fromJson(json);
}

/// @nodoc
mixin _$ReminderDataDto {
  int? get id => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get inviteSendOn => throw _privateConstructorUsedError;

  /// Serializes this ReminderDataDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReminderDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReminderDataDtoCopyWith<ReminderDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderDataDtoCopyWith<$Res> {
  factory $ReminderDataDtoCopyWith(
          ReminderDataDto value, $Res Function(ReminderDataDto) then) =
      _$ReminderDataDtoCopyWithImpl<$Res, ReminderDataDto>;
  @useResult
  $Res call({int? id, String? note, String? inviteSendOn});
}

/// @nodoc
class _$ReminderDataDtoCopyWithImpl<$Res, $Val extends ReminderDataDto>
    implements $ReminderDataDtoCopyWith<$Res> {
  _$ReminderDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReminderDataDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ReminderDataDtoImplCopyWith<$Res>
    implements $ReminderDataDtoCopyWith<$Res> {
  factory _$$ReminderDataDtoImplCopyWith(_$ReminderDataDtoImpl value,
          $Res Function(_$ReminderDataDtoImpl) then) =
      __$$ReminderDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? note, String? inviteSendOn});
}

/// @nodoc
class __$$ReminderDataDtoImplCopyWithImpl<$Res>
    extends _$ReminderDataDtoCopyWithImpl<$Res, _$ReminderDataDtoImpl>
    implements _$$ReminderDataDtoImplCopyWith<$Res> {
  __$$ReminderDataDtoImplCopyWithImpl(
      _$ReminderDataDtoImpl _value, $Res Function(_$ReminderDataDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReminderDataDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? note = freezed,
    Object? inviteSendOn = freezed,
  }) {
    return _then(_$ReminderDataDtoImpl(
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
@JsonSerializable()
class _$ReminderDataDtoImpl extends _ReminderDataDto {
  const _$ReminderDataDtoImpl({this.id, this.note, this.inviteSendOn})
      : super._();

  factory _$ReminderDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReminderDataDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? note;
  @override
  final String? inviteSendOn;

  @override
  String toString() {
    return 'ReminderDataDto(id: $id, note: $note, inviteSendOn: $inviteSendOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReminderDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.inviteSendOn, inviteSendOn) ||
                other.inviteSendOn == inviteSendOn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, note, inviteSendOn);

  /// Create a copy of ReminderDataDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReminderDataDtoImplCopyWith<_$ReminderDataDtoImpl> get copyWith =>
      __$$ReminderDataDtoImplCopyWithImpl<_$ReminderDataDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReminderDataDtoImplToJson(
      this,
    );
  }
}

abstract class _ReminderDataDto extends ReminderDataDto {
  const factory _ReminderDataDto(
      {final int? id,
      final String? note,
      final String? inviteSendOn}) = _$ReminderDataDtoImpl;
  const _ReminderDataDto._() : super._();

  factory _ReminderDataDto.fromJson(Map<String, dynamic> json) =
      _$ReminderDataDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get note;
  @override
  String? get inviteSendOn;

  /// Create a copy of ReminderDataDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReminderDataDtoImplCopyWith<_$ReminderDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
