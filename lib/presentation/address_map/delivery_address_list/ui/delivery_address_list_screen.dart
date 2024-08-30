import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/bloc/delivery_address_list_bloc.dart';
import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/models/address_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliveryAddressListScreen extends StatefulWidget {
  const DeliveryAddressListScreen({super.key});

  @override
  State<DeliveryAddressListScreen> createState() =>
      _DeliveryAddressListScreenState();
}

class _DeliveryAddressListScreenState extends State<DeliveryAddressListScreen> {
  DeliveryAddressListBloc deliveryAddressListBloc = DeliveryAddressListBloc();

  List<AddressModel> addressData = [];

  @override
  void initState() {
    deliveryAddressListBloc.add(DeliveryAddressListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(deliveryAddressListBloc),
                  Expanded(
                    child: BlocConsumer<DeliveryAddressListBloc,
                        DeliveryAddressListState>(
                      bloc: deliveryAddressListBloc,
                      listenWhen: (previous, current) =>
                          current is DeliveryAddressBackClickActionState,
                      buildWhen: (previous, current) =>
                          current is! DeliveryAddressBackClickActionState,
                      listener: (context, state) {
                        if (state is DeliveryAddressBackClickActionState) {
                          Navigator.pop(context);
                        }
                      },
                      builder: (context, state) {
                        switch (state.runtimeType) {
                          case DeliveryAddressListLoadingState:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );

                          case DeliveryAddressListErrorState:
                            return Center(
                              child: Text(
                                "Error While Loading Data",
                                style: TextStyle(color: AppColors.primary),
                              ),
                            );

                          case DeliveryAddressListLoadedSuccessState:
                            final successState =
                                state as DeliveryAddressListLoadedSuccessState;

                            addressData = successState.addressData;
                            return addressView(addressData, state);

                          case DeliveryAddressListState:
                            final successState =
                                state as DeliveryAddressListState;
                            return addressView(addressData, successState);

                          default:
                            return SizedBox();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                deliveryAddressListBloc
                    .add(DeliveryAddressApplyClickActionEvent());
              },
              child: Container(
                height: getProportionateScreenWidth(80),
                decoration: BoxDecoration(
                    color: AppColors.clrWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.clrBlack.withAlpha(29),
                          blurRadius: 1,
                          spreadRadius: 1),
                    ]),
                child: Center(
                  child: Container(
                    width: SizeConfig.screenWidth * 0.9,
                    padding: EdgeInsets.only(
                        top: getProportionateScreenHeight(10),
                        bottom: getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      Strings.apply,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.clrWhite,
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenWidth(17)),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget addressView(
      List<AddressModel> addressData, DeliveryAddressListState state) {
    return Column(
      children: [
        for (int i = 0; i < addressData.length; i++)
          GestureDetector(
            onTap: () {
              deliveryAddressListBloc
                  .add(DeliveryAddressListSelectionEvent(selectedAddress: i));
            },
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(15),
                      right: getProportionateScreenWidth(15),
                      top: getProportionateScreenHeight(10),
                      bottom: getProportionateScreenHeight(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              Assets.imgMapPointGreen,
                              width: getProportionateScreenWidth(25),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(7),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    addressData[i].type.toString(),
                                    style: TextStyle(
                                        color: AppColors.clrBlack,
                                        fontSize:
                                            getProportionateScreenWidth(15),
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    addressData[i].address.toString(),
                                    style: TextStyle(
                                        color: AppColors.clrGrey,
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        width: SizeConfig.screenWidth * 0.75,
                      ),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: () {
                            deliveryAddressListBloc.add(
                                DeliveryAddressListSelectionEvent(
                                    selectedAddress: i));
                          },
                          child: Container(
                            margin: const EdgeInsets.all(4),
                            padding: const EdgeInsets.all(4),
                            child: Icon(
                              state.initialAddressSelection == i
                                  ? Icons.radio_button_checked
                                  : Icons.circle_outlined,
                              size: getProportionateScreenWidth(20),
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8, bottom: 8),
                  width: SizeConfig.screenWidth * 0.9,
                  height: 0.5,
                  color: AppColors.clrLightGrey,
                )
              ],
            ),
          ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        GestureDetector(
          onTap: () {
            deliveryAddressListBloc
                .add(DeliveryAddressAddNewClickActionEvent());
          },
          child: DottedBorder(
            dashPattern: [7, 4],
            strokeWidth: 1,
            color: AppColors.primary,
            borderType: BorderType.RRect,
            radius: Radius.circular(getProportionateScreenWidth(15)),
            child: Container(
              width: SizeConfig.screenWidth * 0.9,
              padding: EdgeInsets.only(
                  top: getProportionateScreenHeight(15),
                  bottom: getProportionateScreenHeight(15)),
              decoration: BoxDecoration(
                color: AppColors.clrWhite,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Text(
                Strings.addNewDeliveryAddress,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: getProportionateScreenWidth(13)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  DeliveryAddressListBloc deliveryAddressListBloc;

  AppBar(
    this.deliveryAddressListBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                deliveryAddressListBloc
                    .add(DeliveryAddressBackClickActionEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.deliveryAddress,
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
