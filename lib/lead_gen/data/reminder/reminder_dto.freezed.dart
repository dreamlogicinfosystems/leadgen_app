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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      {int? id, String? message, String? date, String? time, String? dateTime});
}

/// @nodoc
class _$ReminderDtoCopyWithImpl<$Res, $Val extends ReminderDto>
    implements $ReminderDtoCopyWith<$Res> {
  _$ReminderDtoCopyWithImpl(this._value, this._then);

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
      {int? id, String? message, String? date, String? time, String? dateTime});
}

/// @nodoc
class __$$ReminderDtoImplCopyWithImpl<$Res>
    extends _$ReminderDtoCopyWithImpl<$Res, _$ReminderDtoImpl>
    implements _$$ReminderDtoImplCopyWith<$Res> {
  __$$ReminderDtoImplCopyWithImpl(
      _$ReminderDtoImpl _value, $Res Function(_$ReminderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? dateTime = freezed,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReminderDtoImpl extends _ReminderDto {
  const _$ReminderDtoImpl(
      {this.id, this.message, this.date, this.time, this.dateTime})
      : super._();

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
  String toString() {
    return 'ReminderDto(id: $id, message: $message, date: $date, time: $time, dateTime: $dateTime)';
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
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, message, date, time, dateTime);

  @JsonKey(ignore: true)
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
      final String? dateTime}) = _$ReminderDtoImpl;
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
  @JsonKey(ignore: true)
  _$$ReminderDtoImplCopyWith<_$ReminderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
