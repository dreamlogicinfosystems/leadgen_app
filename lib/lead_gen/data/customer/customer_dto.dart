import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/customer/customer.dart';

part 'customer_dto.freezed.dart';

part 'customer_dto.g.dart';

@freezed
abstract class CustomerDto implements _$CustomerDto{
  const CustomerDto._();

  const factory CustomerDto({
    int? custId,
    String? custName,
    String? custPhone,
    String? custEmail,
    String? date,
  }) = _CustomerDto;

  factory CustomerDto.fromJson(Map<String,dynamic>json) => _$CustomerDtoFromJson(json);

  factory CustomerDto.fromDomain(Customer customer){
    return CustomerDto(
      custId: customer.custId,
      custName: customer.custName,
      custPhone: customer.custPhone,
      custEmail: customer.custEmail,
      date: customer.date
    );
  }

  Customer toDomain(CustomerDto customerDto){
    return Customer(
      custId: customerDto.custId,
      custName: customerDto.custName,
      custPhone: customerDto.custPhone,
      custEmail: customerDto.custEmail,
      date: customerDto.date
    );
  }
}