part of 'get_started_bloc.dart';

@immutable
sealed class GetStartedState {}

abstract class GetStartedActionState extends GetStartedState {}

final class GetStartedInitial extends GetStartedState {}

class GetStartedNavigateIntroActionState extends GetStartedActionState {}
class GetStartedNavigateLoginActionState extends GetStartedActionState {}
