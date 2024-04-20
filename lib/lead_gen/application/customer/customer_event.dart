part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.getCustomers(BuildContext context) = _getCustomers;

  const factory CustomerEvent.getCustomersLead(int custId,BuildContext context) = _getCustomersLead;

  const factory CustomerEvent.searchCustomer(String custDetail,String type,String subType,
      BuildContext context) = _searchCustomer;

  const factory CustomerEvent.updateCustomer(Customer customer,BuildContext context) = _updateCustomer;
}
