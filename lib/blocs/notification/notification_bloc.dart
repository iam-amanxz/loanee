import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/notification/notification.dart';
import '../../services/notification_service.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationService notificationService;

  NotificationBloc({required this.notificationService})
      : super(const NotificationState.initial()) {
    on<ShowSuccessNotificationEvent>(_onShowSuccessNotificationEvent);
    on<ShowErrorNotificationEvent>(_onShowErrorNotificationEvent);
    on<ClearNotificationsEvent>(_onClearNotificationsEvent);
  }

  void _onShowSuccessNotificationEvent(
    ShowSuccessNotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationState.success());
    notificationService.showSuccessNotification(event.notification);
  }

  void _onShowErrorNotificationEvent(
    ShowErrorNotificationEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationState.error());
    notificationService.showErrorNotification(event.notification);
  }

  void _onClearNotificationsEvent(
    ClearNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(const NotificationState.error());
    notificationService.clearNotifications();
  }

  void showSuccessNotification(AppNotification notification) => add(
        NotificationEvent.showSuccessNotification(notification),
      );

  void showErrorNotification(AppNotification notification) => add(
        NotificationEvent.showErrorNotification(notification),
      );

  void clearNotifications() => add(
        const NotificationEvent.clearNotifications(),
      );
}
