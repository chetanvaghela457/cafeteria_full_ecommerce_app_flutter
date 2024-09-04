import 'package:intl/intl.dart';

class NotificationRepository {

  Map<String, List<Map<String, dynamic>>> groupNotificationsByDate(List<Map<String, dynamic>> notifications) {
    Map<String, List<Map<String, dynamic>>> groupedNotifications = {};

    DateTime now = DateTime.now();
    for (var notification in notifications) {
      DateTime notificationDate = DateTime.parse(notification['created_on']);
      String header;

      if (isSameDate(notificationDate, now)) {
        header = "Today";
      } else if (isSameDate(notificationDate, now.subtract(Duration(days: 1)))) {
        header = "Yesterday";
      } else {
        header = DateFormat('dd MMM yyyy').format(notificationDate);
      }

      if (groupedNotifications[header] == null) {
        groupedNotifications[header] = [];
      }
      groupedNotifications[header]!.add(notification);
    }

    return groupedNotifications;
  }

  static bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }



}