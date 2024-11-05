import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  void initialize() {
    // Demande l'autorisation pour recevoir des notifications
    _firebaseMessaging.requestPermission();
  }

  void configure() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Gérer les notifications lorsque l'application est en premier plan
      print('Notification reçue: ${message.notification?.title}');
    });
  }

  Future<void> subscribeToUserTopic(String userId) async {
    await _firebaseMessaging.subscribeToTopic(userId);
  }
}

