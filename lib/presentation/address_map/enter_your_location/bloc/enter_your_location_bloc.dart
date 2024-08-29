import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/domain/repository/location_repository.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'enter_your_location_event.dart';

part 'enter_your_location_state.dart';

class EnterYourLocationBloc
    extends Bloc<EnterYourLocationEvent, EnterYourLocationState> {
  final LocationRepository locationRepository = LocationRepository();

  int addressType = 0;

  EnterYourLocationBloc() : super(EnterYourLocationInitial()) {
    on<LoadUserLocation>(_onLoadUserLocation);
    on<UpdateUserLocation>(_onUpdateUserLocation);
    on<SearchLocationEvent>(_onSearchLocation);
    on<EnterYourLocationAddressTypeSelectionEvent>(enterYourLocationAddressTypeSelectionEvent);
    on<SaveAddressClickedNavigationEvent>(saveAddressClickedNavigationEvent);
  }

  @override
  Stream<EnterYourLocationState> mapEventToState(EnterYourLocationEvent event) async* {
    if (event is EnterYourLocationAddressTypeSelectionEvent) {
      addressType = event.typeSelect;
      yield EnterYourLocationState();
    }
  }

  Future<void> _onLoadUserLocation(
      LoadUserLocation event, Emitter<EnterYourLocationState> emit) async {
    emit(LocationLoading());
    try {
      final position = await locationRepository.getUserCurrentLocation();
      final address = await locationRepository.getAddressFromLatLng(
          position.latitude, position.longitude);
      final markers = await locationRepository.getMarkers(
          position.latitude, position.longitude);
      final placemark = await locationRepository.getPlacemark(
          position.latitude, position.longitude);
      emit(LocationLoaded(
        position: LatLng(position.latitude, position.longitude),
        address: address,
        markers: markers,
        placemark: placemark,
      ));
    } catch (e) {
      emit(LocationError(e.toString()));
    }
  }

  Future<void> _onUpdateUserLocation(
      UpdateUserLocation event, Emitter<EnterYourLocationState> emit) async {
    try {
      final markers =
          await locationRepository.getMarkers(event.latitude, event.longitude);
      final address = await locationRepository.getAddressFromLatLng(
          event.latitude, event.longitude);
      final placemark = await locationRepository.getPlacemark(
          event.latitude, event.longitude);
      emit(LocationLoaded(
        position: LatLng(event.latitude, event.longitude),
        address: address,
        markers: markers,
        placemark: placemark,
      ));
    } catch (e) {
      emit(LocationError(e.toString()));
    }
  }

  Future<void> _onSearchLocation(
      SearchLocationEvent event, Emitter<EnterYourLocationState> emit) async {
    // Handle searching location here, similar to the above methods.
  }

  FutureOr<void> enterYourLocationAddressTypeSelectionEvent(
      EnterYourLocationAddressTypeSelectionEvent event,
      Emitter<EnterYourLocationState> emit) {
    addressType = event.typeSelect;
    emit(EnterYourLocationState());
  }

  FutureOr<void> saveAddressClickedNavigationEvent(SaveAddressClickedNavigationEvent event, Emitter<EnterYourLocationState> emit) {
    emit(SaveAddressClickedNavigationState());
  }
}
