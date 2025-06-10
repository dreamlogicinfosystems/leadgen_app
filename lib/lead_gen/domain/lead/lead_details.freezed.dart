// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadDetails {
  String? get customerName => throw _privateConstructorUsedError;
  String? get requirement => throw _privateConstructorUsedError;

  /// Create a copy of LeadDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadDetailsCopyWith<LeadDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadDetailsCopyWith<$Res> {
  factory $LeadDetailsCopyWith(
          LeadDetails value, $Res Function(LeadDetails) then) =
      _$LeadDetailsCopyWithImpl<$Res, LeadDetails>;
  @useResult
  $Res call({String? customerName, String? requirement});
}

/// @nodoc
class _$LeadDetailsCopyWithImpl<$Res, $Val extends LeadDetails>
    implements $LeadDetailsCopyWith<$Res> {
  _$LeadDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadDetails
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
abstract class _$$LeadDetailsImplCopyWith<$Res>
    implements $LeadDetailsCopyWith<$Res> {
  factory _$$LeadDetailsImplCopyWith(
          _$LeadDetailsImpl value, $Res Function(_$LeadDetailsImpl) then) =
      __$$LeadDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? customerName, String? requirement});
}

/// @nodoc
class __$$LeadDetailsImplCopyWithImpl<$Res>
    extends _$LeadDetailsCopyWithImpl<$Res, _$LeadDetailsImpl>
    implements _$$LeadDetailsImplCopyWith<$Res> {
  __$$LeadDetailsImplCopyWithImpl(
      _$LeadDetailsImpl _value, $Res Function(_$LeadDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = freezed,
    Object? requirement = freezed,
  }) {
    return _then(_$LeadDetailsImpl(
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

class _$LeadDetailsImpl implements _LeadDetails {
  const _$LeadDetailsImpl({this.customerName, this.requirement});

  @override
  final String? customerName;
  @override
  final String? requirement;

  @override
  String toString() {
    return 'LeadDetails(customerName: $customerName, requirement: $requirement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadDetailsImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerName, requirement);

  /// Create a copy of LeadDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadDetailsImplCopyWith<_$LeadDetailsImpl> get copyWith =>
      __$$LeadDetailsImplCopyWithImpl<_$LeadDetailsImpl>(this, _$identity);
}

abstract class _LeadDetails implements LeadDetails {
  const factory _LeadDetails(
      {final String? customerName,
      final String? requirement}) = _$LeadDetailsImpl;

  @override
  String? get customerName;
  @override
  String? get requirement;

  /// Create a copy of LeadDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadDetailsImplCopyWith<_$LeadDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
