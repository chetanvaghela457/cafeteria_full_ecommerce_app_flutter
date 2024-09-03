
import 'dart:convert';

List<OrderData> orderDataFromJson(String str) => List<OrderData>.from(json.decode(str).map((x) => OrderData.fromJson(x)));

String orderDataToJson(List<OrderData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderData {
  int? orderId;
  String? name;
  String? address;
  String? ratings;
  int? type;
  List<Item>? items;

  OrderData({
    this.orderId,
    this.name,
    this.address,
    this.ratings,
    this.type,
    this.items,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) => OrderData(
    orderId: json["order_id"],
    name: json["name"],
    address: json["address"],
    ratings: json["ratings"],
    type: json["type"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "order_id": orderId,
    "name": name,
    "address": address,
    "ratings": ratings,
    "type": type,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  int? id;
  String? name;
  String? image;

  Item({
    this.id,
    this.name,
    this.image,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    name: json["name"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "image": image,
  };
}