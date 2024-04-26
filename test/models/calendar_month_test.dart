import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:flutter_test/flutter_test.dart';

import '../calendar_builder.dart';

void main() {
  final calendarBuilder = CalendarBuilder();
  final givenCalendarMonth = CalendarMonth(
    month: DateTime(2022, 9),
    weeks: [
      CalendarWeek(
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
      ),
      CalendarWeek(
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
      ),
      CalendarWeek(
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
      ),
      CalendarWeek(
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
      ),
      CalendarWeek(
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
      ),
      CalendarWeek(
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
      ),
    ],
  );

  test(
      'GIVEN - '
      'WHEN try to build CalendarMonth with 4 weeks '
      'THEN should throw AssertionError', () {
    // given

    // when
    CalendarMonth buildGivenCalendarMonth() {
      final calendarMonth =
          calendarBuilder.setUpCalendarMonth(numberOfWeeks: 4);
      return calendarMonth;
    }

    // then
    expect(buildGivenCalendarMonth, throwsAssertionError);
  });

  test(
      'GIVEN - '
      'WHEN try to build CalendarMonth with 7 weeks '
      'THEN should throw AssertionError', () {
    // given

    // when
    CalendarMonth buildGivenCalendarMonth() {
      final calendarMonth =
          calendarBuilder.setUpCalendarMonth(numberOfWeeks: 7);
      return calendarMonth;
    }

    // then
    expect(buildGivenCalendarMonth, throwsAssertionError);
  });

  test(
      'GIVEN two equal CalendarMonths '
      'WHEN == is called and hashCode is retrieved '
      'THEN should return true and hashCode should be the same', () {
    // given
    final givenCalendarMonth =
        calendarBuilder.setUpCalendarMonth(numberOfWeeks: 6);
    final givenCalendarMonth2 =
        calendarBuilder.setUpCalendarMonth(numberOfWeeks: 6);

    // when
    final actual = givenCalendarMonth == givenCalendarMonth2;
    final hashCode1 = givenCalendarMonth.hashCode;
    final hashCode2 = givenCalendarMonth2.hashCode;

    // then
    expect(actual, isTrue);
    expect(hashCode1, hashCode2);
  });

  test(
      'GIVEN two equal CalendarMonths and the second calendarMonth has more weeks'
      'WHEN == is called '
      'THEN should return false', () {
    // given
    final givenCalendarMonth =
        calendarBuilder.setUpCalendarMonth(numberOfWeeks: 5);
    final givenCalendarMonth2 =
        calendarBuilder.setUpCalendarMonth(numberOfWeeks: 6);

    // when
    final actual = givenCalendarMonth == givenCalendarMonth2;

    // then
    expect(actual, isFalse);
  });

  test(
      'GIVEN two non equal CalendarMonths '
      'WHEN == is called and hashCode is retrieved '
      'THEN should return false and the hashCode should be deferent', () {
    // given
    final givenCalendarMonth2 = CalendarMonth(
      month: DateTime(2022, 10),
      weeks: [
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
        CalendarWeek(
          days: [
            CalendarDay(
              date: DateTime(2022, 12, 3),
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
        ),
      ],
    );

    // when
    final actual = givenCalendarMonth == givenCalendarMonth2;
    final hashCode1 = givenCalendarMonth.hashCode;
    final hashCode2 = givenCalendarMonth2.hashCode;

    // then
    expect(actual, isFalse);
    expect(hashCode1, isNot(hashCode2));
  });
}
