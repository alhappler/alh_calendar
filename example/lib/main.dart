import 'dart:core';
import 'dart:developer';

import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:alh_calendar_example/calendar_day.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'calendar_header_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final dayMap = {
    DayOfWeek.monday: 'Mon',
    DayOfWeek.thursday: 'Thu',
    DayOfWeek.wednesday: 'Wen',
    DayOfWeek.tuesday: 'Tue',
    DayOfWeek.friday: 'Fri',
    DayOfWeek.saturday: 'Sat',
    DayOfWeek.sunday: 'Sun',
  };

  @override
  void initState() {
    super.initState();
  }

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(8),
                  child: AlhCalendar(
                    headerLeading: const Icon(Icons.chevron_left),
                    headerTrailing: const Icon(Icons.chevron_right),
                    daysOfWeek: dayMap,
                    enableHorizontalSwipe: true,
                    enableSixWeeksForEveryMonth: true,
                    onReachedMinimumDate: () {
                      log("MInimum Date erreicht");
                    },
                    onReachedMaximumDate: () {
                      log("REACHED MAX");
                    },
                    onMonthChanged: (selectedMonth) {
                      log('Month has changed $selectedMonth');
                    },
                    onDayChanged: (selectedDay) {
                      log('SELECTED DATE: $selectedDay');
                    },
                    dayOfWeekBuilder: (String dayOfWeek, bool isWeekEnd) {
                      return Center(
                        child: Text(
                          dayOfWeek,
                          style: TextStyle(
                              color: isWeekEnd
                                  ? Colors.blueAccent
                                  : Colors.redAccent),
                        ),
                      );
                    },
                    headerBuilder: (DateTime date) {
                      return CalendarHeaderTitle(
                        displayMonth:
                            DateFormat('MMMM yyyy', 'en_Us').format(date),
                      );
                    },
                    dayBuilder: (
                      CalendarDayBuilderModel calendarDayBuilderModel,
                    ) {
                      return CalendarDay(
                        calendarDayBuilderModel: calendarDayBuilderModel,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
  }
}
