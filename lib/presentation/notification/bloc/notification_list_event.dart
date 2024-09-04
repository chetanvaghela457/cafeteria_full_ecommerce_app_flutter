part of 'notification_list_bloc.dart';

@immutable
sealed class NotificationListEvent {}

class NotificationListInitialEvent extends NotificationListEvent {}

class NotificationBackClickEvent extends NotificationListEvent {}