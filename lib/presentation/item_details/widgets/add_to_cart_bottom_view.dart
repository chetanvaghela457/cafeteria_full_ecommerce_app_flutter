import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/item_details/bloc/item_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomAddToCartView extends StatefulWidget {
  ItemDetailsBloc itemDetailsBloc;
  ProductDataModel? product;

  BottomAddToCartView(
    this.itemDetailsBloc,
    this.product, {
    super.key,
  });

  @override
  State<BottomAddToCartView> createState() => _BottomAddToCartViewState();
}

class _BottomAddToCartViewState extends State<BottomAddToCartView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      height: getProportionateScreenHeight(70),
      decoration: BoxDecoration(
          color: AppColors.clrWhite,
          boxShadow: [
            BoxShadow(
                color: AppColors.clrBlack.withAlpha(29),
                blurRadius: 20,
                spreadRadius: 10),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(getProportionateScreenWidth(15)),
              topRight: Radius.circular(getProportionateScreenWidth(15)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.totalPrice,
                style: TextStyle(
                    color: AppColors.clrGrey,
                    fontSize: getProportionateScreenWidth(13)),
              ),
              Text(
                "\$ ${widget.itemDetailsBloc.state.count * double.parse(widget.product!.available_in![0].price)}",
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              widget.itemDetailsBloc
                  .add(ItemDetailsAddToCartNavigateClickEvent());
            },
            child: Container(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(30),
                  right: getProportionateScreenWidth(30),
                  top: getProportionateScreenHeight(10),
                  bottom: getProportionateScreenHeight(10)),
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: [
                SvgPicture.asset(
                  Assets.imgShoppingBagDetails,
                  width: 25,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5),
                ),
                Text(
                  Strings.addToCart,
                  style: TextStyle(
                      color: AppColors.clrWhite,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.w400),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
