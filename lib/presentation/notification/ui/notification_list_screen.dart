import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/core/configs/theme/app_colors.dart';
import 'package:coffeeshopapp/core/configs/theme/assets.dart';
import 'package:coffeeshopapp/core/configs/theme/strings.dart';
import 'package:coffeeshopapp/presentation/notification/bloc/notification_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationListScreen extends StatefulWidget {
  const NotificationListScreen({super.key});

  @override
  State<NotificationListScreen> createState() => _NotificationListScreenState();
}

class _NotificationListScreenState extends State<NotificationListScreen> {
  NotificationListBloc notificationListBloc = NotificationListBloc();

  @override
  void initState() {
    notificationListBloc.add(NotificationListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AppBar(notificationListBloc),
            BlocConsumer<NotificationListBloc, NotificationListState>(
              bloc: notificationListBloc,
              listenWhen: (p,c)=> c is NotificationListActionState,
              buildWhen: (p,c)=> c is !NotificationListActionState,
              listener: (context, state) {
                if(state is NotificationBackClickState) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                switch(state.runtimeType) {
                  case NotificationListLoadingState:
                    return Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );

                  case NotificationListErrorState:
                    return Center(
                      child: Text(
                        "Error While Loading Data",
                        style: TextStyle(color: AppColors.primary),
                      ),
                    );

                  case NotificationListLoadedSuccessState:
                    final successState = state as NotificationListLoadedSuccessState;

                    return Expanded(
                        child: Container(
                            child: ListView(
                              children: successState.notificationListData.entries.map((entry) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SectionHeader(
                                        title: entry.key, onMarkAllRead: () {}),
                                    ...entry.value.map((notification) =>
                                        NotificationTile(
                                            notification: notification)).toList(),
                                  ],
                                );
                              }).toList(),)
                        ));
                  default:
                    return SizedBox();
                }
              },
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
            style: TextStyle(fontSize: getProportionateScreenWidth(16), fontWeight: FontWeight.w500,color: AppColors.clrGrey),
          ),
          GestureDetector(
            onTap: onMarkAllRead,
            child: Text(
              "Mark all as read",
              style: TextStyle(color: AppColors.primary,fontSize: getProportionateScreenWidth(13),),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Map<String, dynamic> notification;

  NotificationTile({required this.notification});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Icon(notification['icon'], color: AppColors.primary),
      ),
      title: Text(
        notification['title'],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(notification['text']),
      trailing: Text(_formatTime(notification['created_on'])),
    );
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
  NotificationListBloc notificationListBloc;

  AppBar(this.notificationListBloc, {
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
                notificationListBloc.add(NotificationBackClickEvent());
              },
              child: SvgPicture.asset(
                Assets.imgArrowBack,
                width: getProportionateScreenHeight(40),
              ),
            ),
            Expanded(
                child: Text(
                  Strings.notifications,
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
