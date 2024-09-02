part of 'complete_profile_bloc.dart';

@immutable
sealed class CompleteProfileState {}

final class CompleteProfileInitial extends CompleteProfileState {}

abstract class CompleteProfileActionState extends CompleteProfileState {}

class CompleteProfileBackClickState extends CompleteProfileActionState {}
class CompleteProfileButtonClickState extends CompleteProfileActionState {}
class CompleteProfileSelectImageClickState extends CompleteProfileActionState {}