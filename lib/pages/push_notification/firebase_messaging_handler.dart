import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:newpj/pages/push_notification/show_notification.dart';

class FirebaseMessagingHandler {
    final messaging = FirebaseMessaging.instance;
  ShowNotificationHandler showNotificationHandler = ShowNotificationHandler();

    void initFcm() async{
      @pragma('vm:entry-point')
   final setting = messaging.requestPermission(
        alert: true,
         sound: true,
        criticalAlert: false,
        provisional: false,
        carPlay: false,
        badge: true
      );

      FirebaseMessaging.onMessage.listen((event) {

      });

}
}