part of 'notification_list_bloc.dart';

@immutable
sealed class NotificationListState {}

final class NotificationListInitial extends NotificationListState {}

abstract class NotificationListActionState extends NotificationListState {}

class NotificationListLoadingState extends NotificationListState {}

class NotificationListLoadedSuccessState extends NotificationListState {
  final Map<String, List<Map<String, dynamic>>> notificationListData;

  NotificationListLoadedSuccessState(this.notificationListData);
}

class NotificationListErrorState extends NotificationListState {}

class NotificationBackClickState extends NotificationListActionState {}