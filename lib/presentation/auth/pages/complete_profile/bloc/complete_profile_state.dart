part of 'complete_profile_bloc.dart';

@immutable
sealed class CompleteProfileState {}

final class CompleteProfileInitial extends CompleteProfileState {}

abstract class CompleteProfileActionState extends CompleteProfileState {}

class CompleteProfileBackClickState extends CompleteProfileActionState {}
class CompleteProfileButtonClickState extends CompleteProfileActionState {}

class CompleteProfileValid extends CompleteProfileState {}

class CompleteProfileInvalid extends CompleteProfileState {
  final String message;
  CompleteProfileInvalid(this.message);
}

class ImagePickerInitial extends CompleteProfileState {}

class PermissionGrantedState extends CompleteProfileState {}

class PermissionDeniedState extends CompleteProfileState {}

class CompleteProfileImagePickedState extends CompleteProfileActionState {
  final File imageFile;

  CompleteProfileImagePickedState(this.imageFile);
}

class CompleteProfileErrorState extends CompleteProfileActionState {
  final String message;

  CompleteProfileErrorState (this.message);
}