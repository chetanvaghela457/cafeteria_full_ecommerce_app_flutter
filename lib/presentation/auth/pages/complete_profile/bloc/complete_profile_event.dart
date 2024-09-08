part of 'complete_profile_bloc.dart';

@immutable
sealed class CompleteProfileEvent {}

class CompleteProfileBackClickEvent extends CompleteProfileEvent {}
class CompleteProfileButtonClickEvent extends CompleteProfileEvent {}

class CompleteProfileSelectImageClickEvent extends CompleteProfileEvent {}

class CompleteProfileNameChanged extends CompleteProfileEvent {
  final String name;

  CompleteProfileNameChanged(this.name);
}

class CompleteProfileNumberChanged extends CompleteProfileEvent {
  final String phoneNumber;

  CompleteProfileNumberChanged(this.phoneNumber);
}

class CompleteProfileGenderSelected extends CompleteProfileEvent {
  final int gender;

  CompleteProfileGenderSelected(this.gender);
}

class CompleteProfileSubmitted extends CompleteProfileEvent {

  String name = "";
  String phoneNumber= "";
  String gender= "";

  CompleteProfileSubmitted(this.name, this.phoneNumber, this.gender);
}