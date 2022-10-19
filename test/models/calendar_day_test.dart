import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final givenCalendarDay1 = CalendarDay(
      date: DateTime(2022, 9, 10),
      dayOfWeek: DayOfWeek.monday,
      isInCurrentMonth: true);
  final givenCalendarDay2 = CalendarDay(
      date: DateTime(2022, 9, 10),
      dayOfWeek: DayOfWeek.monday,
      isInCurrentMonth: true);

  test(
      'GIVEN CalendarDay2 and CalendarDay1 are equal '
      'WHEN == is called '
      'THEN should return true', () {
    // given

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;

    // then
    expect(actual, isTrue);
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 where date is different '
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarDay2 = CalendarDay(
        date: DateTime(2022, 9, 12),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: true);

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;

    // then
    expect(actual, isFalse);
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 where date is equal but dayOfWeek is not '
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarDay2 = CalendarDay(
        date: DateTime(2022, 9, 10),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true);

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;

    // then
    expect(actual, isFalse);
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 where date is equal and dayOfWeek is equal'
      'but isInCurrentMonth is not '
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarDay2 = CalendarDay(
        date: DateTime(2022, 9, 10),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: false);

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;

    // then
    expect(actual, isFalse);
  });
}
