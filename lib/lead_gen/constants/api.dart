import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lead_gen/lead_gen/constants/shared_preference.dart';
import 'package:lead_gen/lead_gen/constants/url.dart';

import 'no_internet_dialog.dart';

class ApiMethods{
  final LocalDataSource _localDataSource;
  ApiMethods(this._localDataSource);
  static final String _ip = "${Url.baseUrl}/api/";

  Future<http.Response?> post({required String url,required data,required BuildContext context}) async{
    final String fullUrl = _ip + url;
    final Map<String,String> headers = await header();

    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.ethernet
    || connectivityResult == ConnectivityResult.wifi) {
      final http.Response response = await http.post(
          Uri.parse(fullUrl),
          body: data,
          headers: headers
      );

      if(response.statusCode == 401){
        final result = jsonDecode(response.body);
        if (result['error'] == "Token expired!!") {
          //show dialog box
        }
      }else if(response.statusCode == 500){
        //show dialog box
      }else{
        return response;
      }
      return response;
    }else if(connectivityResult == ConnectivityResult.none){
      if(context.mounted){
        showNoInternalDialog(context);
      }
    }
    return null;
  }

  Future<http.Response?> get({required String url,required BuildContext context}) async{
    final String fullUrl = _ip + url;
    final Map<String,String> headers = await header();

    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile || connectivityResult == ConnectivityResult.ethernet
        || connectivityResult == ConnectivityResult.wifi) {
      final http.Response response = await http.get(
          Uri.parse(fullUrl),
          headers: headers
      );

      if (response.statusCode == 401) {
        final result = jsonDecode(response.body);
        if (result['error'] == "Token expired!!") {
          //show dialog box
        }
      } else if (response.statusCode == 500) {
        //show dialog box
      }
      return response;
    }else if(connectivityResult == ConnectivityResult.none){
      if(context.mounted){
        showNoInternalDialog(context);
      }
    }
    return null;
  }

  Future<Map<String,String>> header() async{
    Map<String,String> header = {};
    final token = await _localDataSource.getToken();

    if(token==null || token == ''){
      header = {
        "Content-type": "application/x-www-form-urlencoded"
      };
    }else{
      header = {
        "Content-type": "application/x-www-form-urlencoded",
        "Authorization": 'Bearer $token'
      };
    }
    return header;
  }
}