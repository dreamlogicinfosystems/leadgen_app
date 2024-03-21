// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatDetails {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatDetailsCopyWith<ChatDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatDetailsCopyWith<$Res> {
  factory $ChatDetailsCopyWith(
          ChatDetails value, $Res Function(ChatDetails) then) =
      _$ChatDetailsCopyWithImpl<$Res, ChatDetails>;
  @useResult
  $Res call({String? createdAt, String? message, String? name});
}

/// @nodoc
class _$ChatDetailsCopyWithImpl<$Res, $Val extends ChatDetails>
    implements $ChatDetailsCopyWith<$Res> {
  _$ChatDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$ChatDetailsImplCopyWith<$Res>
    implements $ChatDetailsCopyWith<$Res> {
  factory _$$ChatDetailsImplCopyWith(
          _$ChatDetailsImpl value, $Res Function(_$ChatDetailsImpl) then) =
      __$$ChatDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? createdAt, String? message, String? name});
}

/// @nodoc
class __$$ChatDetailsImplCopyWithImpl<$Res>
    extends _$ChatDetailsCopyWithImpl<$Res, _$ChatDetailsImpl>
    implements _$$ChatDetailsImplCopyWith<$Res> {
  __$$ChatDetailsImplCopyWithImpl(
      _$ChatDetailsImpl _value, $Res Function(_$ChatDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ChatDetailsImpl(
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

class _$ChatDetailsImpl implements _ChatDetails {
  const _$ChatDetailsImpl({this.createdAt, this.message, this.name});

  @override
  final String? createdAt;
  @override
  final String? message;
  @override
  final String? name;

  @override
  String toString() {
    return 'ChatDetails(createdAt: $createdAt, message: $message, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatDetailsImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, message, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatDetailsImplCopyWith<_$ChatDetailsImpl> get copyWith =>
      __$$ChatDetailsImplCopyWithImpl<_$ChatDetailsImpl>(this, _$identity);
}

abstract class _ChatDetails implements ChatDetails {
  const factory _ChatDetails(
      {final String? createdAt,
      final String? message,
      final String? name}) = _$ChatDetailsImpl;

  @override
  String? get createdAt;
  @override
  String? get message;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ChatDetailsImplCopyWith<_$ChatDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
