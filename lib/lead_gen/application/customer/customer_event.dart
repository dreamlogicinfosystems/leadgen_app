part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.getCustomers(BuildContext context) = _getCustomers;

  const factory CustomerEvent.getCustomersLead(int custId,BuildContext context) = _getCustomersLead;
}
