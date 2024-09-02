part of 'your_profile_bloc.dart';

@immutable
sealed class YourProfileState {}

final class YourProfileInitial extends YourProfileState {}

abstract class YourProfileActionState extends YourProfileState {}

class YourProfileBackClickState extends YourProfileActionState {}
class YourProfileButtonClickState extends YourProfileActionState {}
class YourProfileSelectImageClickState extends YourProfileActionState {}