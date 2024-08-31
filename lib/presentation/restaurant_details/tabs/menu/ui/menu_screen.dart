import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuScreen extends StatelessWidget {
  Restaurant? restaurant;

  MenuScreen(this.restaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenHeight(15)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: Strings.menu,
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w500),
                    children: [
                  TextSpan(
                    text: " (${restaurant!.menu!.length})",
                    style: TextStyle(
                        color: AppColors.primary,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w500),
                  )
                ])),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 80, left: 5),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 8.0, // spacing between rows
                    crossAxisSpacing: 8.0,
                    childAspectRatio: 0.87 // spacing between columns
                    ),
                // padding around the grid
                itemCount: restaurant!.menu!.length,
                // total number of items
                itemBuilder: (context, index) {
                  return coffeeItem(restaurant!.menu![index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget coffeeItem(Menu productDataModel) {
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
            ]),
        margin: EdgeInsets.only(
            right: getProportionateScreenWidth(10),
            top: getProportionateScreenHeight(5)),
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
                          image: NetworkImage(productDataModel.image!),
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
                            "4.9",
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
              padding: EdgeInsets.only(
                  left: getProportionateScreenWidth(5),
                  top: getProportionateScreenHeight(5)),
              child: Text(
                productDataModel.name!,
                maxLines: 1,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(15),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
              child: Text(
                "\$ ${productDataModel.price.toString()}",
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
