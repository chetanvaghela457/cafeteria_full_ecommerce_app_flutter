import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/domain/repository/location_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'get_direction_event.dart';

part 'get_direction_state.dart';

class GetDirectionBloc extends Bloc<GetDirectionEvent, GetDirectionState> {
  final LocationRepository locationRepository = LocationRepository();

  GetDirectionBloc() : super(GetDirectionInitial()) {
    on<GetDirectionLoadUserLocation>(_onLoadUserLocation);
    on<GetDirectionBackClickEvent>(getDirectionBackClickEvent);
    on<GetDirectionStartClickEvent>(getDirectionStartClickEvent);
    // on<GetDirectionUpdateUserLocation>(_onUpdateUserLocation);
  }

  Future<void> _onLoadUserLocation(GetDirectionLoadUserLocation event,
      Emitter<GetDirectionState> emit) async {
    emit(GetDirectionLocationLoading());
    try {
      final position = await locationRepository.getUserCurrentLocation();
      final address = await locationRepository.getAddressFromLatLng(
          position.latitude, position.longitude);
      final markers = await locationRepository.getMarkers(
          37.4010984, -122.0830227);
      final placemark = await locationRepository.getPlacemark(
          position.latitude, position.longitude);

      final Map<PolylineId, Polyline> polylines = {};

      final polylineLtLg = await locationRepository.fetchPolylinePoints(
          position.latitude, position.longitude, 37.4010984, -122.0830227);

      PolylineId id = PolylineId("polyline");

      final polyline =
          await locationRepository.generatePolyLineFromPoints(polylineLtLg);
      // Polyline polyline = Polyline(
      //     polylineId: id, color: Colors.red, points: polylineLtLg);
      polylines[id] = polyline;

      emit(GetDirectionLocationLoaded(
          position: LatLng(position.latitude, position.longitude),
          address: address,
          markers: markers,
          placemark: placemark,
          polylines: polylines));
    } catch (e) {
      emit(GetDirectionLocationError(e.toString()));
    }
  }

// Future<void> _onUpdateUserLocation(GetDirectionUpdateUserLocation event,
//     Emitter<GetDirectionState> emit) async {
//   try {
//     final markers =
//         await locationRepository.getMarkers(event.latitude, event.longitude);
//     final address = await locationRepository.getAddressFromLatLng(
//         event.latitude, event.longitude);
//     final placemark = await locationRepository.getPlacemark(
//         event.latitude, event.longitude);
//     emit(GetDirectionLocationLoaded(
//       position: LatLng(event.latitude, event.longitude),
//       address: address,
//       markers: markers,
//       placemark: placemark,
//     ));
//   } catch (e) {
//     emit(GetDirectionLocationError(e.toString()));
//   }
// }

  FutureOr<void> getDirectionBackClickEvent(GetDirectionBackClickEvent event, Emitter<GetDirectionState> emit) {
    emit(GetDirectionBackClickState());
  }

  FutureOr<void> getDirectionStartClickEvent(GetDirectionStartClickEvent event, Emitter<GetDirectionState> emit) {
    emit(GetDirectionStartClickState());
  }
}
