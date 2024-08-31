import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RestaurantItem extends StatefulWidget {
  Restaurant restaurantItem;

  RestaurantItem(this.restaurantItem, {super.key});

  @override
  State<RestaurantItem> createState() => _RestaurantItemState();
}

class _RestaurantItemState extends State<RestaurantItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRouter.RESTAURANT_DETAILS,
          arguments: widget.restaurantItem,
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: getProportionateScreenHeight(10),
        ),
        width: getProportionateScreenWidth(330),
        padding: EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
        decoration: BoxDecoration(
          color: AppColors.clrWhite,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: getProportionateScreenHeight(130),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      image: DecorationImage(
                          image:
                              NetworkImage(widget.restaurantItem.images!.first),
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
                            "${widget.restaurantItem.ratings!.averageRating.toString()} (${widget.restaurantItem.ratings!.totalRatings.toString()}+ Review)",
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
              padding: EdgeInsets.only(left: 8.0, right: 5, top: 5, bottom: 2),
              child: Text(
                widget.restaurantItem.name.toString(),
                style: TextStyle(
                    color: AppColors.clrBlack,
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 5),
              child: Text(
                widget.restaurantItem.menu!
                    .map((e) => e.name)
                    .toList()
                    .join(","),
                style: TextStyle(
                    color: AppColors.clrTextGrey,
                    fontSize: getProportionateScreenWidth(12),
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w400),
                maxLines: 1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 5),
              height: 0.5,
              color: AppColors.clrLightGrey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 5, top: 5, bottom: 2),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imgMapPointGreen,
                    width: 15,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    widget.restaurantItem.address.toString(),
                    style: TextStyle(
                        color: AppColors.clrTextGrey,
                        fontSize: getProportionateScreenWidth(13),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0, right: 5),
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.imgClock,
                    width: 15,
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Text(
                    "20 Min * 2.5 Km * Paid Delivery",
                    style: TextStyle(
                        color: AppColors.clrTextGrey,
                        fontSize: getProportionateScreenWidth(12),
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
