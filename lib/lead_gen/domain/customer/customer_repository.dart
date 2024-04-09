import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';

import 'package:lead_gen/lead_gen/constants/error.dart';

import 'package:lead_gen/lead_gen/domain/customer/customer.dart';
import 'package:lead_gen/lead_gen/domain/lead/lead.dart';

abstract class CustomerRepository{
  Future<Either<ErrorMessage,List<Customer>>> getCustomersList(BuildContext context);

  Future<Either<ErrorMessage,List<Lead>>> getCustomerLeads(int custId,BuildContext context);

  Future<Either<ErrorMessage,List<Customer>>> getSearchedCustomer(String custDetail,BuildContext context);
}