// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'maintenance_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MaintenanceDto _$MaintenanceDtoFromJson(Map<String, dynamic> json) {
  return _MaintenanceDto.fromJson(json);
}

/// @nodoc
mixin _$MaintenanceDto {
  int? get id => throw _privateConstructorUsedError;
  int? get isEnabled => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get isCompulsory => throw _privateConstructorUsedError;
  int? get minAndroidVersion => throw _privateConstructorUsedError;
  int? get minIosVersion => throw _privateConstructorUsedError;

  /// Serializes this MaintenanceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MaintenanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MaintenanceDtoCopyWith<MaintenanceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaintenanceDtoCopyWith<$Res> {
  factory $MaintenanceDtoCopyWith(
          MaintenanceDto value, $Res Function(MaintenanceDto) then) =
      _$MaintenanceDtoCopyWithImpl<$Res, MaintenanceDto>;
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
class _$MaintenanceDtoCopyWithImpl<$Res, $Val extends MaintenanceDto>
    implements $MaintenanceDtoCopyWith<$Res> {
  _$MaintenanceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaintenanceDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MaintenanceDtoImplCopyWith<$Res>
    implements $MaintenanceDtoCopyWith<$Res> {
  factory _$$MaintenanceDtoImplCopyWith(_$MaintenanceDtoImpl value,
          $Res Function(_$MaintenanceDtoImpl) then) =
      __$$MaintenanceDtoImplCopyWithImpl<$Res>;
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
class __$$MaintenanceDtoImplCopyWithImpl<$Res>
    extends _$MaintenanceDtoCopyWithImpl<$Res, _$MaintenanceDtoImpl>
    implements _$$MaintenanceDtoImplCopyWith<$Res> {
  __$$MaintenanceDtoImplCopyWithImpl(
      _$MaintenanceDtoImpl _value, $Res Function(_$MaintenanceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaintenanceDto
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$MaintenanceDtoImpl(
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
@JsonSerializable()
class _$MaintenanceDtoImpl extends _MaintenanceDto {
  const _$MaintenanceDtoImpl(
      {this.id,
      this.isEnabled,
      this.message,
      this.isCompulsory,
      this.minAndroidVersion,
      this.minIosVersion})
      : super._();

  factory _$MaintenanceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaintenanceDtoImplFromJson(json);

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
    return 'MaintenanceDto(id: $id, isEnabled: $isEnabled, message: $message, isCompulsory: $isCompulsory, minAndroidVersion: $minAndroidVersion, minIosVersion: $minIosVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaintenanceDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, isEnabled, message,
      isCompulsory, minAndroidVersion, minIosVersion);

  /// Create a copy of MaintenanceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaintenanceDtoImplCopyWith<_$MaintenanceDtoImpl> get copyWith =>
      __$$MaintenanceDtoImplCopyWithImpl<_$MaintenanceDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MaintenanceDtoImplToJson(
      this,
    );
  }
}

abstract class _MaintenanceDto extends MaintenanceDto {
  const factory _MaintenanceDto(
      {final int? id,
      final int? isEnabled,
      final String? message,
      final int? isCompulsory,
      final int? minAndroidVersion,
      final int? minIosVersion}) = _$MaintenanceDtoImpl;
  const _MaintenanceDto._() : super._();

  factory _MaintenanceDto.fromJson(Map<String, dynamic> json) =
      _$MaintenanceDtoImpl.fromJson;

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

  /// Create a copy of MaintenanceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaintenanceDtoImplCopyWith<_$MaintenanceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
