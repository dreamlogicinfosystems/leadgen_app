// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LeadDto _$LeadDtoFromJson(Map<String, dynamic> json) {
  return _LeadDto.fromJson(json);
}

/// @nodoc
mixin _$LeadDto {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<int>? get departmentIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeadDtoCopyWith<LeadDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadDtoCopyWith<$Res> {
  factory $LeadDtoCopyWith(LeadDto value, $Res Function(LeadDto) then) =
      _$LeadDtoCopyWithImpl<$Res, LeadDto>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? message,
      List<int>? departmentIds});
}

/// @nodoc
class _$LeadDtoCopyWithImpl<$Res, $Val extends LeadDto>
    implements $LeadDtoCopyWith<$Res> {
  _$LeadDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? message = freezed,
    Object? departmentIds = freezed,
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
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentIds: freezed == departmentIds
          ? _value.departmentIds
          : departmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadDtoImplCopyWith<$Res> implements $LeadDtoCopyWith<$Res> {
  factory _$$LeadDtoImplCopyWith(
          _$LeadDtoImpl value, $Res Function(_$LeadDtoImpl) then) =
      __$$LeadDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? message,
      List<int>? departmentIds});
}

/// @nodoc
class __$$LeadDtoImplCopyWithImpl<$Res>
    extends _$LeadDtoCopyWithImpl<$Res, _$LeadDtoImpl>
    implements _$$LeadDtoImplCopyWith<$Res> {
  __$$LeadDtoImplCopyWithImpl(
      _$LeadDtoImpl _value, $Res Function(_$LeadDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? message = freezed,
    Object? departmentIds = freezed,
  }) {
    return _then(_$LeadDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentIds: freezed == departmentIds
          ? _value._departmentIds
          : departmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeadDtoImpl extends _LeadDto {
  const _$LeadDtoImpl(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.message,
      final List<int>? departmentIds})
      : _departmentIds = departmentIds,
        super._();

  factory _$LeadDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeadDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? message;
  final List<int>? _departmentIds;
  @override
  List<int>? get departmentIds {
    final value = _departmentIds;
    if (value == null) return null;
    if (_departmentIds is EqualUnmodifiableListView) return _departmentIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LeadDto(id: $id, name: $name, phone: $phone, email: $email, message: $message, departmentIds: $departmentIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._departmentIds, _departmentIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, message,
      const DeepCollectionEquality().hash(_departmentIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadDtoImplCopyWith<_$LeadDtoImpl> get copyWith =>
      __$$LeadDtoImplCopyWithImpl<_$LeadDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeadDtoImplToJson(
      this,
    );
  }
}

abstract class _LeadDto extends LeadDto {
  const factory _LeadDto(
      {final int? id,
      final String? name,
      final String? phone,
      final String? email,
      final String? message,
      final List<int>? departmentIds}) = _$LeadDtoImpl;
  const _LeadDto._() : super._();

  factory _LeadDto.fromJson(Map<String, dynamic> json) = _$LeadDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get message;
  @override
  List<int>? get departmentIds;
  @override
  @JsonKey(ignore: true)
  _$$LeadDtoImplCopyWith<_$LeadDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
