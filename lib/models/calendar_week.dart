import 'package:alh_calendar/models/calendar_day.dart';
import 'package:flutter/cupertino.dart';

/// Represents a week of the calendar.
@immutable
class CalendarWeek {
  /// Every week contains a list of 7 CalendarDay.
  final List<CalendarDay> days;

  const CalendarWeek({required this.days}) : assert(days.length == 7);

  @override
  bool operator ==(Object other) {
    return (other is CalendarWeek) &&
        other.days[0] == this.days[0] &&
        other.days[1] == this.days[1] &&
        other.days[2] == this.days[2] &&
        other.days[3] == this.days[3] &&
        other.days[4] == this.days[4] &&
        other.days[5] == this.days[5] &&
        other.days[6] == this.days[6];
  }

  @override
  int get hashCode => days.hashCode;
}
