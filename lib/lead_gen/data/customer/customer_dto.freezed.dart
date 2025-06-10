// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomerDto _$CustomerDtoFromJson(Map<String, dynamic> json) {
  return _CustomerDto.fromJson(json);
}

/// @nodoc
mixin _$CustomerDto {
  int? get custId => throw _privateConstructorUsedError;
  String? get custName => throw _privateConstructorUsedError;
  String? get custPhone => throw _privateConstructorUsedError;
  String? get custEmail => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this CustomerDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomerDtoCopyWith<CustomerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDtoCopyWith<$Res> {
  factory $CustomerDtoCopyWith(
          CustomerDto value, $Res Function(CustomerDto) then) =
      _$CustomerDtoCopyWithImpl<$Res, CustomerDto>;
  @useResult
  $Res call(
      {int? custId,
      String? custName,
      String? custPhone,
      String? custEmail,
      String? date});
}

/// @nodoc
class _$CustomerDtoCopyWithImpl<$Res, $Val extends CustomerDto>
    implements $CustomerDtoCopyWith<$Res> {
  _$CustomerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = freezed,
    Object? custName = freezed,
    Object? custPhone = freezed,
    Object? custEmail = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      custId: freezed == custId
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as int?,
      custName: freezed == custName
          ? _value.custName
          : custName // ignore: cast_nullable_to_non_nullable
              as String?,
      custPhone: freezed == custPhone
          ? _value.custPhone
          : custPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      custEmail: freezed == custEmail
          ? _value.custEmail
          : custEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerDtoImplCopyWith<$Res>
    implements $CustomerDtoCopyWith<$Res> {
  factory _$$CustomerDtoImplCopyWith(
          _$CustomerDtoImpl value, $Res Function(_$CustomerDtoImpl) then) =
      __$$CustomerDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? custId,
      String? custName,
      String? custPhone,
      String? custEmail,
      String? date});
}

/// @nodoc
class __$$CustomerDtoImplCopyWithImpl<$Res>
    extends _$CustomerDtoCopyWithImpl<$Res, _$CustomerDtoImpl>
    implements _$$CustomerDtoImplCopyWith<$Res> {
  __$$CustomerDtoImplCopyWithImpl(
      _$CustomerDtoImpl _value, $Res Function(_$CustomerDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = freezed,
    Object? custName = freezed,
    Object? custPhone = freezed,
    Object? custEmail = freezed,
    Object? date = freezed,
  }) {
    return _then(_$CustomerDtoImpl(
      custId: freezed == custId
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as int?,
      custName: freezed == custName
          ? _value.custName
          : custName // ignore: cast_nullable_to_non_nullable
              as String?,
      custPhone: freezed == custPhone
          ? _value.custPhone
          : custPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      custEmail: freezed == custEmail
          ? _value.custEmail
          : custEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerDtoImpl extends _CustomerDto {
  const _$CustomerDtoImpl(
      {this.custId, this.custName, this.custPhone, this.custEmail, this.date})
      : super._();

  factory _$CustomerDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerDtoImplFromJson(json);

  @override
  final int? custId;
  @override
  final String? custName;
  @override
  final String? custPhone;
  @override
  final String? custEmail;
  @override
  final String? date;

  @override
  String toString() {
    return 'CustomerDto(custId: $custId, custName: $custName, custPhone: $custPhone, custEmail: $custEmail, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerDtoImpl &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.custName, custName) ||
                other.custName == custName) &&
            (identical(other.custPhone, custPhone) ||
                other.custPhone == custPhone) &&
            (identical(other.custEmail, custEmail) ||
                other.custEmail == custEmail) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, custId, custName, custPhone, custEmail, date);

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerDtoImplCopyWith<_$CustomerDtoImpl> get copyWith =>
      __$$CustomerDtoImplCopyWithImpl<_$CustomerDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerDtoImplToJson(
      this,
    );
  }
}

abstract class _CustomerDto extends CustomerDto {
  const factory _CustomerDto(
      {final int? custId,
      final String? custName,
      final String? custPhone,
      final String? custEmail,
      final String? date}) = _$CustomerDtoImpl;
  const _CustomerDto._() : super._();

  factory _CustomerDto.fromJson(Map<String, dynamic> json) =
      _$CustomerDtoImpl.fromJson;

  @override
  int? get custId;
  @override
  String? get custName;
  @override
  String? get custPhone;
  @override
  String? get custEmail;
  @override
  String? get date;

  /// Create a copy of CustomerDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomerDtoImplCopyWith<_$CustomerDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
