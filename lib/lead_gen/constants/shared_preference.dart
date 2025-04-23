import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSource{
  final SharedPreferences _sharedPreferences;
  String isUserExistWeb = "isUserExistWeb";
  LocalDataSource(this._sharedPreferences);

  Future<void> setIsUserExistWeb(int value) async {
    await _sharedPreferences.setInt(isUserExistWeb, value);
  }

  Future<int?> getUserExistWeb() async {
    final result = _sharedPreferences.getInt(isUserExistWeb);
    return result;
  }

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

  Future<String?> getUserName() async{
    final userName = _sharedPreferences.getString('name');
    return userName;
  }

  Future<String?> getToken() async{
    final token = _sharedPreferences.getString('token');
    return token;
  }

  Future<void> setToken(String token) async{
    await _sharedPreferences.setString('token', token);
  }

  Future<void> setRole(String role) async{
    await _sharedPreferences.setString('role', role);
  }

  Future<String?> getRole() async{
    final role = _sharedPreferences.getString('role');
    return role;
  }

  Future<void> setLicenceValidity(bool validity) async{
    await _sharedPreferences.setBool('licence_validity', validity);
  }

  Future<bool?> getLicenceValidity() async{
    final validity = _sharedPreferences.getBool('licence_validity');
    return validity;
  }

  Future<void> setUserId(String userId) async{
    await _sharedPreferences.setString('user_id', userId);
  }

  Future<String?> getUserId() async{
    final id = _sharedPreferences.getString('user_id');
    return id;
  }
}