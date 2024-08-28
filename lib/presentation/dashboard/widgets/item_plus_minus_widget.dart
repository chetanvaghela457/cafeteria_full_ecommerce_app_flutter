import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/item_details/bloc/item_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemPlusMinusWidget extends StatefulWidget {
  ItemDetailsBloc? itemDetailsBloc;

  ItemPlusMinusWidget(
    this.itemDetailsBloc, {
    super.key,
  });

  @override
  State<ItemPlusMinusWidget> createState() => _ItemPlusMinusWidgetState();
}

class _ItemPlusMinusWidgetState extends State<ItemPlusMinusWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.itemDetailsBloc!.add(ItemDetailsMinusButtonActionEvent());
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
          widget.itemDetailsBloc!.state.count.toString(),
          style: TextStyle(
              color: AppColors.clrBlack,
              fontSize: getProportionateScreenWidth(15)),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        GestureDetector(
          onTap: () {
            widget.itemDetailsBloc!.add(ItemDetailsPlusButtonActionEvent());
          },
          child: SvgPicture.asset(Assets.imgPlusSquareGreenFillCheckbox,
              width: getProportionateScreenWidth(32)),
        ),
      ],
    );
  }
}
