import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';

import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:coffeeshopapp/presentation/wallet/add_money/bloc/add_money_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddMoneyScreen extends StatefulWidget {
  const AddMoneyScreen({super.key});

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  AddMoneyBloc addMoneyBloc = AddMoneyBloc();

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    addMoneyBloc.add(AddMoneyInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(addMoneyBloc),
            BlocConsumer<AddMoneyBloc, AddMoneyState>(
              bloc: addMoneyBloc,
              listenWhen: (p, c) => c is AddMoneyActionState,
              buildWhen: (p, c) => c is! AddMoneyActionState,
              listener: (context, state) {
                if (state is AddMoneyBackClickState) {
                  Navigator.pop(context);
                } else if (state is AddMoneyAddClickState) {
                  Navigator.pushNamed(context, AppRouter.TOP_UP_SUCCESS);
                } else if (state is AddMoneyItemsClickState) {
                  // Navigator.pushNamed(context, AppRouter.ADD_MONEY);
                }
              },
              builder: (context, state) {
                switch (state.runtimeType) {
                  case AddMoneyLoadingState:
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );

                  case AddMoneyErrorState:
                    return Center(
                      child: Text(
                        "Error While Loading Data",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    );

                  case AddMoneyLoadedSuccessState:
                    final successState = state as AddMoneyLoadedSuccessState;

                    return Container(
                      margin: EdgeInsets.only(
                        left: getProportionateScreenWidth(15),
                        right: getProportionateScreenWidth(15),
                        top: getProportionateScreenHeight(20),
                      ),
                      height: getProportionateScreenHeight(310),
                      decoration: BoxDecoration(
                          color: Color(0x4901816A),
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenWidth(10))),
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    Strings.walletBalance,
                                    style: TextStyle(
                                        color: AppColors.clrGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize:
                                            getProportionateScreenWidth(13)),
                                  ),
                                  Text(
                                    "\$12000.00",
                                    style: TextStyle(
                                        color: AppColors.clrBlack,
                                        fontWeight: FontWeight.w500,
                                        fontSize:
                                            getProportionateScreenWidth(15)),
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColors.clrWhite,
                                    borderRadius: BorderRadius.circular(10)),
                                width: getProportionateScreenWidth(40),
                                height: getProportionateScreenWidth(40),
                                child: SvgPicture.asset(
                                  Assets.imgMyWallet,
                                  width: getProportionateScreenWidth(30),
                                ),
                                padding: EdgeInsets.all(5),
                              )
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          Wrap(
                            direction: Axis.horizontal,
                            children: [
                              for (var i = 0;
                                  i < successState.moneyList.length;
                                  i++)
                                GestureDetector(
                                  onTap: () {
                                    addMoneyBloc.add(AddMoneyItemsClickEvent());
                                    setState(() {
                                      textEditingController.text = successState.moneyList[i];
                                    });
                                  },
                                  child: Container(
                                    width: SizeConfig.screenWidth * 0.18,
                                    margin: EdgeInsets.only(
                                        left: getProportionateScreenWidth(5),
                                        right: getProportionateScreenWidth(5),
                                        top: getProportionateScreenWidth(5)),
                                    padding: EdgeInsets.only(
                                        top: getProportionateScreenWidth(8),
                                        bottom: getProportionateScreenWidth(8)),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.clrWhite,
                                    ),
                                    child: Text(
                                      successState.moneyList[i].toString(),
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize:
                                              getProportionateScreenWidth(13),
                                          color: AppColors.clrBlack),
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          TextFieldwidget(
                            width: SizeConfig.screenWidth * 0.8,
                            title: Strings.password,
                            hintText: Strings.enterAmount,
                            controller: textEditingController,
                            inputType: TextInputType.number,
                            obsecure: true,
                            suffixIcon: Icon(Icons.monetization_on_outlined,
                                color: AppColors.clrBlack),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(10),
                          ),
                          CommonButton(
                            onPressed: () {
                              addMoneyBloc.add(AddMoneyAddClickEvent());
                            },
                            title: Strings.add,
                            width: SizeConfig.screenWidth * 0.8,
                          )
                        ],
                      ),
                    );
                  default:
                    return SizedBox();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  AddMoneyBloc addMoneyBloc;

  AppBar(
    this.addMoneyBloc, {
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
                addMoneyBloc.add(AddMoneyBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.addMoney,
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
