import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:lead_gen/lead_gen/constants/api.dart';
import 'package:lead_gen/lead_gen/constants/error.dart';
import 'package:lead_gen/lead_gen/constants/success.dart';
import 'package:lead_gen/lead_gen/data/customer/customer_dto.dart';
import 'package:lead_gen/lead_gen/data/lead/lead_dto.dart';

import '../../constants/api_endpoint.dart';
import '../department/department_dto.dart';

class CustomerDataSource{
  final ApiMethods _apiMethods;
  final ApiEndPoint _apiEndpoint;
  CustomerDataSource(this._apiMethods, this._apiEndpoint);

  Future<Either<ErrorMessage,List<CustomerDto>>>getCustomers(BuildContext context) async{
    try{
      List<CustomerDto> customersList = [];

      final response = await _apiMethods.get(
          url: _apiEndpoint.getCustomers,
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
      return Left(ErrorMessage("Something went wrong! Please try again"));
    }
  }

  Future<Either<ErrorMessage,List<LeadDto>>> getCustomerLeads(int custId,BuildContext context) async{
    try{
      List<LeadDto> customerLeadsList = [];
      List<DepartmentDto> departments = [];

      final response = await _apiMethods.get(
          url: 'get_customer_leads?id=$custId',
          context: context
      );

      final result = jsonDecode(response!.body);

      if(result['status'] == true){

        for(int i=0; i<result['leads'].length; i++){

          final dept = result['leads'][i]['departments'];

          for(int i=0; i<dept.length; i++){
            DepartmentDto department = DepartmentDto(
                id: dept[i]['id'],
                departmentName: dept[i]['name']
            );
            departments.add(department);
          }

          LeadDto leadDto = LeadDto(
            id: result['leads'][i]['id'],
            name: result['leads'][i]['name'],
            phone: result['leads'][i]['phone'],
            email: result['leads'][i]['email'],
            message: result['leads'][i]['note'],
            title: result['leads'][i]['title'],
            showStatus: result['leads'][i]['show_status'],
            lastChatDate: result['leads'][i]['last_chat_date'],
            createdAt: result['leads'][i]['created_at'],
            departments: List.from(departments)
          );

          customerLeadsList.add(leadDto);

          departments.clear();
        }

        return Right(customerLeadsList);
      }else{
        return Left(ErrorMessage(result['message']));
      }
    }catch(e){
      return Left(ErrorMessage("Something went wrong! Please try again"));
    }
  }

  Future<Either<ErrorMessage,List<CustomerDto>>>getSearchedCustomer(String custDetail,String type,String subType,BuildContext context) async{
    List<CustomerDto> customersList = [];

    final response = await _apiMethods.get(
        url: 'get_customers?search=$custDetail&type=$type&sub_type=$subType',
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

  Future<Either<ErrorMessage,Success>> updateCustomerData(CustomerDto customer,BuildContext context) async{
    Map<String,dynamic> map = {};

    map['id'] = customer.custId.toString();
    map['name'] = customer.custName;
    map['phone'] = customer.custPhone;
    map['email'] = customer.custEmail;

    final response = await _apiMethods.post(
        url: _apiEndpoint.updateCustomer,
        data: map,
        context: context
    );

    final result = jsonDecode(response!.body);

    if(result['status'] == true){
      return Right(Success(result['message']));
    }else{
      String error = '';

      result['error'].forEach((key,value){
        error = value[0];
      });

      return Left(ErrorMessage(error));
    }
  }
}