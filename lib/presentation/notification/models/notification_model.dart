import 'dart:convert';

List<NotificationModel> notificationModelFromJson(String str) =>
    List<NotificationModel>.from(
        json.decode(str).map((x) => NotificationModel.fromJson(x)));

String notificationModelToJson(List<NotificationModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NotificationModel {
  String? title;
  String? text;
  DateTime? createdOn;
  bool? isRead;
  int? notificationType;

  NotificationModel({
    this.title,
    this.text,
    this.createdOn,
    this.isRead,
    this.notificationType,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        title: json["title"],
        text: json["text"],
        createdOn: DateTime.parse(json["created_on"]),
        isRead: json["isRead"],
        notificationType: json["notification_type"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "text": text,
        "created_on": createdOn!.toIso8601String(),
        "isRead": isRead,
        "notification_type": notificationType,
      };
}
