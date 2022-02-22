import '../../../../core/base/viewmodel/base_view_model.dart';
import 'package:intl/intl.dart';

class DoneViewModel extends BaseViewModel {
  // Date operations
  final DateTime today = DateTime.now();
  late final DateTime yesterday;
  late final DateTime tomorrow;
  late final DateTime nextDay;

  final DateFormat todayFormatter = DateFormat('MMMMd');
  final DateFormat abbrWeekDayFormatter = DateFormat('E');
  final DateFormat dayFormatter = DateFormat('d');

  // final DateFormat

  late final String todayString;
  late final String todayWeekDay;
  late final String todayNumDay;
  late final String yesterdayWeekDay;
  late final String yesterdayNumDay;
  late final String tomorrowWeekDay;
  late final String tomorrowNumDay;

  bool isEmptyTask = false;

  @override
  void init() async {
    yesterday = DateTime(today.year, today.month, today.day - 1);
    tomorrow = DateTime(today.year, today.month, today.day + 1);

    todayString = todayFormatter.format(today);

    todayWeekDay = abbrWeekDayFormatter.format(today);
    todayNumDay = dayFormatter.format(today);
    yesterdayWeekDay = abbrWeekDayFormatter.format(yesterday);
    yesterdayNumDay = dayFormatter.format(yesterday);
    tomorrowWeekDay = abbrWeekDayFormatter.format(tomorrow);
    tomorrowNumDay = dayFormatter.format(tomorrow);
  }
}
