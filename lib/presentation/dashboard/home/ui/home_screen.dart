import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/bloc/home_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/banner_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/animated_dot.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/home_top_widget.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/restaurant_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc();

  int _selectedIndex = 0;

  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig.init(context);
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeFeatureItemClickNavigateActionState) {
          final successState = state as HomeFeatureItemClickNavigateActionState;
          Navigator.pushNamed(
            context,
            AppRouter.ITEM_DETAILS,
            arguments: successState.productDataModel,
          );
        } else if (state is HomeRestaurantItemClickNavigateActionState) {
        } else if (state is HomeSearchClickNavigateActionState) {
        } else if (state is HomeFilterClickNavigateActionState) {
        } else if (state is HomeLocationClickNavigateActionState) {
        } else if (state is HomeNotificationClickNavigateActionState) {
        } else if (state is HomeCartClickNavigateActionState) {}
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadingState:
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeScreenTopWidget(),
                  Expanded(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                ],
              ),
            );

          case HomeLoadedSuccessState:
            final successState = state as HomeLoadedSuccessState;
            return Scaffold(
              backgroundColor: AppColors.backgroundColor,
              body: Container(
                margin: EdgeInsets.only(bottom: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HomeScreenTopWidget(),
                    Expanded(
                      child: SingleChildScrollView(
                        child: bottomData(
                            successState.banners,
                            successState.featureProducts,
                            successState.restaurantData),
                      ),
                    )
                  ],
                ),
              ),
            );

          case HomeErrorState:
            return Scaffold(
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  HomeScreenTopWidget(),
                  Expanded(
                    child: Center(
                      child: Text("Error While Loading Data"),
                    ),
                  )
                ],
              ),
            );
            break;

          default:
            return SizedBox();
        }
      },
    );
  }

  Widget bottomData(List<BannerDataModel> banners,
      List<ProductDataModel> featureProducts, List<Restaurant> restaurantData) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenHeight(15)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.specialOffers,
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                Strings.seeAll,
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            height: getProportionateScreenHeight(200),
            child: PageView.builder(
                itemCount: banners.length,
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return bannerItem(banners[index]);
                }),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                banners.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 4.0),
                      child: AnimatedDot(
                        isActive: _selectedIndex == index,
                      ),
                    )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                Strings.featureProducts,
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.w600),
              ),
              Text(
                Strings.seeAll,
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: getProportionateScreenWidth(12),
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            height: getProportionateScreenHeight(200),
            width: double.infinity,
            child: ListView.builder(
                itemCount: featureProducts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return featureProductItem(featureProducts[index]);
                }),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Text(
                Strings.topRestaurants,
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(17),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Column(
            children: restaurantData.map((item) {
              return RestaurantItem(item);
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget bannerItem(BannerDataModel bannerDataModel) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          image: DecorationImage(
              image: AssetImage(bannerDataModel.imageUrl), fit: BoxFit.fill)),
    );
  }

  Widget featureProductItem(ProductDataModel productDataModel) {
    return GestureDetector(
      onTap: () {
        homeBloc.add(HomeFeatureItemClickNavigateActionEvent(
            productDataModel: productDataModel));
      },
      child: Container(
        width: getProportionateScreenWidth(200),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: getProportionateScreenWidth(200),
                  height: getProportionateScreenHeight(130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: AssetImage(productDataModel.imageUrl),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                    top: getProportionateScreenHeight(10),
                    left: getProportionateScreenWidth(10),
                    child: Container(
                      padding: EdgeInsets.only(
                          left: getProportionateScreenWidth(5),
                          right: getProportionateScreenWidth(5),
                          top: getProportionateScreenHeight(2),
                          bottom: getProportionateScreenHeight(2)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: AppColors.clrWhite),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.clrYellow,
                            size: getProportionateScreenWidth(15),
                          ),
                          Text(
                            productDataModel.ratings,
                            style: TextStyle(
                                color: AppColors.clrBlack,
                                fontSize: getProportionateScreenWidth(13),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )),
                Positioned(
                    top: getProportionateScreenHeight(10),
                    right: getProportionateScreenWidth(10),
                    child: SvgPicture.asset(
                      Assets.imgFavouriteRed,
                      width: getProportionateScreenWidth(25),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
              child: Text(
                productDataModel.name,
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imgLocationIconCardPage,
                    width: 15,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    productDataModel.seller.restaurant_name,
                    style: TextStyle(
                        color: AppColors.clrGrey,
                        fontSize: getProportionateScreenWidth(12),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                  SvgPicture.asset(
                    Assets.imgClock,
                    width: 15,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    productDataModel.time,
                    style: TextStyle(
                        color: AppColors.clrGrey,
                        fontSize: getProportionateScreenWidth(12),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(5),
                  top: getProportionateScreenHeight(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ ${productDataModel.available_in![0].price}',
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10),
                        right: getProportionateScreenWidth(10),
                        top: getProportionateScreenHeight(4),
                        bottom: getProportionateScreenHeight(4)),
                    decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(children: [
                      SvgPicture.asset(
                        Assets.imgShoppingBagDetails,
                        width: 15,
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(5),
                      ),
                      Text(
                        Strings.addToCart,
                        style: TextStyle(
                            color: AppColors.clrWhite,
                            fontSize: getProportionateScreenWidth(12),
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
