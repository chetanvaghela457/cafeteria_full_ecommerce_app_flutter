import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'complete_profile_event.dart';

part 'complete_profile_state.dart';

class CompleteProfileBloc
    extends Bloc<CompleteProfileEvent, CompleteProfileState> {
  CompleteProfileBloc() : super(CompleteProfileInitial()) {
    on<CompleteProfileBackClickEvent>(completeProfileBackClickEvent);
    on<CompleteProfileButtonClickEvent>(completeProfileButtonClickEvent);
    on<CompleteProfileSelectImageClickEvent>(
        completeProfileSelectImageClickEvent);
  }

  FutureOr<void> completeProfileBackClickEvent(
      CompleteProfileBackClickEvent event, Emitter<CompleteProfileState> emit) {
    emit(CompleteProfileBackClickState());
  }

  FutureOr<void> completeProfileButtonClickEvent(
      CompleteProfileButtonClickEvent event,
      Emitter<CompleteProfileState> emit) {
    emit(CompleteProfileButtonClickState());
  }

  FutureOr<void> completeProfileSelectImageClickEvent(
      CompleteProfileSelectImageClickEvent event,
      Emitter<CompleteProfileState> emit) {
    emit(CompleteProfileSelectImageClickState());
  }
}
