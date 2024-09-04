import 'package:flutter/material.dart';

class NotificationData {
  static List<Map<String, dynamic>> notifications = [
    {
      "title": "Order on the way",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-04T09:40:05.566Z",
      "isRead": true,
      "notification_type": 0,
      "icon": Icons.delivery_dining
    },
    {
      "title": "Your Order is Ready to Pick Up",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-04T08:40:05.566Z",
      "isRead": false,
      "notification_type": 1,
      "icon": Icons.restaurant
    },
    {
      "title": "Coffee Review Request",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-04T07:40:05.566Z",
      "isRead": true,
      "notification_type": 2,
      "icon": Icons.star
    },
    {
      "title": "Order Placed Successfully",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-03T09:40:05.566Z",
      "isRead": true,
      "notification_type": 0,
      "icon": Icons.shopping_bag
    },
    {
      "title": "10 Coins Received",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-03T08:40:05.566Z",
      "isRead": true,
      "notification_type": 3,
      "icon": Icons.monetization_on
    },
    {
      "title": "20% Off on Coffee",
      "text":
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      "created_on": "2024-09-02T07:40:05.566Z",
      "isRead": true,
      "notification_type": 4,
      "icon": Icons.local_offer
    },
  ];
}
