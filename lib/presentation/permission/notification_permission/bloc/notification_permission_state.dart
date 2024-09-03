part of 'notification_permission_bloc.dart';

@immutable
sealed class NotificationPermissionState {}

final class NotificationPermissionInitial extends NotificationPermissionState {}

abstract class NotificationPermissionActionState extends NotificationPermissionState {}

class NotificationPermissionAllowClickState extends NotificationPermissionActionState {}
class NotificationPermissionMayBeLaterClickState extends NotificationPermissionActionState {}