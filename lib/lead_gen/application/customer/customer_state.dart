part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.initial() = _Initial;

  const factory CustomerState.loadingInProgress() = _loadingInProgress;

  const factory CustomerState.successCustomerList(List<Customer> customerList) = _successCustomerList;

  const factory CustomerState.successCustLeadList(List<Lead> custLeadsList) = _successCustLeadList;

  const factory CustomerState.failed(String error) = _failed;

  const factory CustomerState.success(String message) = _success;
}
