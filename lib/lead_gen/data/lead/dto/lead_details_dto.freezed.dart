// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadDetailsDto _$LeadDetailsDtoFromJson(Map<String, dynamic> json) {
  return _LeadDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$LeadDetailsDto {
  @JsonKey(name: "customer_name")
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: "requirement")
  String? get requirement => throw _privateConstructorUsedError;

  /// Serializes this LeadDetailsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeadDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadDetailsDtoCopyWith<LeadDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadDetailsDtoCopyWith<$Res> {
  factory $LeadDetailsDtoCopyWith(
          LeadDetailsDto value, $Res Function(LeadDetailsDto) then) =
      _$LeadDetailsDtoCopyWithImpl<$Res, LeadDetailsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "requirement") String? requirement});
}

/// @nodoc
class _$LeadDetailsDtoCopyWithImpl<$Res, $Val extends LeadDetailsDto>
    implements $LeadDetailsDtoCopyWith<$Res> {
  _$LeadDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? requirement = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadDetailsDtoImplCopyWith<$Res>
    implements $LeadDetailsDtoCopyWith<$Res> {
  factory _$$LeadDetailsDtoImplCopyWith(_$LeadDetailsDtoImpl value,
          $Res Function(_$LeadDetailsDtoImpl) then) =
      __$$LeadDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "customer_name") String? customerName,
      @JsonKey(name: "requirement") String? requirement});
}

/// @nodoc
class __$$LeadDetailsDtoImplCopyWithImpl<$Res>
    extends _$LeadDetailsDtoCopyWithImpl<$Res, _$LeadDetailsDtoImpl>
    implements _$$LeadDetailsDtoImplCopyWith<$Res> {
  __$$LeadDetailsDtoImplCopyWithImpl(
      _$LeadDetailsDtoImpl _value, $Res Function(_$LeadDetailsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? requirement = freezed,
  }) {
    return _then(_$LeadDetailsDtoImpl(
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadDetailsDtoImpl extends _LeadDetailsDto {
  const _$LeadDetailsDtoImpl(
      {@JsonKey(name: "customer_name") this.customerName,
      @JsonKey(name: "requirement") this.requirement})
      : super._();

  factory _$LeadDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadDetailsDtoImplFromJson(json);

  @override
  @JsonKey(name: "customer_name")
  final String? customerName;
  @override
  @JsonKey(name: "requirement")
  final String? requirement;

  @override
  String toString() {
    return 'LeadDetailsDto(customerName: $customerName, requirement: $requirement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadDetailsDtoImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, customerName, requirement);

  /// Create a copy of LeadDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadDetailsDtoImplCopyWith<_$LeadDetailsDtoImpl> get copyWith =>
      __$$LeadDetailsDtoImplCopyWithImpl<_$LeadDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _LeadDetailsDto extends LeadDetailsDto {
  const factory _LeadDetailsDto(
          {@JsonKey(name: "customer_name") final String? customerName,
          @JsonKey(name: "requirement") final String? requirement}) =
      _$LeadDetailsDtoImpl;
  const _LeadDetailsDto._() : super._();

  factory _LeadDetailsDto.fromJson(Map<String, dynamic> json) =
      _$LeadDetailsDtoImpl.fromJson;

  @override
  @JsonKey(name: "customer_name")
  String? get customerName;
  @override
  @JsonKey(name: "requirement")
  String? get requirement;

  /// Create a copy of LeadDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadDetailsDtoImplCopyWith<_$LeadDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
