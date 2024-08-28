import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/cart/bloc/cart_bloc.dart';
import 'package:coffeeshopapp/presentation/cart/models/cart_model.dart';
import 'package:coffeeshopapp/presentation/item_details/bloc/item_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPlusMinusWidget extends StatefulWidget {
  CartBloc? cartBloc;
  Cart? cart;

  CartPlusMinusWidget({
    this.cartBloc,
    this.cart,
    super.key,
  });

  @override
  State<CartPlusMinusWidget> createState() => _ItemPlusMinusWidgetState();
}

class _ItemPlusMinusWidgetState extends State<CartPlusMinusWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.cartBloc!
                .add(CartMinusButtonActionEvent(cart: widget.cart!));
          },
          child: SvgPicture.asset(
            Assets.imgMinusWhiteSquare,
            width: getProportionateScreenWidth(32),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(
          widget.cart!.quantity.toString(),
          style: TextStyle(
              color: AppColors.clrBlack,
              fontSize: getProportionateScreenWidth(15)),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        GestureDetector(
          onTap: () {
            widget.cartBloc!.add(CartPlusButtonActionEvent(cart: widget.cart!));
          },
          child: SvgPicture.asset(Assets.imgPlusSquareGreenFillCheckbox,
              width: getProportionateScreenWidth(32)),
        ),
      ],
    );
  }
}
