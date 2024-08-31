import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/bloc/restaurant_details_bloc.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/detail_circle_card.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/tabs/about/ui/about_screen.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/tabs/gallery/ui/gallery_screen.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/tabs/menu/ui/menu_screen.dart';
import 'package:coffeeshopapp/presentation/restaurant_details/tabs/reviews/ui/reviews_screen.dart';
import 'package:coffeeshopapp/utils/silver_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantDetailsScreen extends StatefulWidget {
  Restaurant restaurant;

  RestaurantDetailsScreen(this.restaurant, {super.key});

  @override
  State<RestaurantDetailsScreen> createState() =>
      _RestaurantDetailsScreenState();
}

class _RestaurantDetailsScreenState extends State<RestaurantDetailsScreen> {
  List<String> navTitles = [
    Strings.menu,
    Strings.about,
    Strings.gallery,
    Strings.reviews,
  ];

  RestaurantDetailsBloc restaurantDetailsBloc = RestaurantDetailsBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RestaurantDetailsBloc, RestaurantDetailsState>(
      bloc: restaurantDetailsBloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SafeArea(
            child: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return [
                  SliverAppBar(
                    expandedHeight: getProportionateScreenHeight(400),
                    floating: false,
                    pinned: false,
                    leading: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          Assets.imgArrowBack,
                          width: getProportionateScreenWidth(25),
                        ),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Image.network(
                            widget.restaurant.images!.first.toString(),
                            width: double.infinity,
                            height: getProportionateScreenHeight(200),
                            fit: BoxFit.cover,
                          ),
                          /*Positioned(
                            top: getProportionateScreenHeight(15),
                            left: getProportionateScreenWidth(15),
                            child: SvgPicture.asset(
                              Assets.imgArrowBack,
                              width: getProportionateScreenWidth(40),
                            ),
                          ),*/
                          Positioned(
                            top: getProportionateScreenHeight(15),
                            right: getProportionateScreenWidth(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  Assets.imgFavouriteRed,
                                  width: getProportionateScreenWidth(40),
                                ),
                                SizedBox(
                                  width: getProportionateScreenWidth(10),
                                ),
                                SvgPicture.asset(
                                  Assets.imgFavouriteRed,
                                  width: getProportionateScreenWidth(40),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: getProportionateScreenWidth(15),
                            right: getProportionateScreenWidth(15),
                            top: getProportionateScreenHeight(120),
                            child: restaurantDetailsCard(),
                          )
                        ],
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: SliverAppBarDelegate(
                      minHeight: kToolbarHeight,
                      maxHeight: kToolbarHeight,
                      child: navBar(state.tabIndex),
                    ),
                  ),
                ];
              },
              body: state.tabIndex == 0
                  ? MenuScreen(widget.restaurant)
                  : state.tabIndex == 1
                      ? AboutScreen(widget.restaurant)
                      : state.tabIndex == 2
                          ? GalleryScreen(widget.restaurant.images!)
                          : ReviewsScreen(widget.restaurant),
            ),
          ),
        );
      },
    );
  }

  Widget navBar(int tabIndex) {
    return Material(
      elevation: 1,
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: navTitles.map((icon) {
              int index = navTitles.indexOf(icon);
              bool isSelected = tabIndex == index;
              return Container(
                width: SizeConfig.defaultSize * 10,
                child: Material(
                  color: AppColors.clrWhite,
                  child: GestureDetector(
                    onTap: () {
                      restaurantDetailsBloc.add(TabChange(tabIndex: index));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          navTitles[index],
                          style: TextStyle(
                              color: isSelected
                                  ? AppColors.primary
                                  : AppColors.clrGrey,
                              fontSize: getProportionateScreenWidth(16),
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w500),
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
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15))),
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
        ),
      ),
    );
  }

  Widget restaurantDetailsCard() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(20),
            horizontal: getProportionateScreenWidth(10),
          ),
          decoration: BoxDecoration(
            color: AppColors.clrWhite,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: AppColors.clrBlack.withAlpha(29),
                blurRadius: 1,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.restaurant.name.toString(),
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Text(
                widget.restaurant.menu!.map((e) => e.name).toList().join(","),
                style: TextStyle(
                  color: AppColors.clrTextGrey,
                  fontSize: getProportionateScreenWidth(12),
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400,
                ),
                maxLines: 1,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Container(
                width: double.infinity,
                color: AppColors.clrLightGrey,
                height: 0.5,
              ),
              SizedBox(height: getProportionateScreenHeight(10)),
              Row(
                children: [
                  SvgPicture.asset(Assets.imgMapPointGreen, width: 15),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  Text(
                    widget.restaurant.address.toString(),
                    style: TextStyle(
                      color: AppColors.clrTextGrey,
                      fontSize: getProportionateScreenWidth(13),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(5)),
              Row(
                children: [
                  SvgPicture.asset(Assets.imgClock, width: 15),
                  SizedBox(width: getProportionateScreenWidth(5)),
                  Text(
                    "20 Min * 2.5 Km * Paid Delivery",
                    style: TextStyle(
                      color: AppColors.clrTextGrey,
                      fontSize: getProportionateScreenWidth(12),
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Row(
          children: [
            DetailsCircleWidget(Assets.imgUserSelected, "9500+", "Customer"),
            DetailsCircleWidget(Assets.imgUserSelected, "9500+", "Customer"),
            DetailsCircleWidget(Assets.imgUserSelected, "9500+", "Customer"),
            DetailsCircleWidget(Assets.imgUserSelected, "9500+", "Customer"),
          ],
        ),
      ],
    );
  }
}
