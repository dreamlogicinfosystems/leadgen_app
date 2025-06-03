import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:lead_gen/lead_gen/constants/jwt.dart';
import 'package:lead_gen/lead_gen/constants/shared_preference.dart';
import 'package:lead_gen/lead_gen/constants/url.dart';
import 'no_internet_dialog.dart';

class ApiMethods{
  final LocalDataSource _localDataSource;
  ApiMethods(this._localDataSource);
  static final String _ip = "${Url.baseUrl}/api/";
  static final _jwtHelper = JWTHelper();

  Future<http.Response?> post({required String url,data,required BuildContext context}) async{
    
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (!connectivityResult.contains(ConnectivityResult.none)) {

      final token = await _localDataSource.getToken();
      if(token!=null && token!=''){
        if(_jwtHelper.isTokenExpired(token, 0)){
          await refreshToken();
        }
      }
      
      final String fullUrl = _ip + url;
      final Map<String,String> headers = await header();
      
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
    }else if(connectivityResult.contains(ConnectivityResult.none)){
      if(context.mounted){
        showNoInternalDialog(context);
      }
    }
    return null;
  }

  Future<http.Response?> get({required String url,required BuildContext context}) async{

    final connectivityResult = await (Connectivity().checkConnectivity());
    if (!connectivityResult.contains(ConnectivityResult.none)) {

      final token = await _localDataSource.getToken();
      if(token!=null && token!=''){
        if(_jwtHelper.isTokenExpired(token, 0)){
          await refreshToken();
        }
      }

      final String fullUrl = _ip + url;
      final Map<String,String> headers = await header();

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
    }else if(connectivityResult.contains(ConnectivityResult.none)){
      if(context.mounted){
        showNoInternalDialog(context);
      }
    }
    return null;
  }
  
  Future<String> refreshToken() async{
    final baseUrl = Url.baseUrl;
    final headers = await header();

    final response = await http.post(
      Uri.parse('$baseUrl/api/refresh'),
      headers: headers,
    );

    final result = jsonDecode(response.body);

    if(result['status'] == true){
      final refreshToken = result['refresh_token'];
      await _localDataSource.setToken(refreshToken);
      return refreshToken;
    }else{
      return result['message'];
    }
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