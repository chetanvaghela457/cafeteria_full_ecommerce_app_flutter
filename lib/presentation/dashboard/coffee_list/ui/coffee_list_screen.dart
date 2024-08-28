import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/dashboard/coffee_list/bloc/coffee_list_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/product_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeListScreen extends StatefulWidget {
  const CoffeeListScreen({super.key});

  @override
  State<CoffeeListScreen> createState() => _CoffeeListScreenState();
}

class _CoffeeListScreenState extends State<CoffeeListScreen> {
  final CoffeeListBloc coffeeListBloc = CoffeeListBloc();

  @override
  void initState() {
    coffeeListBloc.add(CoffeeListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoffeeListBloc, CoffeeListState>(
      bloc: coffeeListBloc,
      listenWhen: (previous, current) => current is CoffeeListActionState,
      buildWhen: (previous, current) => current is! CoffeeListActionState,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case CoffeeListLoadingState:
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );

          case CoffeeListErrorState:
            return Center(
              child: Text("Error While Loading Data"),
            );

          case CoffeeListLoadedSuccessState:
            final successState = state as CoffeeListLoadedSuccessState;
            return Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 80,left: 5),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 0.87// spacing between columns
                ),
                padding: EdgeInsets.all(8.0),
                // padding around the grid
                itemCount: successState.featureProducts.length,
                // total number of items
                itemBuilder: (context, index) {
                  return coffeeItem(successState.featureProducts[index]);
                },
              ),
            );

          default:
            return SizedBox();
        }
      },
    );
  }

  Widget coffeeItem(ProductDataModel productDataModel) {
    return GestureDetector(
      onTap: () {
        // homeBloc.add(HomeFeatureItemClickNavigateActionEvent(
        //     productDataModel: productDataModel));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.clrWhite,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3),
            )
          ]
        ),
        margin: EdgeInsets.only(right: getProportionateScreenWidth(10),top: getProportionateScreenHeight(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: getProportionateScreenHeight(130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
              child: Text(
                productDataModel.available_in!.first.price,
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
