part of 'your_profile_bloc.dart';

@immutable
sealed class YourProfileEvent {}

class YourProfileBackClickEvent extends YourProfileEvent {}
class YourProfileButtonClickEvent extends YourProfileEvent {}
class YourProfileSelectImageClickEvent extends YourProfileEvent {}