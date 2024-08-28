part of 'get_started_bloc.dart';

@immutable
sealed class GetStartedEvent {}

class GetStartedIntroPageNavigationEvent extends GetStartedEvent {}
class GetStartedLoginPageNavigationEvent extends GetStartedEvent {}
