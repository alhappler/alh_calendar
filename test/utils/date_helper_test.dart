import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#isMaximumMonthDateReached', () {
    test(
        'GIVEN currentDateTime = 01.2000 and maximumDateTime = 01.2001 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDateTime = DateTime(2000, 01);
      final givenMaximumDateTime = DateTime(2001, 01);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maximumDateTime: givenMaximumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDateTime = 01.2000 and maximumDateTime = 02.2000 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDateTime = DateTime(2000, 01);
      final givenMaximumDateTime = DateTime(2000, 02);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maximumDateTime: givenMaximumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDateTime = 01.2000 and maximumDateTime = 01.2000 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return true', () {
      //given
      final givenCurrentDateTime = DateTime(2000, 01);
      final givenMaximumDateTime = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maximumDateTime: givenMaximumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#isMinimumMonthDateReached', () {
    test(
        'GIVEN currentDateTime = 01.2001 and minimumDateTime = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDateTime = DateTime(2001, 01);
      final givenMinimumDateTime = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinimumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDateTime = 02.2000 and minimumDateTime = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDateTime = DateTime(2000, 02);
      final givenMinimumDateTime = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinimumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDateTime = 01.2000 and minimumDateTime = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return true', () {
      //given
      final givenCurrentDateTime = DateTime(2000, 01);
      final givenMinimumDateTime = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinimumDateTime,
        currentDateTime: givenCurrentDateTime,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#isDayOutOfRange', () {
    test(
        'GIVEN dayDateTime, minimumDayDate and maximumDayDateTime are null '
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      const givenMinimumDayTime = null;
      const givenMaximumDayTime = null;

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime, minimumDayDate and maximumDayDateTime are not null '
        'and DayDateTime is before minimumDay '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      final givenMinimumDayTime = DateTime(2022, 10, 2);
      final givenMaximumDayTime = DateTime(2022, 10, 3);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime, minimumDayDate and maximumDayDateTime are not null '
        'and DayDateTime is before maximum- and after minimumDayTime '
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 2);
      final givenMinimumDayTime = DateTime(2022, 10, 1);
      final givenMaximumDayTime = DateTime(2022, 10, 3);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      //then
      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime, minimumDayDate and maximumDayDateTime are not null '
        'and DayDateTime is after maximumDateTime '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 3);
      final givenMinimumDayTime = DateTime(2022, 10, 1);
      final givenMaximumDayTime = DateTime(2022, 10, 2);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      //then
      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime and minimumDayDate are not null while maximumDayDate is null '
        'and DayDateTime is after minimumDayDate '
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 2);
      final givenMinimumDayTime = DateTime(2022, 10, 1);
      const givenMaximumDayTime = null;

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      //then
      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime and minimumDayDate are not null while maximumDayDate is null '
        'and DayDateTime is before minimumDayDate '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      final givenMinimumDayTime = DateTime(2022, 10, 2);
      const givenMaximumDayTime = null;

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime and maximumDayDate are not null while minimumDayDate is null '
        'and DayDateTime is before maximumDayDate'
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      const givenMinimumDayTime = null;
      final givenMaximumDayTime = DateTime(2022, 10, 2);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime and maximumDayDate are not null while minimumDayDate is null '
        'and DayDateTime is after maximumDayDate'
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 2);
      const givenMinimumDayTime = null;
      final givenMaximumDayTime = DateTime(2022, 10, 1);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minimumDayDate: givenMinimumDayTime,
        maximumDayDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#isDayOfCurrentMonthInLastRow', () {
    test(
        'GIVEN calendarWeek with day from current month '
        'WHEN .isDayOfCurrentMonthInLastRow is called '
        'THEN should return true', () {
      // given
      final givenCalendarWeek = CalendarWeek(days: [
        CalendarDay(
            date: DateTime(2022, 07, 29),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true),
        CalendarDay(
            date: DateTime(2022, 07, 30),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 07, 31),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 1),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true),
        CalendarDay(
            date: DateTime(2022, 08, 2),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 3),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 4),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: false),
      ]);

      // when
      final actual = DateHelper.isDayOfCurrentMonthInLastRow(
          calendarWeek: givenCalendarWeek);

      // then
      expect(actual, isTrue);
    });

    test(
        'GIVEN calendarWeek with no day from current month '
        'WHEN .isDayOfCurrentMonthInLastRow is called '
        'THEN should return false', () {
      // given
      final givenCalendarWeek = CalendarWeek(days: [
        CalendarDay(
            date: DateTime(2022, 07, 29),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 07, 30),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 07, 31),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 1),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 2),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 3),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false),
        CalendarDay(
            date: DateTime(2022, 08, 4),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: false),
      ]);

      // when
      final actual = DateHelper.isDayOfCurrentMonthInLastRow(
          calendarWeek: givenCalendarWeek);

      // then
      expect(actual, isFalse);
    });
  });
}
