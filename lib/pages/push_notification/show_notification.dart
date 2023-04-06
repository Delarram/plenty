import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class ShowNotificationHandler {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  static const String darwinNotificationCategoryPlain = 'plainCategory';

  Future<void> setUp() async{
    const androidSetting = AndroidInitializationSettings('@mipmap/ic_launcher');



  }

}