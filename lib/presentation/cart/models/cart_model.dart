// To parse this JSON data, do
//
//     final cart = cartFromJson(jsonString);

import 'dart:convert';

List<Cart> cartFromJson(String str) => List<Cart>.from(json.decode(str).map((x) => Cart.fromJson(x)));

String cartToJson(List<Cart> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cart {
  String? imageUrl;
  String? name;
  String? type;
  String? coffeeType;
  int? quantity;
  Pricing? pricing;

  Cart({
    this.imageUrl,
    this.name,
    this.type,
    this.coffeeType,
    this.quantity,
    this.pricing,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => Cart(
    imageUrl: json["imageUrl"],
    name: json["name"],
    type: json["type"],
    coffeeType: json["coffee_type"],
    quantity: json["quantity"],
    pricing: Pricing.fromJson(json["pricing"]),
  );

  Map<String, dynamic> toJson() => {
    "imageUrl": imageUrl,
    "name": name,
    "type": type,
    "coffee_type": coffeeType,
    "quantity": quantity,
    "pricing": pricing!.toJson(),
  };
}

class Pricing {
  String? defaultPrice;
  Size? size;
  Sugar? sugar;
  Syrup? syrup;
  Toppings? toppings;

  Pricing({
    this.defaultPrice,
    this.size,
    this.sugar,
    this.syrup,
    this.toppings,
  });

  factory Pricing.fromJson(Map<String, dynamic> json) => Pricing(
    defaultPrice: json["default_price"],
    size: Size.fromJson(json["size"]),
    sugar: Sugar.fromJson(json["sugar"]),
    syrup: Syrup.fromJson(json["syrup"]),
    toppings: Toppings.fromJson(json["toppings"]),
  );

  Map<String, dynamic> toJson() => {
    "default_price": defaultPrice,
    "size": size!.toJson(),
    "sugar": sugar!.toJson(),
    "syrup": syrup!.toJson(),
    "toppings": toppings!.toJson(),
  };
}

class Size {
  String? size;
  String? price;

  Size({
    this.size,
    this.price,
  });

  factory Size.fromJson(Map<String, dynamic> json) => Size(
    size: json["size"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "size": size,
    "price": price,
  };
}

class Sugar {
  String? sugar;
  String? price;

  Sugar({
    this.sugar,
    this.price,
  });

  factory Sugar.fromJson(Map<String, dynamic> json) => Sugar(
    sugar: json["sugar"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "sugar": sugar,
    "price": price,
  };
}

class Syrup {
  String? syrup;
  String? price;

  Syrup({
    this.syrup,
    this.price,
  });

  factory Syrup.fromJson(Map<String, dynamic> json) => Syrup(
    syrup: json["syrup"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "syrup": syrup,
    "price": price,
  };
}

class Toppings {
  String? toppings;
  String? price;

  Toppings({
    this.toppings,
    this.price,
  });

  factory Toppings.fromJson(Map<String, dynamic> json) => Toppings(
    toppings: json["toppings"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "toppings": toppings,
    "price": price,
  };
}
