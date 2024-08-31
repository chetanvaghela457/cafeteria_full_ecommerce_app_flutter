import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  List<String> images;

  GalleryScreen(this.images, {super.key});

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                        text: Strings.gallery,
                        style: TextStyle(
                            color: AppColors.clrBlack,
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.w500),
                        children: [
                      TextSpan(
                        text: " (${images.length})",
                        style: TextStyle(
                            color: AppColors.primary,
                            fontSize: getProportionateScreenWidth(15),
                            fontWeight: FontWeight.w500),
                      )
                    ])),
                Text(
                  Strings.viewAll,
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: getProportionateScreenWidth(15)),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 80,),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 5.0, // spacing between rows
                    crossAxisSpacing: 5.0,
                    childAspectRatio: 1 // spacing between columns
                    ),
                // padding around the grid
                itemCount: images.length,
                // total number of items
                itemBuilder: (context, index) {
                  return galleryItem(images[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget galleryItem(String image) {
    return Container(
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
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(130),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)),
      ),
    );
  }
}
