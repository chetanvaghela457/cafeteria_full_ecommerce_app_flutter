part of 'complete_profile_bloc.dart';

@immutable
sealed class CompleteProfileEvent {}

class CompleteProfileBackClickEvent extends CompleteProfileEvent {}
class CompleteProfileButtonClickEvent extends CompleteProfileEvent {}
class CompleteProfileSelectImageClickEvent extends CompleteProfileEvent {}