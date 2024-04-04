import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource{
  final SharedPreferences _sharedPreferences;
  LocalDataSource(this._sharedPreferences);

  Future<void> storeUserData(String userName,String email) async{
    await _sharedPreferences.setString('name', userName);
    await _sharedPreferences.setString('email', email);
  }

  Future<List<String>> getUserData() async{
    final userName = _sharedPreferences.getString('name');
    final email = _sharedPreferences.getString('email');

    List<String> userData = [];

    userData.add(userName!);
    userData.add(email!);

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