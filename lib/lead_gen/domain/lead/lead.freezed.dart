// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lead.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Lead {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  List<int>? get departmentIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LeadCopyWith<Lead> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeadCopyWith<$Res> {
  factory $LeadCopyWith(Lead value, $Res Function(Lead) then) =
      _$LeadCopyWithImpl<$Res, Lead>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? message,
      String? createdAt,
      List<int>? departmentIds});
}

/// @nodoc
class _$LeadCopyWithImpl<$Res, $Val extends Lead>
    implements $LeadCopyWith<$Res> {
  _$LeadCopyWithImpl(this._value, this._then);

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
    Object? createdAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentIds: freezed == departmentIds
          ? _value.departmentIds
          : departmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeadImplCopyWith<$Res> implements $LeadCopyWith<$Res> {
  factory _$$LeadImplCopyWith(
          _$LeadImpl value, $Res Function(_$LeadImpl) then) =
      __$$LeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? message,
      String? createdAt,
      List<int>? departmentIds});
}

/// @nodoc
class __$$LeadImplCopyWithImpl<$Res>
    extends _$LeadCopyWithImpl<$Res, _$LeadImpl>
    implements _$$LeadImplCopyWith<$Res> {
  __$$LeadImplCopyWithImpl(_$LeadImpl _value, $Res Function(_$LeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? message = freezed,
    Object? createdAt = freezed,
    Object? departmentIds = freezed,
  }) {
    return _then(_$LeadImpl(
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      departmentIds: freezed == departmentIds
          ? _value._departmentIds
          : departmentIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$LeadImpl implements _Lead {
  const _$LeadImpl(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.message,
      this.createdAt,
      final List<int>? departmentIds})
      : _departmentIds = departmentIds;

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
  @override
  final String? createdAt;
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
    return 'Lead(id: $id, name: $name, phone: $phone, email: $email, message: $message, createdAt: $createdAt, departmentIds: $departmentIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._departmentIds, _departmentIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, message,
      createdAt, const DeepCollectionEquality().hash(_departmentIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      __$$LeadImplCopyWithImpl<_$LeadImpl>(this, _$identity);
}

abstract class _Lead implements Lead {
  const factory _Lead(
      {final int? id,
      final String? name,
      final String? phone,
      final String? email,
      final String? message,
      final String? createdAt,
      final List<int>? departmentIds}) = _$LeadImpl;

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
  String? get createdAt;
  @override
  List<int>? get departmentIds;
  @override
  @JsonKey(ignore: true)
  _$$LeadImplCopyWith<_$LeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
