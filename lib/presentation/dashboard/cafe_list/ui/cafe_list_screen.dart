import 'package:coffeeshopapp/core/configs/size_config.dart';
import 'package:coffeeshopapp/presentation/dashboard/cafe_list/bloc/cafe_list_bloc.dart';
import 'package:coffeeshopapp/presentation/dashboard/widgets/restaurant_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CafeListScreen extends StatefulWidget {
  const CafeListScreen({super.key});

  @override
  State<CafeListScreen> createState() => _CafeListScreenState();
}

class _CafeListScreenState extends State<CafeListScreen> {
  final CafeListBloc cafeListBloc = CafeListBloc();

  @override
  void initState() {
    cafeListBloc.add(CafeListInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CafeListBloc, CafeListState>(
      bloc: cafeListBloc,
      listenWhen: (previous, current) => current is CafeListActionState,
      buildWhen: (previous, current) => current is! CafeListActionState,
      listener: (context, state) {},
      builder: (context, state) {
        switch (state.runtimeType) {
          case CafeListLoadingState:
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );

          case CafeListErrorState:
            return Center(
              child: Text("Error While Loading Data"),
            );

          case CafeListLoadedSuccessState:
            final successState = state as CafeListLoadedSuccessState;
            return Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                    bottom: 80,
                    left: getProportionateScreenWidth(15),
                    right: getProportionateScreenWidth(15)),
                child: SingleChildScrollView(
                  child: Column(
                    children: state.restaurantModel.map((item) {
                      return RestaurantItem(item);
                    }).toList(),
                  ),
                ));

          default:
            return SizedBox();
        }
      },
    );
  }
}
