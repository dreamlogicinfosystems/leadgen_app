import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/data/customer/customer_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/lead_dto.dart';

class CustomerDataSource{
  final ApiMethods _apiMethods;
  CustomerDataSource(this._apiMethods);

  Future<Either<ErrorMessage,List<CustomerDto>>>getCustomers(BuildContext context) async{
    try{
      List<CustomerDto> customersList = [];

      final response = await _apiMethods.get(
          url: 'get_customers',
          context: context
      );

      final result = jsonDecode(response!.body);
      
      if(result['status'] == true){

        for(int i=0; i<result['customers'].length; i++){
          CustomerDto customerDto = CustomerDto(
            custId: result['customers'][i]['id'],
            custName: result['customers'][i]['name'],
            custPhone: result['customers'][i]['phone'],
            custEmail: result['customers'][i]['email'],
            date: result['customers'][i]['created_at'],
          );

          customersList.add(customerDto);
        }

        return Right(customersList);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,List<LeadDto>>> getCustomerLeads(int custId,BuildContext context) async{
    try{
      List<LeadDto> customerLeadsList = [];

      final response = await _apiMethods.get(
          url: 'get_customer_leads?id=$custId',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0; i<result['leads'].length; i++){
          LeadDto leadDto = LeadDto(
            id: result['leads'][i]['id'],
            name: result['leads'][i]['name'],
            phone: result['leads'][i]['phone'],
            email: result['leads'][i]['email'],
            message: result['leads'][i]['note'],
            showStatus: result['leads'][i]['show_status'],
            lastChatDate: result['leads'][i]['last_chat_date'],
            createdAt: result['leads'][i]['created_at']
          );

          customerLeadsList.add(leadDto);
        }

        return Right(customerLeadsList);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage(e.toString()));
    }
  }

  Future<Either<ErrorMessage,List<CustomerDto>>>getSearchedCustomer(String custDetail,BuildContext context) async{
    List<CustomerDto> customersList = [];

    final response = await _apiMethods.get(
        url: 'get_customers?search=$custDetail',
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){

      for(int i=0; i<result['customers'].length; i++){
        CustomerDto customerDto = CustomerDto(
          custId: result['customers'][i]['id'],
          custName: result['customers'][i]['name'],
          custPhone: result['customers'][i]['phone'],
          custEmail: result['customers'][i]['email'],
          date: result['customers'][i]['created_at'],
        );

        customersList.add(customerDto);
      }

      return Right(customersList);
    }else{
      return Left(ErrorMessage(result['message']));
    }
  }
}