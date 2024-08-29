import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/discover/bloc/discover_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/restaurant_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final DiscoverBloc discoverBloc = DiscoverBloc();

  @override
  void initState() {
    discoverBloc.add(LoadMap());
    discoverBloc.add(LoadMarkers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<DiscoverBloc, DiscoverState>(
          bloc: discoverBloc,
          listenWhen: (previous, current) => current is DiscoverActionEvent,
          buildWhen: (previous, current) => current is! DiscoverActionEvent,
          listener: (context, state) {
            if (state is DiscoverSearchClickActionState) {

            } else if (state is DiscoverSearchClickActionState) {

            }
          },
          builder: (context, state) {
            // final bloc = BlocProvider.of<DiscoverBloc>(context);
            if (state is LoadingState) {
              return Center(child: CircularProgressIndicator());
            } else if (state is MapWithMarkersLoaded) {
              return Container(
                margin: EdgeInsets.only(bottom: 80),
                child: Stack(
                  children: <Widget>[
                    _buildGoogleMap(
                        context, discoverBloc, state.mapStyle, state.markers),
                    _buildSearchView(context),
                    _buildContainer(context, state.markers),
                  ],
                ),
              );
            } else {
              return Center(child: Text("Map is loading..."));
            }
          },
        ),
      ),
    );
  }

  Widget _zoomMinusFunction(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: Icon(Icons.remove, color: Colors.black),
        onPressed: () {
          discoverBloc.add(ZoomOut());
        },
      ),
    );
  }

  Widget _zoomPlusFunction(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: Icon(Icons.add, color: Colors.black),
        onPressed: () {
          discoverBloc.add(ZoomIn());
        },
      ),
    );
  }

  Widget _buildContainer(
      BuildContext context, Map<Restaurant, Marker> markers) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: getProportionateScreenHeight(250),
        child: ListView.builder(
          itemCount: markers.keys.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final Marker marker = markers.values.elementAt(index);
            final Restaurant restaurant = markers.keys.elementAt(index);
            return _boxes(context, marker, restaurant);
          },
        ),
      ),
    );
  }

  Widget _buildSearchView(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            discoverBloc.add(DiscoverSearchClickActionEvent());
          },
          child: Container(
              width: SizeConfig.screenWidth * 0.8,
              height: getProportionateScreenHeight(45),
              decoration: BoxDecoration(
                  color: AppColors.clrWhite,
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  SvgPicture.asset(
                    Assets.imgSearchGreen,
                    width: getProportionateScreenWidth(25),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    Strings.searchCafe,
                    style: TextStyle(
                        color: AppColors.clrGrey,
                        fontSize: getProportionateScreenWidth(13)),
                  ),
                ],
              )),
        ),
        GestureDetector(
          onTap: () {
            discoverBloc.add(DiscoverFilterClickActionEvent());
          },
          child: SvgPicture.asset(
            Assets.imgFilterGreen,
            width: getProportionateScreenWidth(37),
          ),
        )
      ],
    );
  }

  Widget _boxes(BuildContext context, Marker marker, Restaurant restaurant) {
    return GestureDetector(
      onTap: () {
        discoverBloc.add(GotoLocation(
          lat: marker.position.latitude,
          long: marker.position.longitude,
        ));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: FittedBox(
          child: RestaurantItem(restaurant),
        ),
      ),
    );
  }

  Widget _buildGoogleMap(BuildContext context, DiscoverBloc bloc,
      String mapStyle, Map<Restaurant, Marker> markers) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        zoomControlsEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: true,
        mapType: MapType.terrain,
        initialCameraPosition:
            CameraPosition(target: LatLng(34.226764, -118.574085), zoom: 15),
        onMapCreated: (GoogleMapController controller) {
          bloc.controller.complete(controller);
          // controller.setMapStyle(mapStyle);
        },
        markers: Set<Marker>.of(markers.values),
      ),
    );
  }
}
