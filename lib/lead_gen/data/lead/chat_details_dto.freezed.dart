// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatDetailsDto _$ChatDetailsDtoFromJson(Map<String, dynamic> json) {
  return _ChatDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$ChatDetailsDto {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ChatDetailsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatDetailsDtoCopyWith<ChatDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailsDtoCopyWith<$Res> {
  factory $ChatDetailsDtoCopyWith(
          ChatDetailsDto value, $Res Function(ChatDetailsDto) then) =
      _$ChatDetailsDtoCopyWithImpl<$Res, ChatDetailsDto>;
  @useResult
  $Res call({String? createdAt, String? message, String? name});
}

/// @nodoc
class _$ChatDetailsDtoCopyWithImpl<$Res, $Val extends ChatDetailsDto>
    implements $ChatDetailsDtoCopyWith<$Res> {
  _$ChatDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatDetailsDtoImplCopyWith<$Res>
    implements $ChatDetailsDtoCopyWith<$Res> {
  factory _$$ChatDetailsDtoImplCopyWith(_$ChatDetailsDtoImpl value,
          $Res Function(_$ChatDetailsDtoImpl) then) =
      __$$ChatDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? createdAt, String? message, String? name});
}

/// @nodoc
class __$$ChatDetailsDtoImplCopyWithImpl<$Res>
    extends _$ChatDetailsDtoCopyWithImpl<$Res, _$ChatDetailsDtoImpl>
    implements _$$ChatDetailsDtoImplCopyWith<$Res> {
  __$$ChatDetailsDtoImplCopyWithImpl(
      _$ChatDetailsDtoImpl _value, $Res Function(_$ChatDetailsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ChatDetailsDtoImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatDetailsDtoImpl extends _ChatDetailsDto {
  const _$ChatDetailsDtoImpl({this.createdAt, this.message, this.name})
      : super._();

  factory _$ChatDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatDetailsDtoImplFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? message;
  @override
  final String? name;

  @override
  String toString() {
    return 'ChatDetailsDto(createdAt: $createdAt, message: $message, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailsDtoImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, message, name);

  /// Create a copy of ChatDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailsDtoImplCopyWith<_$ChatDetailsDtoImpl> get copyWith =>
      __$$ChatDetailsDtoImplCopyWithImpl<_$ChatDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _ChatDetailsDto extends ChatDetailsDto {
  const factory _ChatDetailsDto(
      {final String? createdAt,
      final String? message,
      final String? name}) = _$ChatDetailsDtoImpl;
  const _ChatDetailsDto._() : super._();

  factory _ChatDetailsDto.fromJson(Map<String, dynamic> json) =
      _$ChatDetailsDtoImpl.fromJson;

  @override
  String? get createdAt;
  @override
  String? get message;
  @override
  String? get name;

  /// Create a copy of ChatDetailsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatDetailsDtoImplCopyWith<_$ChatDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
