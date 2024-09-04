import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/cart/bloc/cart_bloc.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemRemoveBottomSheet extends StatelessWidget {
  CartBloc cartBloc = CartBloc();

  Cart cart;

  ItemRemoveBottomSheet(this.cart, {super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setS) {
      return BlocConsumer<CartBloc, CartState>(
        bloc: cartBloc,
        listenWhen: (previous, current) => current is CartActionState,
        buildWhen: (previous, current) => current is! CartActionState,
        listener: (context, state) {
          if (state is CartYesRemoveClickActionState) {
            Navigator.of(context).pop();
          } else if (state is CartCancelClickActionState) {
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight * 0.3,
            decoration: BoxDecoration(
                color: AppColors.clrWhite,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(getProportionateScreenWidth(30)),
                    topRight:
                        Radius.circular(getProportionateScreenWidth(30)))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Text(
                  Strings.removeFromCart,
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(17),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                Container(
                  width: SizeConfig.screenWidth * 0.7,
                  height: 0.5,
                  color: AppColors.clrTextFieldColor,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(15),
                ),
                cartItem(cart),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          cartBloc.add(CartCancelClickActionEvent());
                        },
                        child: Container(
                          width: SizeConfig.screenWidth * 0.42,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(10),
                              bottom: getProportionateScreenHeight(10)),
                          decoration: BoxDecoration(
                              color: AppColors.clrTextFieldColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            Strings.cancel,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenWidth(15)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          cartBloc
                              .add(CartYesRemoveClickActionEvent(cart: cart));
                        },
                        child: Container(
                          width: SizeConfig.screenWidth * 0.42,
                          padding: EdgeInsets.only(
                              top: getProportionateScreenHeight(10),
                              bottom: getProportionateScreenHeight(10)),
                          decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Text(
                            Strings.yesRemove,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.clrWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: getProportionateScreenWidth(15)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    });
  }

  Widget cartItem(Cart cartData) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getProportionateScreenWidth(80),
                height: getProportionateScreenWidth(80),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(cartData.imageUrl.toString()),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              SizedBox(
                width: getProportionateScreenWidth(10),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cartData.name.toString(),
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${cartData.type.toString()} | ${cartData.coffeeType.toString()}",
                    style: TextStyle(
                        color: AppColors.clrGrey,
                        fontSize: getProportionateScreenWidth(12),
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Qty ${cartData.quantity.toString()}",
                    style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(13),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
