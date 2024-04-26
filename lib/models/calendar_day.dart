import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:flutter/cupertino.dart';

/// This class represents a day in the calendar.
@immutable
class CalendarDay {
  /// Every day has a specific DateTime
  final DateTime date;

  /// What day of the week is the day.
  final DayOfWeek dayOfWeek;

  /// If true the day lays in the current month.
  final bool isInCurrentMonth;

  const CalendarDay({
    required this.date,
    required this.dayOfWeek,
    required this.isInCurrentMonth,
  });

  @override
  bool operator ==(Object other) {
    return (other is CalendarDay) &&
        other.date == this.date &&
        other.dayOfWeek == this.dayOfWeek &&
        other.isInCurrentMonth == this.isInCurrentMonth;
  }

  @override
  int get hashCode => this.date.hashCode;
}
