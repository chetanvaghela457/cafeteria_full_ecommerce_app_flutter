import 'dart:async';

import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/get_direction/bloc/get_direction_bloc.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetDirectionScreen extends StatefulWidget {
  const GetDirectionScreen({super.key});

  @override
  State<GetDirectionScreen> createState() => _GetDirectionScreenState();
}

class _GetDirectionScreenState extends State<GetDirectionScreen> {
  final Completer<GoogleMapController> _controller = Completer();
  GetDirectionBloc getDirectionBloc = GetDirectionBloc();

  @override
  void initState() {
    getDirectionBloc.add(GetDirectionLoadUserLocation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              AppBar(getDirectionBloc),
              Expanded(
                child: BlocConsumer<GetDirectionBloc, GetDirectionState>(
                  bloc: getDirectionBloc,
                  listenWhen: (previous, current) =>
                      current is GetDirectionActionState,
                  buildWhen: (previous, current) =>
                      current is! GetDirectionActionState,
                  listener: (context, state) {
                    if (state is GetDirectionBackClickState) {
                      Navigator.pop(context);
                    } else if (state is GetDirectionStartClickState) {
                      Navigator.pushNamed(
                        context,
                        AppRouter.PICKUP_LOCATION,
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is GetDirectionLocationLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is GetDirectionLocationLoaded) {
                      return Stack(
                        children: [
                          GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: state.position,
                              zoom: 14.4746,
                            ),
                            markers: Set<Marker>.of(state.markers),
                            polylines: Set<Polyline>.of(state.polylines.values),
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                            },
                            myLocationEnabled: true,
                            compassEnabled: false,
                            zoomControlsEnabled: false,
                            myLocationButtonEnabled: false,
                            mapType: MapType.terrain,
                            onCameraIdle: () {
                              // Handle on camera idle if needed
                            },
                            onCameraMove: (position) {
                              print(position.target.latitude);
                              print(position.target.longitude);
                            },
                          ),
                          Positioned(
                              bottom: getProportionateScreenHeight(100),
                              left: 10,
                              right: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: AppColors.clrBlack.withAlpha(29),
                                          blurRadius: 10,
                                          spreadRadius: 10),
                                    ]),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      Assets.imgMapPointGreen,
                                      width: getProportionateScreenWidth(25),
                                    ),
                                    Expanded(
                                      child: Text(
                                        state.address,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: AppColors.clrBlack,
                                            fontSize:
                                                getProportionateScreenWidth(13)),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          // Add your widgets here for search places, address selection, etc.
                        ],
                      );
                    } else if (state is GetDirectionLocationError) {
                      return Center(child: Text(state.message));
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: CommonButton(
                            onPressed: () {
                              getDirectionBloc
                                  .add(GetDirectionStartClickEvent());
                            },
                            fontSize: getProportionateScreenWidth(15),
                            title: Strings.start)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  GetDirectionBloc getDirectionBloc;

  AppBar(
    this.getDirectionBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: getProportionateScreenHeight(56),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                getDirectionBloc.add(GetDirectionBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.getDirection,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ]),
    );
  }
}
