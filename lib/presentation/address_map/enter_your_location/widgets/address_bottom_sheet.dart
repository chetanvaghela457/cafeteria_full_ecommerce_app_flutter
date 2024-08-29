import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/bloc/enter_your_location_bloc.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressBottomSheet extends StatelessWidget {
  EnterYourLocationBloc enterYourLocationBloc = EnterYourLocationBloc();

  String? fullAddress = "";
  String? postCode = "";
  String? landmark = "";

  AddressBottomSheet(this.fullAddress, this.postCode, this.landmark,
      {super.key});

  TextEditingController completeAddressController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();

  List<String> addressTypeArray = [
    "Home",
    "Office",
    "Parent's House",
    "Farm House",
    "Other"
  ];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setS) {
      completeAddressController.text = fullAddress.toString();
      postCodeController.text = postCode.toString();
      landmarkController.text = landmark.toString();

      return BlocConsumer<EnterYourLocationBloc, EnterYourLocationState>(
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
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  margin:
                      EdgeInsets.only(bottom: getProportionateScreenWidth(5)),
                  height: getProportionateScreenHeight(35),
                  width: getProportionateScreenHeight(35),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.primary),
                  child: const Icon(Icons.close, color: AppColors.clrWhite),
                ),
              ),
              Flexible(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 1.6,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                        color: AppColors.clrWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 20, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  Strings.saveAddressAs,
                                  style: TextStyle(
                                      fontSize: getProportionateScreenWidth(12),
                                      color: AppColors.clrGrey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15, left: 15),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (var i = 0;
                                      i < addressTypeArray.length;
                                      i++)
                                    GestureDetector(
                                      onTap: () {
                                        enterYourLocationBloc.add(
                                            EnterYourLocationAddressTypeSelectionEvent(
                                                typeSelect: i));
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(5),
                                            right:
                                                getProportionateScreenWidth(5),
                                            top:
                                                getProportionateScreenWidth(5)),
                                        padding: EdgeInsets.only(
                                            left:
                                                getProportionateScreenWidth(20),
                                            right:
                                                getProportionateScreenWidth(20),
                                            top: getProportionateScreenWidth(5),
                                            bottom:
                                                getProportionateScreenWidth(5)),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: i ==
                                                  enterYourLocationBloc
                                                      .addressType
                                              ? AppColors.primary
                                              : AppColors.clrMediumGrey,
                                        ),
                                        child: Text(
                                          addressTypeArray[i].toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                              color: i ==
                                                      enterYourLocationBloc
                                                          .addressType
                                                  ? AppColors.clrWhite
                                                  : AppColors.clrGrey),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Center(
                            child: TextFieldwidget(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.completeAddress,
                              hintText: Strings.enterAddress,
                              maxLines: 4,
                              controller: completeAddressController,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Center(
                            child: TextFieldwidget(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.postcode,
                              hintText: Strings.enterPostcode,
                              controller: postCodeController,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(15),
                          ),
                          Center(
                            child: TextFieldwidget(
                              width: SizeConfig.screenWidth * 0.9,
                              title: Strings.landmark,
                              hintText: Strings.enterLandmark,
                              controller: landmarkController,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(20),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.05,
                                  right: SizeConfig.screenWidth * 0.05),
                              child: CommonButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.pushNamed(
                                      context,
                                      AppRouter.DASHBOARD,
                                    );
                                    // enterYourLocationBloc.add(SaveAddressClickedNavigationEvent());
                                  },
                                  title: Strings.saveAddress)),
                        ],
                      )))
            ],
          );
        },
      );
    });
  }
}
