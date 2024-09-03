part of 'notification_permission_bloc.dart';

@immutable
sealed class NotificationPermissionEvent {}

class NotificationPermissionAllowClickEvent extends NotificationPermissionEvent {}
class NotificationPermissionMayBeLaterClickEvent extends NotificationPermissionEvent {}