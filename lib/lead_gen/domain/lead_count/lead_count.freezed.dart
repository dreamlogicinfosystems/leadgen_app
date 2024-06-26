// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LeadCount {
  int? get totalLeads => throw _privateConstructorUsedError;
  int? get dueLeads => throw _privateConstructorUsedError;
  int? get upcomingLeads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadCountCopyWith<LeadCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadCountCopyWith<$Res> {
  factory $LeadCountCopyWith(LeadCount value, $Res Function(LeadCount) then) =
      _$LeadCountCopyWithImpl<$Res, LeadCount>;
  @useResult
  $Res call({int? totalLeads, int? dueLeads, int? upcomingLeads});
}

/// @nodoc
class _$LeadCountCopyWithImpl<$Res, $Val extends LeadCount>
    implements $LeadCountCopyWith<$Res> {
  _$LeadCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$LeadCountImplCopyWith<$Res>
    implements $LeadCountCopyWith<$Res> {
  factory _$$LeadCountImplCopyWith(
          _$LeadCountImpl value, $Res Function(_$LeadCountImpl) then) =
      __$$LeadCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalLeads, int? dueLeads, int? upcomingLeads});
}

/// @nodoc
class __$$LeadCountImplCopyWithImpl<$Res>
    extends _$LeadCountCopyWithImpl<$Res, _$LeadCountImpl>
    implements _$$LeadCountImplCopyWith<$Res> {
  __$$LeadCountImplCopyWithImpl(
      _$LeadCountImpl _value, $Res Function(_$LeadCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalLeads = freezed,
    Object? dueLeads = freezed,
    Object? upcomingLeads = freezed,
  }) {
    return _then(_$LeadCountImpl(
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

class _$LeadCountImpl implements _LeadCount {
  const _$LeadCountImpl({this.totalLeads, this.dueLeads, this.upcomingLeads});

  @override
  final int? totalLeads;
  @override
  final int? dueLeads;
  @override
  final int? upcomingLeads;

  @override
  String toString() {
    return 'LeadCount(totalLeads: $totalLeads, dueLeads: $dueLeads, upcomingLeads: $upcomingLeads)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadCountImpl &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadCountImplCopyWith<_$LeadCountImpl> get copyWith =>
      __$$LeadCountImplCopyWithImpl<_$LeadCountImpl>(this, _$identity);
}

abstract class _LeadCount implements LeadCount {
  const factory _LeadCount(
      {final int? totalLeads,
      final int? dueLeads,
      final int? upcomingLeads}) = _$LeadCountImpl;

  @override
  int? get totalLeads;
  @override
  int? get dueLeads;
  @override
  int? get upcomingLeads;
  @override
  @JsonKey(ignore: true)
  _$$LeadCountImplCopyWith<_$LeadCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
