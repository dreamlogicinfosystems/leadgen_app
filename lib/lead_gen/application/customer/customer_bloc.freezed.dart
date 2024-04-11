// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getCustomers,
    required TResult Function(int custId, BuildContext context)
        getCustomersLead,
    required TResult Function(String custDetail, BuildContext context)
        searchCustomer,
    required TResult Function(Customer customer, BuildContext context)
        updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getCustomers,
    TResult? Function(int custId, BuildContext context)? getCustomersLead,
    TResult? Function(String custDetail, BuildContext context)? searchCustomer,
    TResult? Function(Customer customer, BuildContext context)? updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getCustomers,
    TResult Function(int custId, BuildContext context)? getCustomersLead,
    TResult Function(String custDetail, BuildContext context)? searchCustomer,
    TResult Function(Customer customer, BuildContext context)? updateCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCustomers value) getCustomers,
    required TResult Function(_getCustomersLead value) getCustomersLead,
    required TResult Function(_searchCustomer value) searchCustomer,
    required TResult Function(_updateCustomer value) updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCustomers value)? getCustomers,
    TResult? Function(_getCustomersLead value)? getCustomersLead,
    TResult? Function(_searchCustomer value)? searchCustomer,
    TResult? Function(_updateCustomer value)? updateCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCustomers value)? getCustomers,
    TResult Function(_getCustomersLead value)? getCustomersLead,
    TResult Function(_searchCustomer value)? searchCustomer,
    TResult Function(_updateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerEventCopyWith<CustomerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getCustomersImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$getCustomersImplCopyWith(
          _$getCustomersImpl value, $Res Function(_$getCustomersImpl) then) =
      __$$getCustomersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$getCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$getCustomersImpl>
    implements _$$getCustomersImplCopyWith<$Res> {
  __$$getCustomersImplCopyWithImpl(
      _$getCustomersImpl _value, $Res Function(_$getCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$getCustomersImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getCustomersImpl implements _getCustomers {
  const _$getCustomersImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CustomerEvent.getCustomers(context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCustomersImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCustomersImplCopyWith<_$getCustomersImpl> get copyWith =>
      __$$getCustomersImplCopyWithImpl<_$getCustomersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getCustomers,
    required TResult Function(int custId, BuildContext context)
        getCustomersLead,
    required TResult Function(String custDetail, BuildContext context)
        searchCustomer,
    required TResult Function(Customer customer, BuildContext context)
        updateCustomer,
  }) {
    return getCustomers(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getCustomers,
    TResult? Function(int custId, BuildContext context)? getCustomersLead,
    TResult? Function(String custDetail, BuildContext context)? searchCustomer,
    TResult? Function(Customer customer, BuildContext context)? updateCustomer,
  }) {
    return getCustomers?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getCustomers,
    TResult Function(int custId, BuildContext context)? getCustomersLead,
    TResult Function(String custDetail, BuildContext context)? searchCustomer,
    TResult Function(Customer customer, BuildContext context)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCustomers value) getCustomers,
    required TResult Function(_getCustomersLead value) getCustomersLead,
    required TResult Function(_searchCustomer value) searchCustomer,
    required TResult Function(_updateCustomer value) updateCustomer,
  }) {
    return getCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCustomers value)? getCustomers,
    TResult? Function(_getCustomersLead value)? getCustomersLead,
    TResult? Function(_searchCustomer value)? searchCustomer,
    TResult? Function(_updateCustomer value)? updateCustomer,
  }) {
    return getCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCustomers value)? getCustomers,
    TResult Function(_getCustomersLead value)? getCustomersLead,
    TResult Function(_searchCustomer value)? searchCustomer,
    TResult Function(_updateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomers != null) {
      return getCustomers(this);
    }
    return orElse();
  }
}

abstract class _getCustomers implements CustomerEvent {
  const factory _getCustomers(final BuildContext context) = _$getCustomersImpl;

  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getCustomersImplCopyWith<_$getCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getCustomersLeadImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$getCustomersLeadImplCopyWith(_$getCustomersLeadImpl value,
          $Res Function(_$getCustomersLeadImpl) then) =
      __$$getCustomersLeadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int custId, BuildContext context});
}

/// @nodoc
class __$$getCustomersLeadImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$getCustomersLeadImpl>
    implements _$$getCustomersLeadImplCopyWith<$Res> {
  __$$getCustomersLeadImplCopyWithImpl(_$getCustomersLeadImpl _value,
      $Res Function(_$getCustomersLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custId = null,
    Object? context = null,
  }) {
    return _then(_$getCustomersLeadImpl(
      null == custId
          ? _value.custId
          : custId // ignore: cast_nullable_to_non_nullable
              as int,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$getCustomersLeadImpl implements _getCustomersLead {
  const _$getCustomersLeadImpl(this.custId, this.context);

  @override
  final int custId;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CustomerEvent.getCustomersLead(custId: $custId, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getCustomersLeadImpl &&
            (identical(other.custId, custId) || other.custId == custId) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, custId, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getCustomersLeadImplCopyWith<_$getCustomersLeadImpl> get copyWith =>
      __$$getCustomersLeadImplCopyWithImpl<_$getCustomersLeadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getCustomers,
    required TResult Function(int custId, BuildContext context)
        getCustomersLead,
    required TResult Function(String custDetail, BuildContext context)
        searchCustomer,
    required TResult Function(Customer customer, BuildContext context)
        updateCustomer,
  }) {
    return getCustomersLead(custId, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getCustomers,
    TResult? Function(int custId, BuildContext context)? getCustomersLead,
    TResult? Function(String custDetail, BuildContext context)? searchCustomer,
    TResult? Function(Customer customer, BuildContext context)? updateCustomer,
  }) {
    return getCustomersLead?.call(custId, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getCustomers,
    TResult Function(int custId, BuildContext context)? getCustomersLead,
    TResult Function(String custDetail, BuildContext context)? searchCustomer,
    TResult Function(Customer customer, BuildContext context)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomersLead != null) {
      return getCustomersLead(custId, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCustomers value) getCustomers,
    required TResult Function(_getCustomersLead value) getCustomersLead,
    required TResult Function(_searchCustomer value) searchCustomer,
    required TResult Function(_updateCustomer value) updateCustomer,
  }) {
    return getCustomersLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCustomers value)? getCustomers,
    TResult? Function(_getCustomersLead value)? getCustomersLead,
    TResult? Function(_searchCustomer value)? searchCustomer,
    TResult? Function(_updateCustomer value)? updateCustomer,
  }) {
    return getCustomersLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCustomers value)? getCustomers,
    TResult Function(_getCustomersLead value)? getCustomersLead,
    TResult Function(_searchCustomer value)? searchCustomer,
    TResult Function(_updateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (getCustomersLead != null) {
      return getCustomersLead(this);
    }
    return orElse();
  }
}

abstract class _getCustomersLead implements CustomerEvent {
  const factory _getCustomersLead(
      final int custId, final BuildContext context) = _$getCustomersLeadImpl;

  int get custId;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$getCustomersLeadImplCopyWith<_$getCustomersLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$searchCustomerImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$searchCustomerImplCopyWith(_$searchCustomerImpl value,
          $Res Function(_$searchCustomerImpl) then) =
      __$$searchCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String custDetail, BuildContext context});
}

/// @nodoc
class __$$searchCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$searchCustomerImpl>
    implements _$$searchCustomerImplCopyWith<$Res> {
  __$$searchCustomerImplCopyWithImpl(
      _$searchCustomerImpl _value, $Res Function(_$searchCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custDetail = null,
    Object? context = null,
  }) {
    return _then(_$searchCustomerImpl(
      null == custDetail
          ? _value.custDetail
          : custDetail // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$searchCustomerImpl implements _searchCustomer {
  const _$searchCustomerImpl(this.custDetail, this.context);

  @override
  final String custDetail;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CustomerEvent.searchCustomer(custDetail: $custDetail, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchCustomerImpl &&
            (identical(other.custDetail, custDetail) ||
                other.custDetail == custDetail) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, custDetail, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchCustomerImplCopyWith<_$searchCustomerImpl> get copyWith =>
      __$$searchCustomerImplCopyWithImpl<_$searchCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getCustomers,
    required TResult Function(int custId, BuildContext context)
        getCustomersLead,
    required TResult Function(String custDetail, BuildContext context)
        searchCustomer,
    required TResult Function(Customer customer, BuildContext context)
        updateCustomer,
  }) {
    return searchCustomer(custDetail, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getCustomers,
    TResult? Function(int custId, BuildContext context)? getCustomersLead,
    TResult? Function(String custDetail, BuildContext context)? searchCustomer,
    TResult? Function(Customer customer, BuildContext context)? updateCustomer,
  }) {
    return searchCustomer?.call(custDetail, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getCustomers,
    TResult Function(int custId, BuildContext context)? getCustomersLead,
    TResult Function(String custDetail, BuildContext context)? searchCustomer,
    TResult Function(Customer customer, BuildContext context)? updateCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(custDetail, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCustomers value) getCustomers,
    required TResult Function(_getCustomersLead value) getCustomersLead,
    required TResult Function(_searchCustomer value) searchCustomer,
    required TResult Function(_updateCustomer value) updateCustomer,
  }) {
    return searchCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCustomers value)? getCustomers,
    TResult? Function(_getCustomersLead value)? getCustomersLead,
    TResult? Function(_searchCustomer value)? searchCustomer,
    TResult? Function(_updateCustomer value)? updateCustomer,
  }) {
    return searchCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCustomers value)? getCustomers,
    TResult Function(_getCustomersLead value)? getCustomersLead,
    TResult Function(_searchCustomer value)? searchCustomer,
    TResult Function(_updateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(this);
    }
    return orElse();
  }
}

abstract class _searchCustomer implements CustomerEvent {
  const factory _searchCustomer(
          final String custDetail, final BuildContext context) =
      _$searchCustomerImpl;

  String get custDetail;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$searchCustomerImplCopyWith<_$searchCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateCustomerImplCopyWith<$Res>
    implements $CustomerEventCopyWith<$Res> {
  factory _$$updateCustomerImplCopyWith(_$updateCustomerImpl value,
          $Res Function(_$updateCustomerImpl) then) =
      __$$updateCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Customer customer, BuildContext context});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$$updateCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$updateCustomerImpl>
    implements _$$updateCustomerImplCopyWith<$Res> {
  __$$updateCustomerImplCopyWithImpl(
      _$updateCustomerImpl _value, $Res Function(_$updateCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? context = null,
  }) {
    return _then(_$updateCustomerImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$updateCustomerImpl implements _updateCustomer {
  const _$updateCustomerImpl(this.customer, this.context);

  @override
  final Customer customer;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CustomerEvent.updateCustomer(customer: $customer, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateCustomerImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$updateCustomerImplCopyWith<_$updateCustomerImpl> get copyWith =>
      __$$updateCustomerImplCopyWithImpl<_$updateCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) getCustomers,
    required TResult Function(int custId, BuildContext context)
        getCustomersLead,
    required TResult Function(String custDetail, BuildContext context)
        searchCustomer,
    required TResult Function(Customer customer, BuildContext context)
        updateCustomer,
  }) {
    return updateCustomer(customer, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context)? getCustomers,
    TResult? Function(int custId, BuildContext context)? getCustomersLead,
    TResult? Function(String custDetail, BuildContext context)? searchCustomer,
    TResult? Function(Customer customer, BuildContext context)? updateCustomer,
  }) {
    return updateCustomer?.call(customer, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? getCustomers,
    TResult Function(int custId, BuildContext context)? getCustomersLead,
    TResult Function(String custDetail, BuildContext context)? searchCustomer,
    TResult Function(Customer customer, BuildContext context)? updateCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(customer, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getCustomers value) getCustomers,
    required TResult Function(_getCustomersLead value) getCustomersLead,
    required TResult Function(_searchCustomer value) searchCustomer,
    required TResult Function(_updateCustomer value) updateCustomer,
  }) {
    return updateCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getCustomers value)? getCustomers,
    TResult? Function(_getCustomersLead value)? getCustomersLead,
    TResult? Function(_searchCustomer value)? searchCustomer,
    TResult? Function(_updateCustomer value)? updateCustomer,
  }) {
    return updateCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getCustomers value)? getCustomers,
    TResult Function(_getCustomersLead value)? getCustomersLead,
    TResult Function(_searchCustomer value)? searchCustomer,
    TResult Function(_updateCustomer value)? updateCustomer,
    required TResult orElse(),
  }) {
    if (updateCustomer != null) {
      return updateCustomer(this);
    }
    return orElse();
  }
}

abstract class _updateCustomer implements CustomerEvent {
  const factory _updateCustomer(
          final Customer customer, final BuildContext context) =
      _$updateCustomerImpl;

  Customer get customer;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  _$$updateCustomerImplCopyWith<_$updateCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CustomerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingInProgressImplCopyWith<$Res> {
  factory _$$loadingInProgressImplCopyWith(_$loadingInProgressImpl value,
          $Res Function(_$loadingInProgressImpl) then) =
      __$$loadingInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingInProgressImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$loadingInProgressImpl>
    implements _$$loadingInProgressImplCopyWith<$Res> {
  __$$loadingInProgressImplCopyWithImpl(_$loadingInProgressImpl _value,
      $Res Function(_$loadingInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$loadingInProgressImpl implements _loadingInProgress {
  const _$loadingInProgressImpl();

  @override
  String toString() {
    return 'CustomerState.loadingInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return loadingInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return loadingInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return loadingInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return loadingInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (loadingInProgress != null) {
      return loadingInProgress(this);
    }
    return orElse();
  }
}

abstract class _loadingInProgress implements CustomerState {
  const factory _loadingInProgress() = _$loadingInProgressImpl;
}

/// @nodoc
abstract class _$$successCustomerListImplCopyWith<$Res> {
  factory _$$successCustomerListImplCopyWith(_$successCustomerListImpl value,
          $Res Function(_$successCustomerListImpl) then) =
      __$$successCustomerListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Customer> customerList});
}

/// @nodoc
class __$$successCustomerListImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$successCustomerListImpl>
    implements _$$successCustomerListImplCopyWith<$Res> {
  __$$successCustomerListImplCopyWithImpl(_$successCustomerListImpl _value,
      $Res Function(_$successCustomerListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerList = null,
  }) {
    return _then(_$successCustomerListImpl(
      null == customerList
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
    ));
  }
}

/// @nodoc

class _$successCustomerListImpl implements _successCustomerList {
  const _$successCustomerListImpl(final List<Customer> customerList)
      : _customerList = customerList;

  final List<Customer> _customerList;
  @override
  List<Customer> get customerList {
    if (_customerList is EqualUnmodifiableListView) return _customerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerList);
  }

  @override
  String toString() {
    return 'CustomerState.successCustomerList(customerList: $customerList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successCustomerListImpl &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customerList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successCustomerListImplCopyWith<_$successCustomerListImpl> get copyWith =>
      __$$successCustomerListImplCopyWithImpl<_$successCustomerListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return successCustomerList(customerList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return successCustomerList?.call(customerList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (successCustomerList != null) {
      return successCustomerList(customerList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return successCustomerList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return successCustomerList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (successCustomerList != null) {
      return successCustomerList(this);
    }
    return orElse();
  }
}

abstract class _successCustomerList implements CustomerState {
  const factory _successCustomerList(final List<Customer> customerList) =
      _$successCustomerListImpl;

  List<Customer> get customerList;
  @JsonKey(ignore: true)
  _$$successCustomerListImplCopyWith<_$successCustomerListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successCustLeadListImplCopyWith<$Res> {
  factory _$$successCustLeadListImplCopyWith(_$successCustLeadListImpl value,
          $Res Function(_$successCustLeadListImpl) then) =
      __$$successCustLeadListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Lead> custLeadsList});
}

/// @nodoc
class __$$successCustLeadListImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$successCustLeadListImpl>
    implements _$$successCustLeadListImplCopyWith<$Res> {
  __$$successCustLeadListImplCopyWithImpl(_$successCustLeadListImpl _value,
      $Res Function(_$successCustLeadListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custLeadsList = null,
  }) {
    return _then(_$successCustLeadListImpl(
      null == custLeadsList
          ? _value._custLeadsList
          : custLeadsList // ignore: cast_nullable_to_non_nullable
              as List<Lead>,
    ));
  }
}

/// @nodoc

class _$successCustLeadListImpl implements _successCustLeadList {
  const _$successCustLeadListImpl(final List<Lead> custLeadsList)
      : _custLeadsList = custLeadsList;

  final List<Lead> _custLeadsList;
  @override
  List<Lead> get custLeadsList {
    if (_custLeadsList is EqualUnmodifiableListView) return _custLeadsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_custLeadsList);
  }

  @override
  String toString() {
    return 'CustomerState.successCustLeadList(custLeadsList: $custLeadsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successCustLeadListImpl &&
            const DeepCollectionEquality()
                .equals(other._custLeadsList, _custLeadsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_custLeadsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successCustLeadListImplCopyWith<_$successCustLeadListImpl> get copyWith =>
      __$$successCustLeadListImplCopyWithImpl<_$successCustLeadListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return successCustLeadList(custLeadsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return successCustLeadList?.call(custLeadsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (successCustLeadList != null) {
      return successCustLeadList(custLeadsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return successCustLeadList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return successCustLeadList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (successCustLeadList != null) {
      return successCustLeadList(this);
    }
    return orElse();
  }
}

abstract class _successCustLeadList implements CustomerState {
  const factory _successCustLeadList(final List<Lead> custLeadsList) =
      _$successCustLeadListImpl;

  List<Lead> get custLeadsList;
  @JsonKey(ignore: true)
  _$$successCustLeadListImplCopyWith<_$successCustLeadListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$failedImplCopyWith<$Res> {
  factory _$$failedImplCopyWith(
          _$failedImpl value, $Res Function(_$failedImpl) then) =
      __$$failedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$failedImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$failedImpl>
    implements _$$failedImplCopyWith<$Res> {
  __$$failedImplCopyWithImpl(
      _$failedImpl _value, $Res Function(_$failedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$failedImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$failedImpl implements _failed {
  const _$failedImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CustomerState.failed(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$failedImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      __$$failedImplCopyWithImpl<_$failedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return failed(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return failed?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _failed implements CustomerState {
  const factory _failed(final String error) = _$failedImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$failedImplCopyWith<_$failedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$successImplCopyWith<$Res> {
  factory _$$successImplCopyWith(
          _$successImpl value, $Res Function(_$successImpl) then) =
      __$$successImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$successImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$successImpl>
    implements _$$successImplCopyWith<$Res> {
  __$$successImplCopyWithImpl(
      _$successImpl _value, $Res Function(_$successImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$successImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$successImpl implements _success {
  const _$successImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CustomerState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$successImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      __$$successImplCopyWithImpl<_$successImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingInProgress,
    required TResult Function(List<Customer> customerList) successCustomerList,
    required TResult Function(List<Lead> custLeadsList) successCustLeadList,
    required TResult Function(String error) failed,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingInProgress,
    TResult? Function(List<Customer> customerList)? successCustomerList,
    TResult? Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult? Function(String error)? failed,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingInProgress,
    TResult Function(List<Customer> customerList)? successCustomerList,
    TResult Function(List<Lead> custLeadsList)? successCustLeadList,
    TResult Function(String error)? failed,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loadingInProgress value) loadingInProgress,
    required TResult Function(_successCustomerList value) successCustomerList,
    required TResult Function(_successCustLeadList value) successCustLeadList,
    required TResult Function(_failed value) failed,
    required TResult Function(_success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loadingInProgress value)? loadingInProgress,
    TResult? Function(_successCustomerList value)? successCustomerList,
    TResult? Function(_successCustLeadList value)? successCustLeadList,
    TResult? Function(_failed value)? failed,
    TResult? Function(_success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loadingInProgress value)? loadingInProgress,
    TResult Function(_successCustomerList value)? successCustomerList,
    TResult Function(_successCustLeadList value)? successCustLeadList,
    TResult Function(_failed value)? failed,
    TResult Function(_success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _success implements CustomerState {
  const factory _success(final String message) = _$successImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$successImplCopyWith<_$successImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
