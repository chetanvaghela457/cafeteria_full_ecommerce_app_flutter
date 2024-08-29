import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/data/restaurant_data.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/utils/marker.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';
import 'dart:ui' as ui;

part 'discover_event.dart';

part 'discover_state.dart';

class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  Completer<GoogleMapController> controller = Completer();
  String mapStyle = "";
  Map<Restaurant, Marker> markers = {};

  DiscoverBloc() : super(DiscoverInitial()) {
    on<LoadMap>((event, emit) async {
      emit(LoadingState());

      // Load the map style
      mapStyle = await rootBundle.loadString('assets/dark_map_style.json');

      // Check if markers are already loaded to emit combined state
      if (markers.isNotEmpty) {
        emit(MapWithMarkersLoaded(mapStyle: mapStyle, markers: markers));
      } else {
        emit(MapLoaded(mapStyle: mapStyle));
      }
    });

    on<LoadMarkers>((event, emit) async {
      emit(LoadingState());

      // Load markers
      markers = await _loadMarkers(); // Your logic for loading markers

      // Check if the map style is already loaded to emit combined state
      if (mapStyle.isNotEmpty) {
        emit(MapWithMarkersLoaded(mapStyle: mapStyle, markers: markers));
      } else {
        emit(MarkersLoaded(markers: markers));
      }
    });

    on<ZoomIn>((event, emit) async {
      if (controller.isCompleted) {
        final GoogleMapController mapController = await controller.future;
        mapController.animateCamera(CameraUpdate.zoomIn());
      }
    });

    on<ZoomOut>((event, emit) async {
      if (controller.isCompleted) {
        final GoogleMapController mapController = await controller.future;
        mapController.animateCamera(CameraUpdate.zoomOut());
      }
    });

    on<GotoLocation>((event, emit) async {
      if (controller.isCompleted) {
        final GoogleMapController mapController = await controller.future;
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(event.lat, event.long),
              zoom: 15,
              tilt: 50.0,
              bearing: 45.0,
            ),
          ),
        );
      }
    });

    on<DiscoverSearchClickActionEvent>(discoverSearchClickActionEvent);
    on<DiscoverFilterClickActionEvent>(discoverFilterClickActionEvent);
  }

  Future<BitmapDescriptor> getCustomIcon() async {
    return SizedBox(
      height: 200,
      width: 200,
      child: SvgPicture.asset(Assets.imgMapPointGreen),
    ).toBitmapDescriptor();
  }

  Future<Map<Restaurant, Marker>> _loadMarkers() async {
    final markers = await _createMarkers();
    log(markers.toString());
    emit(MarkersLoaded(markers: markers));
    return markers;
  }

  Future<Uint8List> getImages(String path, int width) async{
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetHeight: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return(await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();

  }

  Future<Map<Restaurant, Marker>> _createMarkers() async {
    List<Restaurant> restaurantData = RestaurantData.restaurantData
        .map((e) => Restaurant.fromJson(e))
        .toList();

    Map<Restaurant, Marker> markers = {};
    for (int i = 0; i < restaurantData.length; i++) {
      final MarkerId markerId = MarkerId(restaurantData[i].id.toString());

      final Uint8List markIcons = await getImages("assets/images/map_marker.png", 200);
      final Marker marker = Marker(
        markerId: markerId,
        position:
            LatLng(restaurantData[i].latitude!, restaurantData[i].longitude!),
        icon: BitmapDescriptor.fromBytes(markIcons),
        // Replace this with your custom icon logic
        infoWindow: InfoWindow(
          title: restaurantData[i].name,

          snippet: restaurantData[i].description,
        ),
        onTap: () {},
      );
      markers[restaurantData[i]] = marker;
    }
    return markers;
  }

  FutureOr<void> discoverSearchClickActionEvent(DiscoverSearchClickActionEvent event, Emitter<DiscoverState> emit) {
    emit(DiscoverSearchClickActionState());
  }

  FutureOr<void> discoverFilterClickActionEvent(DiscoverFilterClickActionEvent event, Emitter<DiscoverState> emit) {
    emit(DiscoverFilterClickActionState());
  }
}
