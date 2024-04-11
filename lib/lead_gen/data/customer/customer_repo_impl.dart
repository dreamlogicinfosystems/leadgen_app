import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/customer/customer_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/lead_dto.dart';

import 'package:lead_gen/lead_gen/domain/customer/customer.dart';

import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

import '../../domain/customer/customer_repository.dart';
import 'customer_data_source.dart';

class CustomerRepositoryImpl extends CustomerRepository{
  final CustomerDataSource _customerDataSource;
  CustomerRepositoryImpl(this._customerDataSource);

  @override
  Future<Either<ErrorMessage, List<Lead>>> getCustomerLeads(int custId, BuildContext context) async{
    if(custId.toString().isEmpty){
      return Left(ErrorMessage('Something went wrong'));
    }else{
      final getCustLeads = await _customerDataSource.getCustomerLeads(custId, context);

      return getCustLeads.fold((error){
        return Left(error);
      },(custLeadsList){
        return Right(custLeadsList.map((e) => const LeadDto().toDomain(e)).toList());
      });
    }
  }

  @override
  Future<Either<ErrorMessage, List<Customer>>> getCustomersList(BuildContext context) async{
    final getCustList = await _customerDataSource.getCustomers(context);

    return getCustList.fold((error){
      return Left(error);
    },(custList){
      return Right(custList.map((e) => const CustomerDto().toDomain(e)).toList());
    });
  }

  @override
  Future<Either<ErrorMessage, List<Customer>>> getSearchedCustomer(String custDetail,BuildContext context) async{
    if(custDetail.isEmpty){
      return Left(ErrorMessage('Something went wrong'));
    }else{
      final getCustomer = await _customerDataSource.getSearchedCustomer(custDetail, context);

      return getCustomer.fold((error){
        return Left(error);
      },(customerList){
        return Right(customerList.map((e) => const CustomerDto().toDomain(e)).toList());
      });
    }
  }

  @override
  Future<Either<ErrorMessage, Success>> updateCustomer(Customer customer, BuildContext context) async{
    if(customer==const Customer()){
      return Left(ErrorMessage('Something went wrong'));
    }else{
      final data = CustomerDto.fromDomain(customer);

      final tryUpdateCust = await _customerDataSource.updateCustomerData(data, context);

      return tryUpdateCust.fold((error){
        return Left(error);
      },(success){
        return Right(success);
      });
    }
  }
}