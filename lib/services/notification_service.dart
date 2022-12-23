import 'package:flutter/material.dart';

import '../main.dart';
import '../models/notification/notification.dart';

class NotificationService {
  void showSuccessNotification(AppNotification notification) {
    rootScaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        content: Text(notification.description),
      ),
    );
  }

  void clearNotifications() {
    rootScaffoldMessengerKey.currentState?.clearSnackBars();
  }

  void showErrorNotification(AppNotification notification) {
    rootScaffoldMessengerKey.currentState?.hideCurrentSnackBar();
    rootScaffoldMessengerKey.currentState?.showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(notification.description),
      ),
    );
  }
}
