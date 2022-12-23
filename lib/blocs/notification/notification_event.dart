part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.showErrorNotification(
      AppNotification notification) = ShowErrorNotificationEvent;
  const factory NotificationEvent.showSuccessNotification(
      AppNotification notification) = ShowSuccessNotificationEvent;
  const factory NotificationEvent.clearNotifications() =
      ClearNotificationsEvent;
}
