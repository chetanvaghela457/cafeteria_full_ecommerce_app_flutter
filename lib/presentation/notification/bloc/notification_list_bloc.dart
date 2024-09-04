import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/data/notification_data.dart';
import 'package:coffeeshopapp/domain/repository/notification_repository.dart';
import 'package:coffeeshopapp/presentation/notification/models/notification_model.dart';
import 'package:meta/meta.dart';

part 'notification_list_event.dart';
part 'notification_list_state.dart';

class NotificationListBloc extends Bloc<NotificationListEvent, NotificationListState> {

  final NotificationRepository notificationRepository = NotificationRepository();

  NotificationListBloc() : super(NotificationListInitial()) {
    on<NotificationListInitialEvent>(notificationListInitialEvent);
    on<NotificationBackClickEvent>(notificationBackClickEvent);
  }

  FutureOr<void> notificationListInitialEvent(NotificationListInitialEvent event, Emitter<NotificationListState> emit) async {
    emit(NotificationListLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(NotificationListLoadedSuccessState(
      notificationRepository.groupNotificationsByDate(NotificationData.notifications),
    ));
  }

  FutureOr<void> notificationBackClickEvent(NotificationBackClickEvent event, Emitter<NotificationListState> emit) {
    emit(NotificationBackClickState());
  }
}
