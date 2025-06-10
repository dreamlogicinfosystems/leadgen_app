// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadCountDto {
  int? get totalLeads => throw _privateConstructorUsedError;
  int? get dueLeads => throw _privateConstructorUsedError;
  int? get upcomingLeads => throw _privateConstructorUsedError;

  /// Create a copy of LeadCountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeadCountDtoCopyWith<LeadCountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadCountDtoCopyWith<$Res> {
  factory $LeadCountDtoCopyWith(
          LeadCountDto value, $Res Function(LeadCountDto) then) =
      _$LeadCountDtoCopyWithImpl<$Res, LeadCountDto>;
  @useResult
  $Res call({int? totalLeads, int? dueLeads, int? upcomingLeads});
}

/// @nodoc
class _$LeadCountDtoCopyWithImpl<$Res, $Val extends LeadCountDto>
    implements $LeadCountDtoCopyWith<$Res> {
  _$LeadCountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeadCountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLeads = freezed,
    Object? dueLeads = freezed,
    Object? upcomingLeads = freezed,
  }) {
    return _then(_value.copyWith(
      totalLeads: freezed == totalLeads
          ? _value.totalLeads
          : totalLeads // ignore: cast_nullable_to_non_nullable
              as int?,
      dueLeads: freezed == dueLeads
          ? _value.dueLeads
          : dueLeads // ignore: cast_nullable_to_non_nullable
              as int?,
      upcomingLeads: freezed == upcomingLeads
          ? _value.upcomingLeads
          : upcomingLeads // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadCountDtoImplCopyWith<$Res>
    implements $LeadCountDtoCopyWith<$Res> {
  factory _$$LeadCountDtoImplCopyWith(
          _$LeadCountDtoImpl value, $Res Function(_$LeadCountDtoImpl) then) =
      __$$LeadCountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalLeads, int? dueLeads, int? upcomingLeads});
}

/// @nodoc
class __$$LeadCountDtoImplCopyWithImpl<$Res>
    extends _$LeadCountDtoCopyWithImpl<$Res, _$LeadCountDtoImpl>
    implements _$$LeadCountDtoImplCopyWith<$Res> {
  __$$LeadCountDtoImplCopyWithImpl(
      _$LeadCountDtoImpl _value, $Res Function(_$LeadCountDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LeadCountDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLeads = freezed,
    Object? dueLeads = freezed,
    Object? upcomingLeads = freezed,
  }) {
    return _then(_$LeadCountDtoImpl(
      totalLeads: freezed == totalLeads
          ? _value.totalLeads
          : totalLeads // ignore: cast_nullable_to_non_nullable
              as int?,
      dueLeads: freezed == dueLeads
          ? _value.dueLeads
          : dueLeads // ignore: cast_nullable_to_non_nullable
              as int?,
      upcomingLeads: freezed == upcomingLeads
          ? _value.upcomingLeads
          : upcomingLeads // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LeadCountDtoImpl extends _LeadCountDto {
  const _$LeadCountDtoImpl({this.totalLeads, this.dueLeads, this.upcomingLeads})
      : super._();

  @override
  final int? totalLeads;
  @override
  final int? dueLeads;
  @override
  final int? upcomingLeads;

  @override
  String toString() {
    return 'LeadCountDto(totalLeads: $totalLeads, dueLeads: $dueLeads, upcomingLeads: $upcomingLeads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadCountDtoImpl &&
            (identical(other.totalLeads, totalLeads) ||
                other.totalLeads == totalLeads) &&
            (identical(other.dueLeads, dueLeads) ||
                other.dueLeads == dueLeads) &&
            (identical(other.upcomingLeads, upcomingLeads) ||
                other.upcomingLeads == upcomingLeads));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, totalLeads, dueLeads, upcomingLeads);

  /// Create a copy of LeadCountDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadCountDtoImplCopyWith<_$LeadCountDtoImpl> get copyWith =>
      __$$LeadCountDtoImplCopyWithImpl<_$LeadCountDtoImpl>(this, _$identity);
}

abstract class _LeadCountDto extends LeadCountDto {
  const factory _LeadCountDto(
      {final int? totalLeads,
      final int? dueLeads,
      final int? upcomingLeads}) = _$LeadCountDtoImpl;
  const _LeadCountDto._() : super._();

  @override
  int? get totalLeads;
  @override
  int? get dueLeads;
  @override
  int? get upcomingLeads;

  /// Create a copy of LeadCountDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeadCountDtoImplCopyWith<_$LeadCountDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
