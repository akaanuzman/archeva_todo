import 'package:flutter/material.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';
import 'package:intl/intl.dart';

class ArchiveViewModel extends BaseViewModel {
  // Date operations
  final DateTime today = DateTime.now();
  late final DateTime yesterday;
  late final DateTime tomorrow;

  DateTime? oldDays;
  DateTime? newDays;
  List<DateTime> oldDaysList = [];
  List<DateTime> newDaysList = [];

  List<String> daysWeekDay = [];
  List<String> daysNumDay = [];
  List<String> oldDaysWeekDay = [];
  List<String> oldDaysNumDay = [];
  List<String> newDaysWeekDay = [];
  List<String> newDaysNumDay = [];

  final DateFormat todayFormatter = DateFormat('MMMMd');
  final DateFormat abbrWeekDayFormatter = DateFormat('E');
  final DateFormat dayFormatter = DateFormat('d');

  late final String todayString;
  late final String todayWeekDay;
  late final String todayNumDay;

  bool isEmptyTask = false;

  @override
  void init() {
    todayString = todayFormatter.format(today);

    todayWeekDay = abbrWeekDayFormatter.format(today);
    todayNumDay = dayFormatter.format(today);

    for (var i = 0; i < today.day + 1; i++) {
      oldDays = DateTime(today.year, today.month, today.day - i + 1);
      oldDaysList.add(oldDays!);
      oldDaysWeekDay.add(abbrWeekDayFormatter.format(oldDaysList[i]));
      oldDaysNumDay.add(dayFormatter.format(oldDaysList[i]));
      oldDaysWeekDay = oldDaysWeekDay.reversed.toList();
    }

    oldDaysNumDay = oldDaysNumDay.reversed.toList();

    for (var i = 0; i < oldDaysNumDay.length; i++) {
      daysWeekDay.add(oldDaysWeekDay[i]);
      daysNumDay.add(oldDaysNumDay[i]);
    }

    for (var i = 0; i < 27 - today.day + 1; i++) {
      newDays = DateTime(today.year, today.month, today.day + i + 1);
      newDaysList.add(newDays!);
      newDaysWeekDay.add(abbrWeekDayFormatter.format(newDaysList[i]));
      newDaysNumDay.add(dayFormatter.format(newDaysList[i]));
    }

    for (var i = 0; i < newDaysNumDay.length; i++) {
      daysWeekDay.add(newDaysWeekDay[i]);
      if (newDaysNumDay[i] != "23") {
        daysNumDay.add(newDaysNumDay[i]);
      } else {
        newDaysNumDay[i].trim();
      }
    }

    debugPrint(daysNumDay.toString());
  }
}
