import 'dart:convert';

List<CouponsModel> couponsModelFromJson(String str) => List<CouponsModel>.from(json.decode(str).map((x) => CouponsModel.fromJson(x)));

String couponsModelToJson(List<CouponsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CouponsModel {
  String? code;
  String? text;
  String? percentageText;

  CouponsModel({
    this.code,
    this.text,
    this.percentageText,
  });

  factory CouponsModel.fromJson(Map<String, dynamic> json) => CouponsModel(
    code: json["code"],
    text: json["text"],
    percentageText: json["percentage_text"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "text": text,
    "percentage_text": percentageText,
  };
}