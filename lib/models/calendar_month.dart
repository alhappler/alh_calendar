import 'package:alh_calendar/models/calendar_week.dart';
import 'package:flutter/cupertino.dart';

/// Represents a month of the calendar
@immutable
class CalendarMonth {
  /// DateTime of the month.
  final DateTime month;

  /// Every month has a list of CalendarWeeks. Unlike real months the
  /// calendarMonth consists of 5 or 6 weeks, which are displayed in
  /// on the TableView.
  final List<CalendarWeek> weeks;

  const CalendarMonth({
    required this.month,
    required this.weeks,
  }) : assert(weeks.length == 5 || weeks.length == 6);

  @override
  bool operator ==(Object other) {
    return (other is CalendarMonth) &&
        other.month == this.month &&
        this._isWeekEqual(
          calendarWeek: this.weeks,
          other: other.weeks,
        );
  }

  @override
  int get hashCode => month.hashCode;

  bool _isWeekEqual({
    required List<CalendarWeek> calendarWeek,
    required List<CalendarWeek> other,
  }) {
    for (int week = 0; week < calendarWeek.length; week++) {
      if (calendarWeek[week] != other[week]) {
        return false;
      }
    }
    return true;
  }
}
