import 'package:intl/intl.dart';

/// Created by nightkyb at 2020/1/17 11:47
class DateUtils {
  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year &&
        date.month == now.month &&
        date.day == now.day;
  }

  static format(String pattern, String date) =>
      DateFormat(pattern).format(DateTime.parse(date));
}

extension StringExt on String {
  String formatDate(String pattern) =>
      DateFormat(pattern).format(DateTime.parse(this));
}

extension DateTimeExt on DateTime {
  String format(String pattern) => DateFormat(pattern).format(this);

  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }
}
