import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource{
  final SharedPreferences _sharedPreferences;
  LocalDataSource(this._sharedPreferences);

  Future<void> storeUserData(String userName,String phoneNo,String email,String businessName,String token) async{
    await _sharedPreferences.setString('name', userName);
    await _sharedPreferences.setString('phone', phoneNo);
    await _sharedPreferences.setString('email', email);
    await _sharedPreferences.setString('business', businessName);
    await _sharedPreferences.setString('token', token);
  }

  Future<List<String>> getUserData() async{
    final userName = _sharedPreferences.getString('name');
    final phoneNo = _sharedPreferences.getString('phone');
    final email = _sharedPreferences.getString('email');
    final businessName = _sharedPreferences.getString('business');

    List<String> userData = [];

    userData.add(userName!);
    userData.add(phoneNo!);
    userData.add(email!);
    userData.add(businessName!);

    return userData;
  }

  Future<String?> getToken() async{
    final token = _sharedPreferences.getString('token');
    return token;
  }

  Future<void> setToken(String token) async{
    await _sharedPreferences.setString('token', token);
  }
}