import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/dashboard/chat/ui/chat_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/discover/ui/discover_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/home/ui/home_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/navbar_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/profile/ui/profile_screen.dart';
import 'package:coffeeshopapp/presentation/dashboard/wishlist/ui/wishlist_screen.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  // int tabIndex = 0;
  List<String> navTitles = [
    Strings.home,
    Strings.discover,
    Strings.wishList,
    Strings.chat,
    Strings.profile,
  ];

  final NavbarBloc navbarBloc = NavbarBloc();

  Widget navBar(List<Widget> navIcons, int tabIndex) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
          color: AppColors.clrWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
                color: AppColors.clrBlack.withAlpha(29),
                blurRadius: 20,
                spreadRadius: 10),
          ]),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: navIcons.map((icon) {
          int index = navIcons.indexOf(icon);
          bool isSelected = tabIndex == index;
          return Material(
            color: Colors.transparent,
            child: GestureDetector(
              onTap: () {
                navbarBloc.add(TabChange(tabIndex: index));
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    isSelected
                        ? Container(
                            width: 15,
                            height: 10,
                            decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                          )
                        : SizedBox(
                            height: 10,
                          ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          top: 10, bottom: 0, left: 27, right: 27),
                      child: icon,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      navTitles[index],
                      style: TextStyle(
                          color: isSelected
                              ? AppColors.primary
                              : AppColors.clrGrey,
                          fontSize: 12,
                          fontWeight:
                              isSelected ? FontWeight.w600 : FontWeight.w400),
                    )
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
    // SizeConfig.init(context);
    return BlocConsumer<NavbarBloc, NavbarState>(
      bloc: navbarBloc,
      listener: (context, state) {},
      builder: (context, state) {

        List<Widget> navIcons = [
          SvgPicture.asset(
            state.tabIndex == 0 ? Assets.imgHomeSelected : Assets.imgHomeUnselected,
            width: 25,
            height: 25,
          ),
          SvgPicture.asset(
            state.tabIndex  == 1 ? Assets.imgDiscoverSelected : Assets.imgDiscoverUnSelected,
            width: 25,
            height: 25,
          ),
          SvgPicture.asset(
            state.tabIndex  == 2 ? Assets.imgWishlistSelected : Assets.imgWishlistUnselected,
            width: 25,
            height: 25,
          ),
          SvgPicture.asset(
            state.tabIndex  == 3 ? Assets.imgChatSelected : Assets.imgChatUnSelected,
            width: 25,
            height: 25,
          ),
          SvgPicture.asset(
            state.tabIndex  == 4 ? Assets.imgUserSelected : Assets.imgUserUnselected,
            width: 25,
            height: 25,
          ),
        ];

        return Scaffold(
            key: scaffoldKey,
            // drawer: CustomDrawer(userRoleid: controller.userRoleid.value,),
            body: Container(
              child: Stack(
                children: [
                  state.tabIndex == 0
                      ? HomeScreen()
                      : state.tabIndex == 1
                          ? DiscoverScreen()
                          : state.tabIndex == 2
                              ? WishlistScreen()
                              : state.tabIndex == 3
                                  ? ChatScreen()
                                  : ProfileScreen(),
                  Align(alignment: Alignment.bottomCenter, child: navBar(navIcons,state.tabIndex))
                ],
              ),
            ));
      },
    );
  }
}
