import 'dart:convert';

List<AddressModel> addressModelFromJson(String str) => List<AddressModel>.from(json.decode(str).map((x) => AddressModel.fromJson(x)));

String addressModelToJson(List<AddressModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AddressModel {
  String? type;
  String? address;

  AddressModel({
    this.type,
    this.address,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
    type: json["type"],
    address: json["address"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "address": address,
  };
}