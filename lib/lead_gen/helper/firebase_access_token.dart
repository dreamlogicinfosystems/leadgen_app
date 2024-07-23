import 'package:googleapis_auth/auth_io.dart';

import 'firebase_data.dart';

class FirebaseAccessToken{
  static String firebaseMessagingScope = "https://www.googleapis.com/auth/firebase.messaging";

  Future<String> getAccessToken() async{
    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson(
        {
          "type": "service_account",
          "project_id": FirebaseData.projectId,
          "private_key_id": FirebaseData.privateKeyId,
          "private_key": FirebaseData.privateKey,
          "client_email": FirebaseData.clientEmail,
          "client_id": FirebaseData.clientId,
          "auth_uri": "https://accounts.google.com/o/oauth2/auth",
          "token_uri": "https://oauth2.googleapis.com/token",
          "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
          "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-qyfp7%40dreamlogic-nudge.iam.gserviceaccount.com",
          "universe_domain": "googleapis.com"
        },
      ),[firebaseMessagingScope]);

    //extracting the token from credentials

    final accessToken = client.credentials.accessToken.data;

    return accessToken;
  }
}