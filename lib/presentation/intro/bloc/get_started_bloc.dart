import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_started_event.dart';
part 'get_started_state.dart';

class GetStartedBloc extends Bloc<GetStartedEvent, GetStartedState> {
  GetStartedBloc() : super(GetStartedInitial()) {
    on<GetStartedIntroPageNavigationEvent>(getStartedIntroPageNavigationEvent);
    on<GetStartedLoginPageNavigationEvent>(getStartedLoginPageNavigationEvent);
  }

  FutureOr<void> getStartedIntroPageNavigationEvent(GetStartedIntroPageNavigationEvent event, Emitter<GetStartedState> emit) {
    emit(GetStartedNavigateIntroActionState());
  }

  FutureOr<void> getStartedLoginPageNavigationEvent(GetStartedLoginPageNavigationEvent event, Emitter<GetStartedState> emit) {
    emit(GetStartedNavigateLoginActionState());
  }
}
