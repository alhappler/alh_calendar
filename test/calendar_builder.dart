import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';

class CalendarBuilder {
  CalendarMonth getCalendarMonth({DateTime? changedDateTime}) {
    final week1 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 08, 29),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 08, 30),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 08, 31),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 09, 1),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 2),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 3),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 4),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]);
    final week2 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 09, 5),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 6),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 7),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 8),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 9),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 10),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 11),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]);
    final week3 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 09, 12),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 13),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 14),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 15),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 16),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 17),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 18),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]);
    final week4 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 09, 19),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 20),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 21),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 22),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 23),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 24),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 25),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]);
    final week5 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 09, 26),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 27),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 28),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 29),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 09, 30),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2022, 10, 1),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 2),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]);
    final week6 = CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2022, 10, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 4),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 5),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 6),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 7),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 8),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2022, 10, 9),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]);
    return CalendarMonth(
        month: DateTime(2022, 9),
        weeks: [week1, week2, week3, week4, week5, week6]);
  }

  CalendarMonth setUpCalendarMonth({required int numberOfWeeks}) {
    final calendarWeek = List<CalendarDay>.generate(
        7,
        (_) => CalendarDay(
            date: DateTime(2022, 10, 3),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false));

    return CalendarMonth(
      month: DateTime(2022, 10),
      weeks: List<CalendarWeek>.generate(
        numberOfWeeks,
        (index) => CalendarWeek(days: calendarWeek),
      ),
    );
  }
}
