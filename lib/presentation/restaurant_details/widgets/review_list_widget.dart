import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/address_map/enter_your_location/widgets/searchFieldWidget.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/models/restaurant_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewListWidget extends StatelessWidget {

  List<Review>? reviews;

  ReviewListWidget(this.reviews, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // discoverBloc.add(DiscoverSearchClickActionEvent());
          },
          child: Center(
            child: SearchFieldwidget(
              backgroundColor: AppColors.clrTextFieldColor,
              width: SizeConfig.screenWidth * 0.9,
              height: getProportionateScreenHeight(45),
              hintText: Strings.searchInReviews,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SvgPicture.asset(
                  Assets.imgSearchGreen,
                  width: getProportionateScreenWidth(25),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Container(
          width: double.infinity,
          height: 0.5,
          color: AppColors.clrLightGrey,
        ),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        Container(
          width: SizeConfig.screenWidth,
          height: double.maxFinite,
          child: ListView.builder(
            itemCount: reviews!.length,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return reviewItem(reviews![index]);
            },
          ),
        ),
      ],
    );
  }

  Widget reviewItem(Review review) {
    return Container(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(10),
          bottom: getProportionateScreenHeight(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(20), // Image radius
                        child: review.image!.isNotEmpty
                            ? Image.network(review.image!, fit: BoxFit.cover)
                            : Image.asset(Assets.imgRestaurant1,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: getProportionateScreenWidth(10),
                        right: getProportionateScreenWidth(10)),
                    child: Text(
                      review.name.toString(),
                      style: TextStyle(
                          color: AppColors.clrBlack,
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Container(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(10),
                  ),
                  child: Text("11 Month Ago"))
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(7),
          ),
          Text(
            review.reviewText.toString(),
            style: TextStyle(color: AppColors.clrTextGrey),
          ),
          SizedBox(
            height: getProportionateScreenHeight(7),
          ),
          Row(
            children: [
              RatingBar.builder(
                initialRating: review.rating!,
                minRating: 1,
                itemSize: getProportionateScreenWidth(20),
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: getProportionateScreenWidth(5),
              ),
              Text(review.rating.toString()),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: AppColors.clrLightGrey,
          )
        ],
      ),
    );
  }
}
