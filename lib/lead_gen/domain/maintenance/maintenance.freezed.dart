// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Maintenance {
  int? get id => throw _privateConstructorUsedError;
  int? get isEnabled => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get isCompulsory => throw _privateConstructorUsedError;
  int? get minAndroidVersion => throw _privateConstructorUsedError;
  int? get minIosVersion => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MaintenanceCopyWith<Maintenance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceCopyWith<$Res> {
  factory $MaintenanceCopyWith(
          Maintenance value, $Res Function(Maintenance) then) =
      _$MaintenanceCopyWithImpl<$Res, Maintenance>;
  @useResult
  $Res call(
      {int? id,
      int? isEnabled,
      String? message,
      int? isCompulsory,
      int? minAndroidVersion,
      int? minIosVersion});
}

/// @nodoc
class _$MaintenanceCopyWithImpl<$Res, $Val extends Maintenance>
    implements $MaintenanceCopyWith<$Res> {
  _$MaintenanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isEnabled = freezed,
    Object? message = freezed,
    Object? isCompulsory = freezed,
    Object? minAndroidVersion = freezed,
    Object? minIosVersion = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompulsory: freezed == isCompulsory
          ? _value.isCompulsory
          : isCompulsory // ignore: cast_nullable_to_non_nullable
              as int?,
      minAndroidVersion: freezed == minAndroidVersion
          ? _value.minAndroidVersion
          : minAndroidVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      minIosVersion: freezed == minIosVersion
          ? _value.minIosVersion
          : minIosVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MaintenanceImplCopyWith<$Res>
    implements $MaintenanceCopyWith<$Res> {
  factory _$$MaintenanceImplCopyWith(
          _$MaintenanceImpl value, $Res Function(_$MaintenanceImpl) then) =
      __$$MaintenanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? isEnabled,
      String? message,
      int? isCompulsory,
      int? minAndroidVersion,
      int? minIosVersion});
}

/// @nodoc
class __$$MaintenanceImplCopyWithImpl<$Res>
    extends _$MaintenanceCopyWithImpl<$Res, _$MaintenanceImpl>
    implements _$$MaintenanceImplCopyWith<$Res> {
  __$$MaintenanceImplCopyWithImpl(
      _$MaintenanceImpl _value, $Res Function(_$MaintenanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? isEnabled = freezed,
    Object? message = freezed,
    Object? isCompulsory = freezed,
    Object? minAndroidVersion = freezed,
    Object? minIosVersion = freezed,
  }) {
    return _then(_$MaintenanceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isEnabled: freezed == isEnabled
          ? _value.isEnabled
          : isEnabled // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompulsory: freezed == isCompulsory
          ? _value.isCompulsory
          : isCompulsory // ignore: cast_nullable_to_non_nullable
              as int?,
      minAndroidVersion: freezed == minAndroidVersion
          ? _value.minAndroidVersion
          : minAndroidVersion // ignore: cast_nullable_to_non_nullable
              as int?,
      minIosVersion: freezed == minIosVersion
          ? _value.minIosVersion
          : minIosVersion // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$MaintenanceImpl implements _Maintenance {
  const _$MaintenanceImpl(
      {this.id,
      this.isEnabled,
      this.message,
      this.isCompulsory,
      this.minAndroidVersion,
      this.minIosVersion});

  @override
  final int? id;
  @override
  final int? isEnabled;
  @override
  final String? message;
  @override
  final int? isCompulsory;
  @override
  final int? minAndroidVersion;
  @override
  final int? minIosVersion;

  @override
  String toString() {
    return 'Maintenance(id: $id, isEnabled: $isEnabled, message: $message, isCompulsory: $isCompulsory, minAndroidVersion: $minAndroidVersion, minIosVersion: $minIosVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isCompulsory, isCompulsory) ||
                other.isCompulsory == isCompulsory) &&
            (identical(other.minAndroidVersion, minAndroidVersion) ||
                other.minAndroidVersion == minAndroidVersion) &&
            (identical(other.minIosVersion, minIosVersion) ||
                other.minIosVersion == minIosVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, isEnabled, message,
      isCompulsory, minAndroidVersion, minIosVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceImplCopyWith<_$MaintenanceImpl> get copyWith =>
      __$$MaintenanceImplCopyWithImpl<_$MaintenanceImpl>(this, _$identity);
}

abstract class _Maintenance implements Maintenance {
  const factory _Maintenance(
      {final int? id,
      final int? isEnabled,
      final String? message,
      final int? isCompulsory,
      final int? minAndroidVersion,
      final int? minIosVersion}) = _$MaintenanceImpl;

  @override
  int? get id;
  @override
  int? get isEnabled;
  @override
  String? get message;
  @override
  int? get isCompulsory;
  @override
  int? get minAndroidVersion;
  @override
  int? get minIosVersion;
  @override
  @JsonKey(ignore: true)
  _$$MaintenanceImplCopyWith<_$MaintenanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
