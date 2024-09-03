part of 'order_placed_bloc.dart';

@immutable
sealed class OrderPlacedState {}

final class OrderPlacedInitial extends OrderPlacedState {}

abstract class OrderPlacedActionState extends OrderPlacedState {}

class OrderPlacedViewOrderClickState extends OrderPlacedActionState {}

class OrderPlacedViewReceiptClickState extends OrderPlacedActionState {}
class OrderPlacedBackClickState extends OrderPlacedActionState {}
