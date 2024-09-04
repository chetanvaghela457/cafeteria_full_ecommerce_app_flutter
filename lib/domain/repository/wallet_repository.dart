import 'package:intl/intl.dart';

class WalletRepository {

  Map<String, List<Map<String, dynamic>>> groupWalletsByDate(List<Map<String, dynamic>> wallets) {
    Map<String, List<Map<String, dynamic>>> groupedWallets = {};

    DateTime now = DateTime.now();
    for (var wallet in wallets) {
      DateTime walletDate = DateTime.parse(wallet['created_on']);
      String header;

      if (isSameDate(walletDate, now)) {
        header = "Today";
      } else if (isSameDate(walletDate, now.subtract(Duration(days: 1)))) {
        header = "Yesterday";
      } else {
        header = DateFormat('dd MMM yyyy').format(walletDate);
      }

      if (groupedWallets[header] == null) {
        groupedWallets[header] = [];
      }
      groupedWallets[header]!.add(wallet);
    }

    return groupedWallets;
  }

  static bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }



}