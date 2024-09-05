import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/delivery_address_list/models/address_model.dart';
import 'package:coffeeshopapp/presentation/address_map/manage_address/bloc/manage_address_bloc.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ManageAddressScreen extends StatefulWidget {
  const ManageAddressScreen({super.key});

  @override
  State<ManageAddressScreen> createState() => _ManageAddressScreenState();
}

class _ManageAddressScreenState extends State<ManageAddressScreen> {
  ManageAddressBloc manageAddressBloc = ManageAddressBloc();

  List<AddressModel> addressData = [];

  @override
  void initState() {
    manageAddressBloc.add(ManageAddressInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(manageAddressBloc),
              Expanded(
                child: BlocConsumer<ManageAddressBloc, ManageAddressState>(
                  bloc: manageAddressBloc,
                  listenWhen: (previous, current) =>
                      current is ManageAddressActionState,
                  buildWhen: (previous, current) =>
                      current is! ManageAddressActionState,
                  listener: (context, state) {
                    if (state is ManageAddressBackClickActionState) {
                      Navigator.pop(context);
                    }else if (state is ManageAddressAddNewClickActionState) {
                      Navigator.pushNamed(context, AppRouter.ENTER_LOCATION);
                    }
                  },
                  builder: (context, state) {
                    switch (state.runtimeType) {
                      case ManageAddressLoadingState:
                        return Container(
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );

                      case ManageAddressListErrorState:
                        return Center(
                          child: Text(
                            "Error While Loading Data",
                            style: TextStyle(color: AppColors.primary),
                          ),
                        );

                      case ManageAddressLoadedSuccessState:
                        final successState =
                            state as ManageAddressLoadedSuccessState;

                        addressData = successState.addressData;
                        return addressView(addressData, state);

                      case ManageAddressState:
                        final successState = state as ManageAddressState;
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
      ),
    );
  }

  Widget addressView(List<AddressModel> addressData, ManageAddressState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < addressData.length; i++)
          GestureDetector(
            onTap: () {
              // deliveryAddressListBloc
              //     .add(DeliveryAddressListSelectionEvent(selectedAddress: i));
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(15),
                      right: getProportionateScreenWidth(15),
                      top: getProportionateScreenHeight(10),
                      bottom: getProportionateScreenHeight(15)),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                    fontSize: getProportionateScreenWidth(15),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                addressData[i].address.toString(),
                                style: TextStyle(
                                    color: AppColors.clrGrey,
                                    fontSize: getProportionateScreenWidth(13),
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    width: SizeConfig.screenWidth * 0.9,
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
            manageAddressBloc.add(ManageAddressAddNewClickActionEvent());
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
  ManageAddressBloc manageAddressBloc;

  AppBar(
    this.manageAddressBloc, {
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
                manageAddressBloc.add(ManageAddressBackClickActionEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.manageAddress,
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
