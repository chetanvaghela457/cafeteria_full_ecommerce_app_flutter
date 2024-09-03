part of 'order_placed_bloc.dart';

@immutable
sealed class OrderPlacedEvent {}

class OrderPlacedViewOrderClickEvent extends OrderPlacedEvent {}

class OrderPlacedViewReceiptClickEvent extends OrderPlacedEvent {}
class OrderPlacedBackClickEvent extends OrderPlacedEvent {}
