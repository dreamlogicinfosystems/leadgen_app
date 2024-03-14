import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer{
  const factory Customer({
    int? custId,
    String? custName,
    String? custPhone,
    String? custEmail,
    String? date,
  }) = _Customer;
}