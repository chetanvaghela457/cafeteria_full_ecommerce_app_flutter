import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/auth/pages/login/ui/login.dart';
import 'package:coffeeshopapp/presentation/dashboard/cafe_list/ui/cafe_list_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/coffee_list/ui/coffee_list_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/ui/home_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  List<String> navTitles = [
    Strings.coffee,
    Strings.cafe,
  ];

  final WishlistBloc wishlistBloc = WishlistBloc();

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
          return Container(
            width: SizeConfig.defaultSize * 20,
            child: Material(
              color: Colors.transparent,
              child: GestureDetector(
                onTap: () {
                  wishlistBloc.add(TabChange(tabIndex: index));
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
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WishlistBloc, WishlistState>(
      bloc: wishlistBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: getProportionateScreenHeight(70),
                    child: Center(
                      child: Text(
                        Strings.wishList,
                        style: TextStyle(
                            color: AppColors.clrBlack,
                            fontSize: getProportionateScreenWidth(17),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  navBar(state.tabIndex),
                  state.tabIndex == 0
                      ? Expanded(child: CoffeeListScreen())
                      : Expanded(child: CafeListScreen())
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
