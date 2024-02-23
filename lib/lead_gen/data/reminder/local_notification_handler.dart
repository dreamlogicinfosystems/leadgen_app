import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  debugPrint("Handling a background message: ${notificationResponse.id}");
}

class LocalNotificationHandler{
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  init() async{
    AndroidInitializationSettings androidInitializationSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');

    await _flutterLocalNotificationsPlugin.initialize(
      InitializationSettings(
        android: androidInitializationSettings
      ),
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );

    tz.initializeTimeZones();

    await _flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>()?.pendingNotificationRequests();
  }

  setRemainder(String message,DateTime date,TimeOfDay time) async{
    DateTime reminderDateTime = DateTime(date.year,date.month,date.day,time.hour,time.minute);

    tz.Location location = tz.getLocation('Asia/Kolkata');

    tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
        reminderDateTime
        ,location
    );

    AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
        "1",
        "LeadGen",
        channelDescription:  "reminder",
        priority: Priority.max,
        importance: Importance.max,
    );

    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);

    await _flutterLocalNotificationsPlugin.zonedSchedule(
        2002,
        "Remainder",
        message,
        scheduledDateTime,
        notificationDetails,
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime
    );
  }
}