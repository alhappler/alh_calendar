import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final givenCalendarDay1 = CalendarDay(
    date: DateTime(2022, 9, 10),
    dayOfWeek: DayOfWeek.monday,
    isInCurrentMonth: true,
  );
  final givenCalendarDay2 = CalendarDay(
    date: DateTime(2022, 9, 10),
    dayOfWeek: DayOfWeek.monday,
    isInCurrentMonth: true,
  );

  test(
      'GIVEN valid parameters '
      'WHEN CalendarDay is constructed '
      'THEN verify properties', () {
    // given
    final date = DateTime(2022, 9, 15);
    const dayOfWeek = DayOfWeek.thursday;
    const isInCurrentMonth = false;

    // when
    final calendarDay = CalendarDay(
      date: date,
      dayOfWeek: dayOfWeek,
      isInCurrentMonth: isInCurrentMonth,
    );

    // then
    expect(calendarDay.date, date);
    expect(calendarDay.dayOfWeek, dayOfWeek);
    expect(calendarDay.isInCurrentMonth, isInCurrentMonth);
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 are equal '
      'WHEN == is called or hashCode is retrieved '
      'THEN should return true and the hashCode should be the same', () {
    // given

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;
    final hashCode1 = givenCalendarDay1.hashCode;
    final hashCode2 = givenCalendarDay2.hashCode;

    // then
    expect(actual, isTrue);
    expect(hashCode1, hashCode2);
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 where date is different '
      'WHEN == is called and hashCode is retrieved '
      'THEN should return false and hashCode should be the deferent', () {
    // given
    final givenCalendarDay2 = CalendarDay(
      date: DateTime(2022, 9, 12),
      dayOfWeek: DayOfWeek.monday,
      isInCurrentMonth: true,
    );

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;
    final hashCode1 = givenCalendarDay1.hashCode;
    final hashCode2 = givenCalendarDay2.hashCode;

    // then
    expect(actual, isFalse);
    expect(hashCode1, isNot(hashCode2));
  });

  test(
      'GIVEN CalendarDay2 and CalendarDay1 where date is equal but dayOfWeek is not '
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarDay2 = CalendarDay(
      date: DateTime(2022, 9, 10),
      dayOfWeek: DayOfWeek.friday,
      isInCurrentMonth: true,
    );

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
      isInCurrentMonth: false,
    );

    // when
    final actual = givenCalendarDay1 == givenCalendarDay2;

    // then
    expect(actual, isFalse);
  });
}
