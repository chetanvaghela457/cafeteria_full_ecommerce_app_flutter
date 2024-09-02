import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'location_permission_event.dart';
part 'location_permission_state.dart';

class LocationPermissionBloc extends Bloc<LocationPermissionEvent, LocationPermissionState> {
  LocationPermissionBloc() : super(LocationPermissionInitial()) {
    on<LocationPermissionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
