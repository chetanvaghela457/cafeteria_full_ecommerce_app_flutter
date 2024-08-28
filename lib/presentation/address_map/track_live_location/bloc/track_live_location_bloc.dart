import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'track_live_location_event.dart';
part 'track_live_location_state.dart';

class TrackLiveLocationBloc extends Bloc<TrackLiveLocationEvent, TrackLiveLocationState> {
  TrackLiveLocationBloc() : super(TrackLiveLocationInitial()) {
    on<TrackLiveLocationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
