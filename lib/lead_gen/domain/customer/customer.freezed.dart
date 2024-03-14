// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Customer {
  int? get custId => throw _privateConstructorUsedError;
  String? get custName => throw _privateConstructorUsedError;
  String? get custPhone => throw _privateConstructorUsedError;
  String? get custEmail => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res, Customer>;
  @useResult
  $Res call(
      {int? custId,
      String? custName,
      String? custPhone,
      String? custEmail,
      String? date});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res, $Val extends Customer>
    implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$CustomerImplCopyWith<$Res>
    implements $CustomerCopyWith<$Res> {
  factory _$$CustomerImplCopyWith(
          _$CustomerImpl value, $Res Function(_$CustomerImpl) then) =
      __$$CustomerImplCopyWithImpl<$Res>;
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
class __$$CustomerImplCopyWithImpl<$Res>
    extends _$CustomerCopyWithImpl<$Res, _$CustomerImpl>
    implements _$$CustomerImplCopyWith<$Res> {
  __$$CustomerImplCopyWithImpl(
      _$CustomerImpl _value, $Res Function(_$CustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = freezed,
    Object? custName = freezed,
    Object? custPhone = freezed,
    Object? custEmail = freezed,
    Object? date = freezed,
  }) {
    return _then(_$CustomerImpl(
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

class _$CustomerImpl implements _Customer {
  const _$CustomerImpl(
      {this.custId, this.custName, this.custPhone, this.custEmail, this.date});

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
    return 'Customer(custId: $custId, custName: $custName, custPhone: $custPhone, custEmail: $custEmail, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerImpl &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.custName, custName) ||
                other.custName == custName) &&
            (identical(other.custPhone, custPhone) ||
                other.custPhone == custPhone) &&
            (identical(other.custEmail, custEmail) ||
                other.custEmail == custEmail) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, custId, custName, custPhone, custEmail, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      __$$CustomerImplCopyWithImpl<_$CustomerImpl>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {final int? custId,
      final String? custName,
      final String? custPhone,
      final String? custEmail,
      final String? date}) = _$CustomerImpl;

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
  @override
  @JsonKey(ignore: true)
  _$$CustomerImplCopyWith<_$CustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
