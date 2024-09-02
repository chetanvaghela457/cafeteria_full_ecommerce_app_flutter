import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'your_profile_event.dart';

part 'your_profile_state.dart';

class YourProfileBloc extends Bloc<YourProfileEvent, YourProfileState> {
  YourProfileBloc() : super(YourProfileInitial()) {
    on<YourProfileBackClickEvent>(yourProfileBackClickEvent);
    on<YourProfileButtonClickEvent>(yourProfileButtonClickEvent);
    on<YourProfileSelectImageClickEvent>(yourProfileSelectImageClickEvent);
  }

  FutureOr<void> yourProfileBackClickEvent(
      YourProfileBackClickEvent event, Emitter<YourProfileState> emit) {
    emit(YourProfileBackClickState());
  }

  FutureOr<void> yourProfileButtonClickEvent(
      YourProfileButtonClickEvent event, Emitter<YourProfileState> emit) {
    emit(YourProfileButtonClickState());
  }

  FutureOr<void> yourProfileSelectImageClickEvent(
      YourProfileSelectImageClickEvent event, Emitter<YourProfileState> emit) {
    emit(YourProfileSelectImageClickState());
  }
}
