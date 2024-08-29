import 'dart:async';

import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/bloc/enter_your_location_bloc.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/widgets/address_bottom_sheet.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/widgets/searchFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class EnterYourLocationScreen extends StatefulWidget {
  const EnterYourLocationScreen({super.key});

  @override
  State<EnterYourLocationScreen> createState() =>
      _EnterYourLocationScreenState();
}

class _EnterYourLocationScreenState extends State<EnterYourLocationScreen> {
  final Completer<GoogleMapController> _controller = Completer();

  EnterYourLocationBloc enterYourLocationBloc = EnterYourLocationBloc();

  @override
  void initState() {
    enterYourLocationBloc.add(LoadUserLocation());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Expanded(
                child:
                    BlocConsumer<EnterYourLocationBloc, EnterYourLocationState>(
                  bloc: enterYourLocationBloc,
                  listenWhen: (previous, current) =>
                      current is EnterYourLocationActionState,
                  buildWhen: (previous, current) =>
                      current is! EnterYourLocationActionState,
                  listener: (context, state) {
                    if (state is SaveAddressClickedNavigationState) {
                      Navigator.of(context).pop();
                      Navigator.pushNamed(
                        context,
                        AppRouter.DASHBOARD,
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is LocationLoading) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is LocationLoaded) {
                      return Stack(
                        children: [
                          GoogleMap(
                            initialCameraPosition: CameraPosition(
                              target: state.position,
                              zoom: 14.4746,
                            ),
                            markers: Set<Marker>.of(state.markers),
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
                              enterYourLocationBloc.add(
                                UpdateUserLocation(
                                  position.target.latitude,
                                  position.target.longitude,
                                ),
                              );
                            },
                          ),
                          Positioned(
                            child: _buildSearchView(context),
                            top: getProportionateScreenHeight(60),
                            left: 10,
                            right: 10,
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
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
                                    const Text(Strings.addAddress,
                                        style: TextStyle(
                                            color: AppColors.clrBlack,
                                            fontSize: 14)),
                                    const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                            Assets.imgMapPointGreen,
                                            height: 24,
                                            width: 24),
                                        const SizedBox(width: 6),
                                        Flexible(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                state.placemark.locality
                                                    .toString(),
                                                style: TextStyle(
                                                    color: AppColors.clrBlack,
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            15),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "${state.placemark.street.toString()} ${state.placemark.subLocality.toString()} ${state.placemark.locality.toString()} ${state.placemark.postalCode.toString()} ${state.placemark.country.toString()}",
                                                style: TextStyle(
                                                    color: AppColors.clrGrey,
                                                    fontSize:
                                                        getProportionateScreenWidth(
                                                            12),
                                                    fontWeight:
                                                        FontWeight.normal),
                                              )
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                        child: CommonButton(
                                            onPressed: () {
                                              showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: true,
                                                builder: (context) =>
                                                    BlocProvider.value(
                                                  // Use existing BLoC instance
                                                  value: enterYourLocationBloc,
                                                  child: AddressBottomSheet(
                                                      "${state.placemark.street.toString()} ${state.placemark.subLocality.toString()} ${state.placemark.locality.toString()} ${state.placemark.postalCode.toString()} ${state.placemark.country.toString()}",
                                                      state.placemark.postalCode
                                                          .toString(),
                                                      state.placemark.locality
                                                          .toString()), // BottomSheet widget to input address fields
                                                ),
                                              );
                                              // loginBloc.add(LoginSingInButtonNavigateEvent());
                                            },
                                            fontSize:
                                                getProportionateScreenWidth(15),
                                            title: Strings.confirmLocation)),
                                  ],
                                ),
                              ))
                          // Add your widgets here for search places, address selection, etc.
                        ],
                      );
                    } else if (state is LocationError) {
                      return Center(child: Text(state.message));
                    }
                    return const SizedBox.shrink();
                  },
                ),
              ),
              AppBar(enterYourLocationBloc),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchView(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // discoverBloc.add(DiscoverSearchClickActionEvent());
      },
      child: Center(
        child: SearchFieldwidget(
          width: SizeConfig.screenWidth * 0.9,
          height: getProportionateScreenHeight(45),
          hintText: "Golden Avenue",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(
              Assets.imgSearchGreen,
              width: getProportionateScreenWidth(25),
            ),
          ),
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  EnterYourLocationBloc enterYourLocationBloc;

  AppBar(
    this.enterYourLocationBloc, {
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
                Navigator.pop(context);
                // enterYourLocationBloc.add(CartBackClickActionEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.enterYourLocation,
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
