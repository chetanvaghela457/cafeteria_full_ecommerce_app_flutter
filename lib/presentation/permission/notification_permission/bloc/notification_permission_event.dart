part of 'notification_permission_bloc.dart';

@immutable
sealed class NotificationPermissionEvent {}

class NotificationPermissionAllowClickEvent extends NotificationPermissionEvent {}
class NotificationPermissionMayBeLaterClickEvent extends NotificationPermissionEvent {}

class NotificationPermissionCheckEvent extends NotificationPermissionEvent {
  @override
  List<Object> get props => [];
}

class NotificationPermissionRequestEvent extends NotificationPermissionEvent {
  @override
  List<Object> get props => [];
}