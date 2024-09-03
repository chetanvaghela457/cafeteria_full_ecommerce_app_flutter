import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/order/my_orders/bloc/my_orders_bloc.dart';
import 'package:coffeeshopapp/presentation/order/my_orders/tabs/active_orders/ui/active_orders_screen.dart';
import 'package:coffeeshopapp/presentation/order/my_orders/tabs/cancelled_orders/ui/cancelled_orders_screen.dart';
import 'package:coffeeshopapp/presentation/order/my_orders/tabs/completed_orders/ui/completed_orders.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  List<String> navTitles = [
    Strings.active,
    Strings.completed,
    Strings.cancelled,
  ];

  final MyOrdersBloc myOrdersBloc = MyOrdersBloc();

  Widget navBar(int tabIndex) {
    return Container(
      height: getProportionateScreenHeight(47),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: navTitles.map((icon) {
          int index = navTitles.indexOf(icon);
          bool isSelected = tabIndex == index;
          return Center(
            child: Container(
              width: SizeConfig.screenWidth*0.33,
              child: Material(
                color: Colors.transparent,
                child: GestureDetector(
                  onTap: () {
                    myOrdersBloc.add(TabChange(tabIndex: index));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        navTitles[index],
                        style: TextStyle(
                            color: isSelected
                                ? AppColors.primary
                                : AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight:
                                isSelected ? FontWeight.w600 : FontWeight.w500),
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      isSelected
                          ? Container(
                              width: getProportionateScreenWidth(150),
                              height: 5,
                              decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15))),
                            )
                          : SizedBox(
                              height: 10,
                            ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyOrdersBloc, MyOrdersState>(
      bloc: myOrdersBloc,
      listenWhen: (p,c) => c is MyOrdersActionState,
      buildWhen: (p,c) => c is !MyOrdersActionState,
      listener: (context, state) {
        if(state is MyOrdersBackClickState) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AppBar(myOrdersBloc),
                  navBar(state.tabIndex!),
                  state.tabIndex == 0
                      ? Expanded(child: ActiveOrdersScreen())
                      : state.tabIndex == 1
                          ? Expanded(child: CompletedOrders())
                          : Expanded(child: CancelledOrdersScreen())
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class AppBar extends StatelessWidget {
  MyOrdersBloc myOrdersBloc;

  AppBar(
      this.myOrdersBloc, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(70),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                myOrdersBloc.add(MyOrdersBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
                  Strings.myOrders,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.w500),
                )),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ]),
    );
  }
}
