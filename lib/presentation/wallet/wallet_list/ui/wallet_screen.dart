import 'package:coffeeshopapp/core/configs/routes.dart';
import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/splash/widgets/common_button.dart';
import 'package:coffeeshopapp/presentation/wallet/wallet_list/bloc/wallet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  WalletBloc walletBloc = WalletBloc();

  @override
  void initState() {
    walletBloc.add(WalletInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(walletBloc),
            Expanded(
              child: BlocConsumer<WalletBloc, WalletState>(
                bloc: walletBloc,
                listenWhen: (p, c) => c is WalletActionState,
                buildWhen: (p, c) => c is! WalletActionState,
                listener: (context, state) {
                  if (state is WalletBackClickState) {
                    Navigator.pop(context);
                  } else if (state is WalletAddMoneyClickState) {
                    Navigator.pushNamed(context, AppRouter.ADD_MONEY);
                  }
                },
                builder: (context, state) {
                  switch (state.runtimeType) {
                    case WalletLoadingState:
                      return Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );

                    case WalletErrorState:
                      return Center(
                        child: Text(
                          "Error While Loading Data",
                          style: TextStyle(color: AppColors.primary),
                        ),
                      );

                    case WalletLoadedSuccessState:
                      final successState = state as WalletLoadedSuccessState;

                      return Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: getProportionateScreenWidth(15),
                                  right: getProportionateScreenWidth(15),
                                  top: getProportionateScreenHeight(20),
                                  bottom: getProportionateScreenHeight(20)),
                              height: getProportionateScreenHeight(130),
                              decoration: BoxDecoration(
                                  color: Color(0x4901816A),
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(10))),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            Strings.walletBalance,
                                            style: TextStyle(
                                                color: AppColors.clrGrey,
                                                fontWeight: FontWeight.w400,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        13)),
                                          ),
                                          Text(
                                            "\$12000.00",
                                            style: TextStyle(
                                                color: AppColors.clrBlack,
                                                fontWeight: FontWeight.w500,
                                                fontSize:
                                                    getProportionateScreenWidth(
                                                        15)),
                                          )
                                        ],
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.clrWhite,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        width: getProportionateScreenWidth(40),
                                        height: getProportionateScreenWidth(40),
                                        child: SvgPicture.asset(
                                          Assets.imgMyWallet,
                                          width:
                                              getProportionateScreenWidth(30),
                                        ),
                                        padding: EdgeInsets.all(5),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: getProportionateScreenHeight(10),
                                  ),
                                  CommonButton(
                                      onPressed: () {
                                        walletBloc
                                            .add(WalletAddMoneyClickEvent());
                                      },
                                      title: Strings.addMoney)
                                ],
                              ),
                            ),
                            Expanded(
                                child: Container(
                                    child: ListView(
                              children:
                                  successState.walletData.entries.map((entry) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SectionHeader(
                                        title: entry.key, onMarkAllRead: () {}),
                                    ...entry.value
                                        .map((wallet) =>
                                            NotificationTile(wallet: wallet))
                                        .toList(),
                                  ],
                                );
                              }).toList(),
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                            ))),
                          ],
                        ),
                      );
                    default:
                      return SizedBox();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onMarkAllRead;

  SectionHeader({required this.title, required this.onMarkAllRead});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                fontWeight: FontWeight.w500,
                color: AppColors.clrBlack),
          )
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Map<String, dynamic> wallet;

  NotificationTile({required this.wallet});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15),
          top: getProportionateScreenWidth(8),
          bottom: getProportionateScreenHeight(8)),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.clrWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: AppColors.clrTextFieldColor,
                blurRadius: 1,
                spreadRadius: 1)
          ]),
      child: Row(
        children: [
          Expanded(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wallet['title'],
                    style: TextStyle(
                        color: AppColors.clrBlack,
                        fontSize: getProportionateScreenWidth(15),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(_formatTime(wallet['created_on']),
                      style: TextStyle(
                          color: AppColors.clrTextGrey,
                          fontSize: getProportionateScreenWidth(13),
                          fontWeight: FontWeight.w400))
                ],
              )),
          Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  "${wallet['type'] == 0 ? '+ ' : "- "}\$" +
                      wallet['amount'].toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: getProportionateScreenWidth(14),
                      color: wallet['type'] == 0
                          ? AppColors.primary
                          : AppColors.clrRed),
                ),
              ))
        ],
      ),
    ); /*ListTile(
      title: Text(
        wallet['title'],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(wallet['text']),
      trailing: Text(_formatTime(wallet['created_on'])),
    );*/
  }

  String _formatTime(String dateString) {
    DateTime dateTime = DateTime.parse(dateString);
    Duration difference = DateTime.now().difference(dateTime);

    if (difference.inDays >= 1) {
      return '${difference.inDays}d';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours}h';
    } else {
      return '${difference.inMinutes}m';
    }
  }
}

class AppBar extends StatelessWidget {
  WalletBloc walletBloc;

  AppBar(
    this.walletBloc, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(56),
      margin: EdgeInsets.only(
          left: getProportionateScreenWidth(15),
          right: getProportionateScreenWidth(15)),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                walletBloc.add(WalletBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
              Strings.wallet,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.clrBlack,
                  fontSize: getProportionateScreenWidth(17),
                  fontWeight: FontWeight.w600),
            )),
            SizedBox(
              width: getProportionateScreenWidth(40),
            ),
          ]),
    );
  }
}
