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
    AndroidInitializationSettings androidInitializationSettings = const AndroidInitializationSettings("@mipmap/launcher_icon");

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

  setReminder1(int id,String message,DateTime reminderDateTime,String interval,int count) async{

    AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
      "1",
      "LeadGen",
      channelDescription:  "reminder",
      priority: Priority.max,
      importance: Importance.max,
      icon: "@mipmap/launcher_icon"
    );

    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);

    if(interval=="Fixed"){
      tz.Location location = tz.getLocation('Asia/Kolkata');

      tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
          reminderDateTime
          ,location
      );

      debugPrint("reminder date time: $scheduledDateTime");

      await _flutterLocalNotificationsPlugin.zonedSchedule(
          id,
          "Reminder",
          message,
          scheduledDateTime,
          notificationDetails,
          androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle
      );
    }else if(interval=="Daily"){
      for(int i=0;i<count;i++){

        final date = reminderDateTime.add(Duration(days: i));

        tz.Location location = tz.getLocation('Asia/Kolkata');

        tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
            date
            ,location
        );

        id++;

        debugPrint("reminder date time: $scheduledDateTime and id: $id ");

        await _flutterLocalNotificationsPlugin.zonedSchedule(
            id,
            "Remainder",
            message,
            scheduledDateTime,
            notificationDetails,
            androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle
        );
      }
    }else if(interval=="Weekly"){
      for(int i=0; i<count; i++){

        DateTime date = reminderDateTime;
        if(i!=0){
          date = reminderDateTime.add(const Duration(days: 7));
        }

        tz.Location location = tz.getLocation('Asia/Kolkata');

        tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
            date,
            location
        );

        id++;

        debugPrint("reminder date time: $scheduledDateTime and id: $id");

        //to assign new date to increment date properly
        reminderDateTime = date;

        await _flutterLocalNotificationsPlugin.zonedSchedule(
            id,
            "Remainder",
            message,
            scheduledDateTime,
            notificationDetails,
            androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle
        );
      }
    }else if(interval=="Monthly"){
      for(int i=0; i<count; i++) {

        DateTime? date = reminderDateTime;
        if (i != 0) {
          date = reminderDateTime.add(const Duration(days: 30));
        }

        tz.Location location = tz.getLocation('Asia/Kolkata');

        tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
            date,
            location
        );

        id++;

        debugPrint("reminder date time: $scheduledDateTime and id: $id");

        //to assign new date to increment date properly
        reminderDateTime = date;

        await _flutterLocalNotificationsPlugin.zonedSchedule(
            id,
            "Remainder",
            message,
            scheduledDateTime,
            notificationDetails,
            androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle
        );
      }
    }else{
      for(int i=0; i<count; i++) {
        DateTime? date = reminderDateTime;
        if (i != 0) {
          date = reminderDateTime.add(const Duration(days: 365));
        }

        tz.Location location = tz.getLocation('Asia/Kolkata');

        tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
            date,
            location
        );

        id++;

        debugPrint("reminder date time: $scheduledDateTime and id: $id");

        //to assign new date to increment date properly
        reminderDateTime = date;

        await _flutterLocalNotificationsPlugin.zonedSchedule(
            id,
            "Remainder",
            message,
            scheduledDateTime,
            notificationDetails,
            androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle
        );
      }
    }
  }

  AndroidNotificationDetails androidNotificationDetails = const AndroidNotificationDetails(
    "1",
    "LeadGen",
    channelDescription:  "reminder",
    priority: Priority.max,
    importance: Importance.max,
    icon: "launcher_icon"
  );

  setRemainder(String message,DateTime date,TimeOfDay time) async{
    DateTime reminderDateTime = DateTime(date.year,date.month,date.day,time.hour,time.minute);

    tz.Location location = tz.getLocation('Asia/Kolkata');

    tz.TZDateTime scheduledDateTime = tz.TZDateTime.from(
        reminderDateTime
        ,location
    );

    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);

    await _flutterLocalNotificationsPlugin.zonedSchedule(
        2002,
        "Remainder",
        message,
        scheduledDateTime,
        notificationDetails,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  void showNotification(String title,String body) async {
    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);

    await _flutterLocalNotificationsPlugin.show(
        0001,
        title,
        body,
        notificationDetails
    );
  }
}