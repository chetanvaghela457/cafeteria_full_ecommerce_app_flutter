import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'get_direction_event.dart';
part 'get_direction_state.dart';

class GetDirectionBloc extends Bloc<GetDirectionEvent, GetDirectionState> {
  GetDirectionBloc() : super(GetDirectionInitial()) {
    on<GetDirectionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
