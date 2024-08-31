import 'dart:developer';

import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/item_details/widgets/add_to_cart_bottom_view.dart';
import 'package:coffeeshopapp/presentation/item_details/widgets/expandable_text.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/item_plus_minus_widget.dart';
import 'package:coffeeshopapp/presentation/item_details/bloc/item_details_bloc.dart';
import 'package:coffeeshopapp/presentation/item_details/models/coffee_type_data_model.dart';
import 'package:coffeeshopapp/presentation/item_details/widgets/owner_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetailsScreen extends StatefulWidget {
  final ProductDataModel? product;

  ItemDetailsScreen({this.product, super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  List<String> sugarArray = ["No Sugar", "With Sugar"];

  final ItemDetailsBloc itemDetailsBloc = ItemDetailsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ItemDetailsBloc, ItemDetailsState>(
      bloc: itemDetailsBloc,
      listenWhen: (previous, current) => current is ItemDetailsActionEvent,
      buildWhen: (previous, current) => current is! ItemDetailsActionEvent,
      listener: (context, state) {
        if (state is ItemDetailsAddToCartNavigateClickState) {
          log("ItemDetailsAddToCartNavigateClickState");
        } else if (state is ItemDetailsCallClickState) {
        } else if (state is ItemDetailsMessageClickState) {
        } else if (state is ItemDetailsFavouriteClickState) {
        } else if (state is ItemDetailsShareClickState) {}
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Image.asset(
                          widget.product!.imageUrl.toString(),
                          width: double.infinity,
                          fit: BoxFit.fill,
                          height: getProportionateScreenHeight(350),
                        ),
                        Positioned(
                            top: getProportionateScreenHeight(300),
                            left: getProportionateScreenWidth(20),
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: getProportionateScreenWidth(5),
                                  right: getProportionateScreenWidth(5),
                                  top: getProportionateScreenHeight(2),
                                  bottom: getProportionateScreenHeight(2)),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: AppColors.clrWhite),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: AppColors.clrYellow,
                                    size: getProportionateScreenWidth(15),
                                  ),
                                  Text(
                                    widget.product!.ratings.toString(),
                                    style: TextStyle(
                                        color: AppColors.clrBlack,
                                        fontSize:
                                            getProportionateScreenWidth(13),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            )),
                        Container(
                          margin: EdgeInsets.only(
                              left: getProportionateScreenWidth(15),
                              top: getProportionateScreenWidth(10),
                              right: getProportionateScreenWidth(15)),
                          child: SafeArea(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: SvgPicture.asset(
                                    Assets.imgArrowBack,
                                    width: getProportionateScreenWidth(40),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      Assets.imgFavouriteGrey,
                                      width: getProportionateScreenWidth(40),
                                    ),
                                    SizedBox(
                                      width: getProportionateScreenWidth(5),
                                    ),
                                    SvgPicture.asset(
                                      Assets.imgArrowBack,
                                      width: getProportionateScreenWidth(40),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenHeight(330)),
                          padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(15),
                              right: getProportionateScreenWidth(15)),
                          decoration: BoxDecoration(
                              color: AppColors.clrWhite,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                      getProportionateScreenWidth(15)),
                                  topRight: Radius.circular(
                                      getProportionateScreenWidth(15)))),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Coffee",
                                    style: TextStyle(
                                        color: AppColors.clrGrey,
                                        fontSize:
                                            getProportionateScreenWidth(14)),
                                  ),
                                  ItemPlusMinusWidget(
                                    itemDetailsBloc: itemDetailsBloc,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    widget.product!.name.toString(),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color: AppColors.clrBlack,
                                        fontSize:
                                            getProportionateScreenWidth(17),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Text(
                                "Seller",
                                style: TextStyle(
                                    color: AppColors.clrBlack,
                                    fontSize: getProportionateScreenWidth(12),
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              OwnerWidget(
                                widget.product!.seller.name,
                                widget.product!.seller.image,
                                widget.product!.seller.type,
                                widget.product!.seller.restaurant_name,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Text(
                                Strings.description,
                                style: TextStyle(
                                    color: AppColors.clrBlack,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              ExpandableText(
                                widget.product!.description.toString(),
                                trimLines: 2,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Container(
                                width: double.infinity,
                                height: 0.56,
                                color: AppColors.clrMediumGrey,
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                              Text(
                                Strings.availableIn,
                                style: TextStyle(
                                    color: AppColors.clrBlack,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Container(
                                height: getProportionateScreenHeight(130),
                                width: double.infinity,
                                child: ListView.builder(
                                    itemCount:
                                        CoffeeTypeDataModel.coffeeData.length,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return coffeeTypeItem(
                                          CoffeeTypeDataModel.coffeeData[index],
                                          index,
                                          state);
                                    }),
                              ),
                              Text(
                                Strings.suger,
                                style: TextStyle(
                                    color: AppColors.clrBlack,
                                    fontSize: getProportionateScreenWidth(14),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(10),
                              ),
                              Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  for (var i = 0; i < sugarArray.length; i++)
                                    GestureDetector(
                                      onTap: () {
                                        itemDetailsBloc.add(
                                            ItemDetailsSugarSelectEvent(
                                                initialSelect: i));
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
                                                getProportionateScreenWidth(15),
                                            right:
                                                getProportionateScreenWidth(15),
                                            top: getProportionateScreenWidth(5),
                                            bottom:
                                                getProportionateScreenWidth(5)),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: i == state.sugarSelection
                                              ? AppColors.primary
                                              : AppColors.clrMediumGrey,
                                        ),
                                        child: Text(
                                          sugarArray[i].toString(),
                                          style: TextStyle(
                                              fontSize:
                                                  getProportionateScreenWidth(
                                                      13),
                                              color: i == state.sugarSelection
                                                  ? AppColors.clrWhite
                                                  : AppColors.clrGrey),
                                        ),
                                      ),
                                    )
                                ],
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                BottomAddToCartView(itemDetailsBloc, widget.product)
              ],
            ),
          ),
        );
      },
    );
  }

  Widget coffeeTypeItem(
      CoffeeTypeDataModel coffeeData, int index, ItemDetailsState state) {
    return GestureDetector(
      onTap: () {
        itemDetailsBloc
            .add(ItemDetailsAvailableInSelectEvent(initialSelect: index));
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: getProportionateScreenWidth(90),
        height: getProportionateScreenHeight(40),
        decoration: BoxDecoration(
          color: AppColors.clrWhite,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: index == state.availableSelection
                  ? AppColors.primary
                  : AppColors.clrBlack,
              width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.rootVectors + coffeeData.imageUrl,
              width: getProportionateScreenWidth(70),
              color: index == state.availableSelection
                  ? AppColors.primary
                  : AppColors.clrBlack,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              coffeeData.name,
              style: index == state.availableSelection
                  ? TextStyle(color: AppColors.primary)
                  : TextStyle(color: AppColors.clrBlack),
            )
          ],
        ),
      ),
    );
  }
}
