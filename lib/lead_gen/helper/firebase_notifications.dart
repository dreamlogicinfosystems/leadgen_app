import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  debugPrint("Handling a background message: ${message.messageId}");
}


void showToastMessage(RemoteMessage message) {
  final notification = message.notification;
  if ( notification!=null){
    Fluttertoast.showToast(
        msg: notification.body!,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}

class FCM {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  init() async{
    await registerNotification();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("title on message:${message.notification?.title.toString()}");
      debugPrint("body on message:${message.notification?.body.toString()}");
      debugPrint("type of message:${message.data.toString()}");
      debugPrint("type of message:${message.data['typeE']}");
      debugPrint("id of message:${message.data['id']}");
      showToastMessage(message);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      showToastMessage(message);
    });
  }

  registerNotification() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();

    NotificationSettings settings = await _messaging.requestPermission(
        alert: true,
        badge: true,
        provisional: false,
        sound: true,
        criticalAlert: true
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');

      FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    } else {
      debugPrint('User declined or has not accepted permission');
    }
  }

  Future<String?>getFcmToken() async{
    return await _messaging.getToken();
  }
}



