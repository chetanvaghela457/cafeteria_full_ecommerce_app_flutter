import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/widgets/textFieldWidget.dart';
import 'package:coffeeshopapp/presentation/order/cancel_order/bloc/cancel_order_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CancelOrderScreen extends StatefulWidget {
  const CancelOrderScreen({super.key});

  @override
  State<CancelOrderScreen> createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  CancelOrderBloc cancelOrderBloc = CancelOrderBloc();

  List<String> cancelOrdersReasons = [];

  TextEditingController editingController = TextEditingController();

  @override
  void initState() {
    cancelOrderBloc.add(CancelOrderInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(cancelOrderBloc),
            BlocConsumer<CancelOrderBloc, CancelOrderState>(
              bloc: cancelOrderBloc,
              listenWhen: (p, c) => c is CancelOrderActionState,
              buildWhen: (p, c) => c is! CancelOrderActionState,
              listener: (context, state) {
                if (state is CancelOrderBackClickState) {
                  Navigator.pop(context);
                } else if (state is CancelOrderSubmitClickState) {
                  Navigator.pushNamedAndRemoveUntil(context, AppRouter.DASHBOARD,(route) => false);
                }
              },
              builder: (context, state) {
                switch (state.runtimeType) {
                  case CancelOrderLoadingState:
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );

                  case CancelOrderErrorState:
                    return Center(
                      child: Text(
                        "Error While Loading Data",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    );

                  case CancelOrderLoadedSuccessState:
                    final successState = state as CancelOrderLoadedSuccessState;

                    cancelOrdersReasons = successState.cancelReasons;
                    return cancelItemsListWidget(state);
                  case CancelOrderState:
                    return cancelItemsListWidget(state);
                  default:
                    return SizedBox();
                }
              },
            ),
            Container(
              height: getProportionateScreenWidth(80),
              width: double.infinity,
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
              child: GestureDetector(
                onTap: () {
                  cancelOrderBloc.add(CancelOrderSubmitClickEvent());
                },
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
                      Strings.cancelOrder,
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

  Widget cancelItemsListWidget(CancelOrderState state) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            left: getProportionateScreenWidth(15),
            right: getProportionateScreenWidth(15),
            top: getProportionateScreenHeight(15)),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.cancelReasonTitle,
              style: TextStyle(
                  color: AppColors.clrGrey,
                  fontSize: getProportionateScreenWidth(13)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            Container(
                child: ListView.builder(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              // padding around the grid
              itemCount: cancelOrdersReasons.length,
              // total number of items
              itemBuilder: (context, index) {
                return cancelItem(cancelOrdersReasons[index], state, index);
              },
            )),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFieldwidget(
              width: SizeConfig.screenWidth * 0.9,
              title: Strings.other,
              maxLines: 5,
              hintText: Strings.enterYourReason,
              controller: editingController,
            ),
          ],
        ),
      ),
    );
  }

  Widget cancelItem(String cancelReason, CancelOrderState state, int position) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            cancelOrderBloc
                .add(CancelOrderListSelectionEvent(selectedAddress: position));
          },
          child: Container(
            margin: const EdgeInsets.all(4),
            padding: const EdgeInsets.all(4),
            child: Icon(
              state.initialReasonSelection == position
                  ? Icons.radio_button_checked
                  : Icons.circle_outlined,
              size: getProportionateScreenWidth(20),
              color: AppColors.primary,
            ),
          ),
        ),
        Text(cancelReason)
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  CancelOrderBloc cancelOrderBloc;

  AppBar(
    this.cancelOrderBloc, {
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
                cancelOrderBloc.add(CancelOrderBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.cancelCoffeeOrder,
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
