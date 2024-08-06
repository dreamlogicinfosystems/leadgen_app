import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lead_gen/lead_gen/domain/customer/customer.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../domain/customer/customer_repository.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerRepository _customerRepository;
  static Customer? customer;
  static int? custId;
  CustomerBloc(this._customerRepository) : super(const CustomerState.initial()) {
    on<CustomerEvent>(mapEventToState);
  }

  Future<void>mapEventToState(CustomerEvent event,Emitter<CustomerState>emit) async{
    await event.map(
        getCustomers: (e) async{
          emit(const CustomerState.loadingInProgress());

          final tryGetCustList = await _customerRepository.getCustomersList(e.context);

          tryGetCustList.fold((error){
            emit(CustomerState.failed(error.message));
          },(customersList){
            emit(CustomerState.successCustomerList(customersList));
          });
        },
        getCustomersLead: (e) async{
          emit(const CustomerState.loadingInProgress());

          final tryGetCustLeads = await _customerRepository.getCustomerLeads(e.custId, e.context);

          tryGetCustLeads.fold((error){
            emit(CustomerState.failed(error.message));
          },(custLeadsList){
            emit(CustomerState.successCustLeadList(custLeadsList));
          });
        },
        searchCustomer: (e) async{
          emit(const CustomerState.loadingInProgress());

          final trySearchingCust = await _customerRepository.getSearchedCustomer(e.custDetail,e.type,e.subType,e.context);

          trySearchingCust.fold((error){
            emit(CustomerState.failed(error.message));
          },(customerList){
            emit(CustomerState.successCustomerList(customerList));
          });

        },
        updateCustomer: (e) async{
          emit(const CustomerState.loadingInProgress());

          final tryUpdateCustomer = await _customerRepository.updateCustomer(
              Customer(
                custId: e.customer.custId,
                custPhone: e.customer.custPhone,
                custEmail: e.customer.custEmail,
                custName: e.customer.custName
              ),
              e.context
          );

          tryUpdateCustomer.fold((error){
            emit(CustomerState.failed(error.message));
          },(success){
            emit(CustomerState.success(success.successMessage));
          });
        }
    );
  }

  static setSelectedCustomer(Customer selectedCustomer){
    customer = selectedCustomer;
  }

  static setCustomerId(int id){
    custId = id;
  }
}
