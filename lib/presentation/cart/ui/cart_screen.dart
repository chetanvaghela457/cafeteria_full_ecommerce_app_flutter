import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/cart/bloc/cart_bloc.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:coffeeshopapp/presentation/cart/widgets/bill_items.dart';
import 'package:coffeeshopapp/presentation/cart/widgets/cart_plus_minus_widget.dart';
import 'package:coffeeshopapp/presentation/cart/widgets/item_remove_bottom_sheet.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartBloc cartBloc = CartBloc();

  List<Cart> cartData = [];

  List<String> deliveryTypeArray = ["Delivery", "Pickup"];

  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
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
                  AppBar(cartBloc),
                  Expanded(
                    child: BlocConsumer<CartBloc, CartState>(
                      bloc: cartBloc,
                      listenWhen: (previous, current) =>
                          current is CartActionState,
                      buildWhen: (previous, current) =>
                          current is! CartActionState,
                      listener: (context, state) {
                        if (state is CartDeliveryAddressAddActionState) {
                          Navigator.pushNamed(
                            context,
                            AppRouter.DELIVERY_ADDRESS_LIST,
                          );
                        } else if (state is CartBackClickActionState) {
                          Navigator.pop(context);
                        } else if (state is CartPlaceOrderClickActionState) {
                          Navigator.pushNamed(context, AppRouter.ORDER_PLACED);
                        } else if (state is CartRemoveItemButtonActionState) {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            isDismissible: false,
                            enableDrag: true,
                            builder: (context) => BlocProvider.value(
                              // Use existing BLoC instance
                              value: cartBloc,
                              child: ItemRemoveBottomSheet(state
                                  .cart), // BottomSheet widget to input address fields
                            ),
                          );
                        }
                      },
                      builder: (context, state) {
                        switch (state.runtimeType) {
                          case CartLoadingState:
                            return Container(
                              child: Center(
                                child: CircularProgressIndicator(),
                              ),
                            );

                          case CartErrorState:
                            return Center(
                              child: Text(
                                "Error While Loading Data",
                                style: TextStyle(color: AppColors.primary),
                              ),
                            );

                          case CartLoadedSuccessState:
                            final successState =
                                state as CartLoadedSuccessState;

                            cartData = successState.cartData;
                            return cartView(cartData, state);

                          case CartMinusButtonActionState:
                            final successState =
                                state as CartMinusButtonActionState;
                            cartData[cartData.indexOf(successState.cart)] =
                                successState.cart;
                            return cartView(cartData, state);

                          case CartPlusButtonActionState:
                            final successState =
                                state as CartPlusButtonActionState;
                            cartData[cartData.indexOf(successState.cart)] =
                                successState.cart;
                            return cartView(cartData, state);

                          case CartYesRemoveClickActionState:
                            final successState =
                                state as CartYesRemoveClickActionState;
                            cartData.remove(successState.cart);
                            return cartView(cartData, state);

                          case CartState:
                            final successState = state as CartState;
                            return cartView(cartData, successState);

                          default:
                            return SizedBox();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
              child: GestureDetector(
                onTap: () {
                  cartBloc.add(CartPlaceOrderClickActionEvent());
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
                      Strings.placeOrder,
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

  Widget cartView(List<Cart> cartList, CartState state) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              Strings.orderDetails,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // padding around the grid
              itemCount: cartList.length,
              // total number of items
              itemBuilder: (context, index) {
                return cartItem(cartList[index]);
              },
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(5),
                  bottom: getProportionateScreenHeight(20)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              Strings.offerBenefits,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              width: SizeConfig.screenWidth * 0.9,
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(15),
                  right: getProportionateScreenWidth(15),
                  top: getProportionateScreenHeight(15),
                  bottom: getProportionateScreenHeight(15)),
              decoration: BoxDecoration(
                  color: AppColors.clrWhite,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.clrBlack.withAlpha(29),
                        blurRadius: 1,
                        spreadRadius: 1),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Strings.applyCoupon,
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: AppColors.clrBlack,
                    size: getProportionateScreenWidth(20),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(5)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Text(
              Strings.billDetails,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            BillItems(Strings.subTotal, "19.50"),
            BillItems(Strings.taxes, "5.02"),
            BillItems(Strings.deliveryCharge, "2.30"),
            BillItems(Strings.discount, "0.0"),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(7),
                  bottom: getProportionateScreenHeight(7)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            BillItems(Strings.total, "0.0"),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(20)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            Text(
              Strings.orderType,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(15),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                for (var i = 0; i < deliveryTypeArray.length; i++)
                  GestureDetector(
                    onTap: () {
                      cartBloc
                          .add(CartDeliveryTypeSelectionEvent(typeSelect: i));
                    },
                    child: Container(
                      width: SizeConfig.screenWidth * 0.42,
                      margin: EdgeInsets.only(
                          left: getProportionateScreenWidth(5),
                          right: getProportionateScreenWidth(5),
                          top: getProportionateScreenWidth(5)),
                      padding: EdgeInsets.only(
                          top: getProportionateScreenWidth(8),
                          bottom: getProportionateScreenWidth(8)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: i == state.deliveryTypeSelection
                            ? AppColors.primary
                            : AppColors.clrMediumGrey,
                      ),
                      child: Text(
                        deliveryTypeArray[i].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(16),
                            color: i == state.deliveryTypeSelection
                                ? AppColors.clrWhite
                                : AppColors.clrGrey),
                      ),
                    ),
                  )
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(20),
                  bottom: getProportionateScreenHeight(15)),
              width: double.infinity,
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            state.deliveryTypeSelection == 0
                ? DeliveryAddress(cartBloc)
                : PickupAddress(),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItem(Cart cartData) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      GestureDetector(
                        onTap: () {
                          cartBloc.add(
                              CartRemoveItemButtonActionEvent(cart: cartData));
                        },
                        child: Text(
                          Strings.remove,
                          style: TextStyle(
                              color: AppColors.clrRed,
                              fontSize: getProportionateScreenWidth(13),
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.clrRed),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              CartPlusMinusWidget(
                cart: cartData,
                cartBloc: cartBloc,
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: getProportionateScreenWidth(85)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Default Price",
                  style: TextStyle(
                      color: AppColors.clrGrey,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "\$ ${cartData.pricing!.defaultPrice.toString()}",
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          cartData.pricing!.size!.price!.isNotEmpty
              ? Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(85)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Size",
                              style: TextStyle(
                                  color: AppColors.clrGrey,
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                              text: " (${cartData.pricing!.size!.size})",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500),
                            )
                          ])),
                      Text(
                        "+ \$ ${cartData.pricing!.size!.price.toString()}",
                        style: TextStyle(
                            color: AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          cartData.pricing!.sugar!.price!.isNotEmpty
              ? Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(85)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Sugar",
                              style: TextStyle(
                                  color: AppColors.clrGrey,
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                              text: " (${cartData.pricing!.sugar!.sugar})",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500),
                            )
                          ])),
                      Text(
                        "+ \$ ${cartData.pricing!.sugar!.price.toString()}",
                        style: TextStyle(
                            color: AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          cartData.pricing!.syrup!.price!.isNotEmpty
              ? Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(85)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Syrup",
                              style: TextStyle(
                                  color: AppColors.clrGrey,
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                              text: " (${cartData.pricing!.syrup!.syrup})",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500),
                            )
                          ])),
                      Text(
                        "+ \$ ${cartData.pricing!.syrup!.price.toString()}",
                        style: TextStyle(
                            color: AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          cartData.pricing!.toppings!.price!.isNotEmpty
              ? Container(
                  margin:
                      EdgeInsets.only(left: getProportionateScreenWidth(85)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Topping",
                              style: TextStyle(
                                  color: AppColors.clrGrey,
                                  fontSize: getProportionateScreenWidth(15),
                                  fontWeight: FontWeight.w400),
                              children: [
                            TextSpan(
                              text:
                                  " (${cartData.pricing!.toppings!.toppings})",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: getProportionateScreenWidth(13),
                                  fontWeight: FontWeight.w500),
                            )
                          ])),
                      Text(
                        "+ \$ ${cartData.pricing!.toppings!.price.toString()}",
                        style: TextStyle(
                            color: AppColors.clrGrey,
                            fontSize: getProportionateScreenWidth(14),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              : SizedBox(),
          Container(
            margin: EdgeInsets.only(
                left: getProportionateScreenWidth(85),
                top: getProportionateScreenHeight(5),
                bottom: getProportionateScreenHeight(5)),
            width: double.infinity,
            height: 0.5,
            color: AppColors.clrLightGrey,
          ),
          Container(
            margin: EdgeInsets.only(left: getProportionateScreenWidth(85)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Final Total",
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.w500),
                )),
                Text(
                  "\$ 20.00",
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryAddress extends StatelessWidget {
  CartBloc cartBloc = CartBloc();

  DeliveryAddress(
    this.cartBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.deliveryAddress,
          style: TextStyle(
              color: AppColors.clrBlack,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        GestureDetector(
          onTap: () {
            cartBloc.add(CartDeliveryAddressAddActionEvent());
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
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10)),
              decoration: BoxDecoration(
                color: AppColors.clrWhite,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Text(
                Strings.addDeliveryAddress,
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

class PickupAddress extends StatelessWidget {
  const PickupAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.pickupAddress,
          style: TextStyle(
              color: AppColors.clrBlack,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              Assets.imgShopIcon,
              width: getProportionateScreenWidth(25),
            ),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "The Daily Grind Hub",
                  style: TextStyle(
                      color: AppColors.clrBlack,
                      fontSize: getProportionateScreenWidth(15)),
                ),
                Text(
                  "3517, Abc Market, Abs circle, USA",
                  style: TextStyle(
                      color: AppColors.clrGrey,
                      fontSize: getProportionateScreenWidth(12)),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(5),
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.imgClock,
                      width: getProportionateScreenWidth(15),
                    ),
                    Text(
                      "1.2 Km away from your location",
                      style: TextStyle(
                          color: AppColors.clrGrey,
                          fontSize: getProportionateScreenWidth(12)),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Container(
          margin: EdgeInsets.only(
              top: getProportionateScreenHeight(10),
              bottom: getProportionateScreenHeight(10)),
          width: double.infinity,
          height: 0.5,
          color: AppColors.clrLightGrey,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Text(
          Strings.choosePickupTime,
          style: TextStyle(
              color: AppColors.clrBlack,
              fontSize: getProportionateScreenWidth(15),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  CartBloc cartBloc;

  AppBar(
    this.cartBloc, {
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
                cartBloc.add(CartBackClickActionEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.myCart,
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
