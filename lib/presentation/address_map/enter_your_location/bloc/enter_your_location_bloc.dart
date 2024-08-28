import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'enter_your_location_event.dart';
part 'enter_your_location_state.dart';

class EnterYourLocationBloc extends Bloc<EnterYourLocationEvent, EnterYourLocationState> {
  EnterYourLocationBloc() : super(EnterYourLocationInitial()) {
    on<EnterYourLocationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
