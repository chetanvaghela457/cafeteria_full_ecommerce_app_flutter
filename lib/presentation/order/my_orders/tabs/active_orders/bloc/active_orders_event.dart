part of 'active_orders_bloc.dart';

@immutable
sealed class ActiveOrdersEvent {}


class ActiveOrdersInitialEvent extends ActiveOrdersEvent {}
class ActiveOrderNavigateTrackItemClickEvent extends ActiveOrdersEvent {}
class ActiveOrderNavigateCancelClickEvent extends ActiveOrdersEvent {}
class ActiveOrderNavigateClickEvent extends ActiveOrdersEvent {}