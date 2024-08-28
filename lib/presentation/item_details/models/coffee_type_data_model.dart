import 'package:flutter/cupertino.dart';

class CoffeeTypeDataModel {
  String imageUrl;
  String name;

  CoffeeTypeDataModel(this.imageUrl, this.name);

  static List<CoffeeTypeDataModel> coffeeData = [
    CoffeeTypeDataModel("hot_coffee.svg", "Hot"),
    CoffeeTypeDataModel("cold_coffee.svg", "Cold"),
  ];
}
