import 'package:googleapis_auth/auth_io.dart';

class FirebaseAccessToken{
  static String firebaseMessagingScope = "https://www.googleapis.com/auth/firebase.messaging";

  Future<String> getAccessToken() async{
    final client = await clientViaServiceAccount(
      ServiceAccountCredentials.fromJson(
        {
          "type": "service_account",
          "project_id": "dreamlogic-nudge",
          "private_key_id": "2c38bef459e1d9d017c9bffdb46538193075bdd7",
          "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDu9i6+P620o+FY\nb/MWX5QRxr+9pfiC6zaKExk1o7zECjH2RftPMe2Zeyy82mMCRT6ALmoFni2aumym\n+BoKFxQO3aBUj1C1kk87vhMJgqij5Lf75NMr65B5b/9Kg77DX0ZT30AgRiQb+DRO\ndNNNpIiClBKFP2/5R9uspSxJb0f2Zn6tRuDWDxtUvGVk7rRtaiMWCB1siVF0jH5w\nvm2/dgwfFnrRuUNtw1/mn3Juf9u5IkjIYhxW0Jt9xIPqyGUgjRZbEdHgz4wIxs62\n0FKN+sKCLFmHzWSaskSJmg0rIGfTE4VP7foVGWK8bC4fU56qwBBmho4upqT1aan5\nqqRHCmZnAgMBAAECgf8GV0pakFYEeVVLjOwTaA763xdTR7x0/QaAKLAO/jCz2sWY\n8N8KmqLKCy3oVkCpR05qeEihBE6pSnNhdqZFrLAUfLwqE2rTd4b8sabgkoVfYaio\nciCwG9CANzy0iYrOrVfcJn+I5eY5ppDlBs8vtVIJ1Xktj0GCAq33JLxuwxmS3dSr\n30pd5FeWvWWw4uA51JEVT99eUSaLMtSdIZoAPASj+sLztlNqX1QhbOXF3ct0FphB\nkXPKTnWahVGSRTGTx2oT+5gEiW/0aO+FTMha6/RElgYdKK0HTbiVcmThmo54vnf1\nI44RBJhGXB7mS+M2Q1WaXQRZ3bgPBeXrNBijR2ECgYEA95aX1Wj6c5q7LYdew5GN\n5eBSL8tEtPBiVAHgrbkLuT2elVWSpjZ5Gxfvqtwn6Ym6QNVdgPV02SMH1I019l11\nE6rYWKlMvmN9DHRLftuQSPq873TTcWDFvypvB+DhW35SskAGTW+BN/YQqijunAtz\nhtLo0yQWL8u0gjH+1BOrBeECgYEA9xSPL+8dIw3PU5vaXVJHIbJJSM+UWdWDRhpm\naNU9Jx0ew+FaO2XuvzoCin+wf5PuBnWkEKv52NdxECRKnOY5gq4QM7f7lqSRwoiG\nDgaouTdeIAY8FOvjX1ufQFfUZjz8z5l70cN7qSAq4EzTecM5aWrCsvZPeX91JVz1\naO6KZUcCgYEAvXGLKA41ZPOGOWYVSos7CiPEfzGHlvNAKYtuQT8QC2NszlM17NxN\nej+scQ4XtAhgbW9VJnGqQOMfALI0Ehiclrno5J5WTG+PpVHu2lhiZJUGsCqyB1TG\numlbn6mghgN4f0+iAupI82rigXDkcp4Ifacv4y7/kv7JVb2vgNKzz8ECgYEAx6M0\nAr4IY99vqpWePZMSaFaewhb/Pgq3k/gW0ROi4qyzw/+coau92YLstK1xldOYGl4J\nX3MlYCDLeQhpxRZ8V2t/Kdq5jMGSCIW5EzIsN+NVyThgaWMjh1QHe7y7oJQcjTzt\nf9KcY03bdvp8UMD97YBWqrU8B+aFZ9gRbmR3LFcCgYEAyTC54gb3Hjea1Ok7R9UU\nXvPmZyjsaukFN+6xThkNT+RdJLalOIme12YefDT1spA972ny36/uhSfYK6+Q1tjS\nC/FUanTSYN2E1+/4xj+aGVHkHjtsuBCZUlBWhjCUFErA/hJY8RsXfOa3hjdeOR6O\n1MlJ6PauJKWwXqPPxA+wAbk=\n-----END PRIVATE KEY-----\n",
          "client_email": "firebase-adminsdk-qyfp7@dreamlogic-nudge.iam.gserviceaccount.com",
          "client_id": "116057454026526944138",
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