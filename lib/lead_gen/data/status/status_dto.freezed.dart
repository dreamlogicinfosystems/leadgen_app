// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatusDto _$StatusDtoFromJson(Map<String, dynamic> json) {
  return _StatusDto.fromJson(json);
}

/// @nodoc
mixin _$StatusDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this StatusDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusDtoCopyWith<StatusDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusDtoCopyWith<$Res> {
  factory $StatusDtoCopyWith(StatusDto value, $Res Function(StatusDto) then) =
      _$StatusDtoCopyWithImpl<$Res, StatusDto>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$StatusDtoCopyWithImpl<$Res, $Val extends StatusDto>
    implements $StatusDtoCopyWith<$Res> {
  _$StatusDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusDtoImplCopyWith<$Res>
    implements $StatusDtoCopyWith<$Res> {
  factory _$$StatusDtoImplCopyWith(
          _$StatusDtoImpl value, $Res Function(_$StatusDtoImpl) then) =
      __$$StatusDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$StatusDtoImplCopyWithImpl<$Res>
    extends _$StatusDtoCopyWithImpl<$Res, _$StatusDtoImpl>
    implements _$$StatusDtoImplCopyWith<$Res> {
  __$$StatusDtoImplCopyWithImpl(
      _$StatusDtoImpl _value, $Res Function(_$StatusDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$StatusDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusDtoImpl extends _StatusDto {
  const _$StatusDtoImpl({this.id, this.name}) : super._();

  factory _$StatusDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'StatusDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of StatusDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusDtoImplCopyWith<_$StatusDtoImpl> get copyWith =>
      __$$StatusDtoImplCopyWithImpl<_$StatusDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusDtoImplToJson(
      this,
    );
  }
}

abstract class _StatusDto extends StatusDto {
  const factory _StatusDto({final int? id, final String? name}) =
      _$StatusDtoImpl;
  const _StatusDto._() : super._();

  factory _StatusDto.fromJson(Map<String, dynamic> json) =
      _$StatusDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of StatusDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusDtoImplCopyWith<_$StatusDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
