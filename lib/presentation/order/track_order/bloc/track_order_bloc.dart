import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'track_order_event.dart';
part 'track_order_state.dart';

class TrackOrderBloc extends Bloc<TrackOrderEvent, TrackOrderState> {
  TrackOrderBloc() : super(TrackOrderInitial()) {
    on<TrackOrderEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
