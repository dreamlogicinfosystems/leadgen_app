import 'dart:convert';

class JWTHelper {
  String _urlBase64Decode(String str) {
    String output = str.replaceAll('-', '+').replaceAll('_', '/');
    switch (output.length % 4) {
      case 0:
        break;
      case 2:
        output += '==';
        break;
      case 3:
        output += '=';
        break;
      default:
        throw Exception("Illegal base64url string!");
    }
    return utf8.decode(base64Url.decode(output));
  }

  Map<String, dynamic> decodeToken(String token) {
    if(token == null){
      throw Exception('invalid token');
    }
    final parts = token.split('.');

    if (parts.length != 3) {
      throw Exception("JWT must have 3 parts");
    }

    final payload = _urlBase64Decode(parts[1]);
    final payloadMap = json.decode(payload);
    if (payloadMap is! Map<String, dynamic>) {
      throw Exception('invalid payload');
    }

    return payloadMap;
  }

  DateTime getTokenExpirationDate(String token) {
    var decoded = decodeToken(token);
    int exp = decoded["exp"];

    return DateTime.fromMillisecondsSinceEpoch(exp * 1000, isUtc: true);
  }

  bool isTokenExpired(String token,int offset) {
    var expirationDate = getTokenExpirationDate(token);
    if (expirationDate == null) {
      return false;
    }
    final now = DateTime.now().add(Duration(seconds: offset));

    // Token expired?
    return expirationDate.isBefore(now);
  }
}
