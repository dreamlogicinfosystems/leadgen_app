import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../core/custom_appbar.dart';
import '../widgets/notification/notification_page_body.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  static final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    getToken();
    super.initState();
  }

  Future<void> getToken() async{
    final fcmToken = await _firebaseMessaging.getToken();
    print("fcm token: $fcmToken");
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight*1),
        child: CustomAppBar(
          title: 'Notification',
          centerTitle: true,
          isArchivePage: true,
          automaticallyImplyLeading: true,
          iconColor: Colors.black,
        ),
      ),
      body: NotificationPageBody(),
    );
  }
}
