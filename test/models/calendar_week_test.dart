import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final givenCalendarWeek1 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 10, 3),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 4),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 5),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 6),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 7),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 8),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 9),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: false,
      ),
    ],
  );
  final givenCalendarWeek2 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 10, 3),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 4),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 5),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 6),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 7),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 8),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 9),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: false,
      ),
    ],
  );

  CalendarWeek setUpCalendarWeek({required int numbersOfDays}) {
    return CalendarWeek(
      days: List<CalendarDay>.generate(
        numbersOfDays,
        (_) => CalendarDay(
          date: DateTime(2022, 10, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false,
        ),
      ),
    );
  }

  test(
      'GIVEN - '
      'WHEN try to build CalendarWeek with 6 days '
      'THEN should throw AssertionError', () {
    // given

    // when
    CalendarWeek buildGivenCalendarWeek() {
      final calendarMonth = setUpCalendarWeek(numbersOfDays: 6);
      return calendarMonth;
    }

    // then
    expect(buildGivenCalendarWeek, throwsAssertionError);
  });

  test(
      'GIVEN - '
      'WHEN try to build CalendarWeek with 8 days '
      'THEN should throw AssertionError', () {
    // given

    // when
    CalendarWeek buildGivenCalendarWeek() {
      final calendarMonth = setUpCalendarWeek(numbersOfDays: 8);
      return calendarMonth;
    }

    // then
    expect(buildGivenCalendarWeek, throwsAssertionError);
  });

  test(
      'GIVEN two equal CalendarWeeks '
      'WHEN == is called '
      'THEN should return true', () {
    // given

    // when
    final actual = givenCalendarWeek1 == givenCalendarWeek2;

    // then
    expect(actual, true);
  });

  test(
      'GIVEN two CalendarWeeks where date of first day is not equal '
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarWeek1 = CalendarWeek(
      days: [
        CalendarDay(
          date: DateTime(2022, 10, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 4),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 5),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 6),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 7),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 8),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 9),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false,
        ),
      ],
    );
    final givenCalendarWeek2 = CalendarWeek(
      days: [
        CalendarDay(
          date: DateTime(2022, 11, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 4),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 5),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 6),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 7),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 8),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false,
        ),
        CalendarDay(
          date: DateTime(2022, 10, 9),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false,
        ),
      ],
    );
    // when
    final actual = givenCalendarWeek1 == givenCalendarWeek2;

    // then
    expect(actual, false);
  });
}
