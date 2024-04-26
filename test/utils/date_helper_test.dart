import 'package:alh_calendar/utils/date_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#isMaximumMonthDateReached', () {
    test(
        'GIVEN currentDate = 01.2000 and maxSelectableDate = 01.2001 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDate = DateTime(2000, 01);
      final givenMaxSelectableDate = DateTime(2001, 01);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maxSelectableDate: givenMaxSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDate = 01.2000 and maxSelectableDate = 02.2000 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDate = DateTime(2000, 01);
      final givenMaxSelectableDate = DateTime(2000, 02);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maxSelectableDate: givenMaxSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDate = 01.2000 and maxSelectableDate = 01.2000 '
        'WHEN .isMaximumMonthDateReached is called '
        'THEN should return true', () {
      //given
      final givenCurrentDate = DateTime(2000, 01);
      final givenMaxSelectableDate = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMaximumMonthDateReached(
        maxSelectableDate: givenMaxSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#isMinimumMonthDateReached', () {
    test(
        'GIVEN currentDate = 01.2001 and minSelectableDate = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDate = DateTime(2001, 01);
      final givenMinSelectableDate = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDate = 02.2000 and minSelectableDate = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return false', () {
      //given
      final givenCurrentDate = DateTime(2000, 02);
      final givenMinSelectableDate = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN currentDate = 01.2000 and minSelectableDate = 01.2000 '
        'WHEN .isMinimumMonthDateReached is called '
        'THEN should return true', () {
      //given
      final givenCurrentDate = DateTime(2000, 01);
      final givenMinSelectableDate = DateTime(2000, 01);

      // when
      final actual = DateHelper.isMinimumMonthDateReached(
        minimumMonthDate: givenMinSelectableDate,
        currentDate: givenCurrentDate,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#isDayOutOfRange', () {
    test(
        'GIVEN dayDateTime, minSelectableDate and maxSelectableDateTime are null '
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      const givenMinSelectableDate = null;
      const givenMaximumDayTime = null;

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime, minSelectableDate and maxSelectableDateTime are not null '
        'and DayDateTime is before minimumDay '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      final givenMinSelectableDate = DateTime(2022, 10, 2);
      final givenMaximumDayTime = DateTime(2022, 10, 3);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime, minSelectableDate and maxSelectableDateTime are not null '
        'and DayDateTime is before maximum- and after minSelectableDate '
        'WHEN .isDayOutOfRange is called '
        'THEN should return false', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 2);
      final givenMinSelectableDate = DateTime(2022, 10, 1);
      final givenMaximumDayTime = DateTime(2022, 10, 3);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      //then
      expect(actual, isFalse);
    });

    test(
        'GIVEN dayDateTime, minSelectableDate and maxSelectableDateTime are not null '
        'and DayDateTime is after maxSelectableDate '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 3);
      final givenMinSelectableDate = DateTime(2022, 10, 1);
      final givenMaximumDayTime = DateTime(2022, 10, 2);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      //then
      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime and minSelectableDate are not null while maxSelectableDate is null '
        'and DayDateTime is before minSelectableDate '
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 1);
      final givenMinSelectableDate = DateTime(2022, 10, 2);
      const givenMaximumDayTime = null;

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      expect(actual, isTrue);
    });

    test(
        'GIVEN dayDateTime and maxSelectableDate are not null while minSelectableDate is null '
        'and DayDateTime is after maxSelectableDate'
        'WHEN .isDayOutOfRange is called '
        'THEN should return true', () {
      // given
      final givenDayDateTime = DateTime(2022, 10, 2);
      const givenMinSelectableDate = null;
      final givenMaximumDayTime = DateTime(2022, 10, 1);

      // when
      final actual = DateHelper.isDayOutOfRange(
        dayDateTime: givenDayDateTime,
        minSelectableDate: givenMinSelectableDate,
        maxSelectableDate: givenMaximumDayTime,
      );

      // then
      expect(actual, isTrue);
    });
  });

  group('#areDatesEqual', () {
    test(
        'GIVEN two DateTime objects representing the same date '
        'WHEN areDatesEqual is called '
        'THEN should return true', () {
      // given
      final dateTime1 = DateTime(2024, 4, 3);
      final dateTime2 = DateTime(2024, 4, 3);

      // when
      final result =
          DateHelper.areDatesEqual(date1: dateTime1, date2: dateTime2);

      // then
      expect(result, isTrue);
    });

    test(
        'GIVEN two DateTime objects representing different dates '
        'WHEN areDatesEqual is called '
        'THEN should return false', () {
      // given
      final dateTime1 = DateTime(2024, 4, 3);
      final dateTime2 = DateTime(2024, 5, 3);

      // when
      final result =
          DateHelper.areDatesEqual(date1: dateTime1, date2: dateTime2);

      // then
      expect(result, isFalse);
    });

    test(
        'GIVEN two DateTime objects where only time parts are different '
        'WHEN areDatesEqual is called '
        'THEN should return true', () {
      // given
      final dateTime1 = DateTime(2024, 4, 3, 10, 30);
      final dateTime2 = DateTime(2024, 4, 3, 20, 45);

      // when
      final result =
          DateHelper.areDatesEqual(date1: dateTime1, date2: dateTime2);

      // then
      expect(result, isTrue);
    });

    test(
        'GIVEN one DateTime objects is null '
        'WHEN areDatesEqual is called '
        'THEN should return false', () {
      // given
      const dateTime1 = null;
      final dateTime2 = DateTime(2024, 4, 3);

      // when
      final result =
          DateHelper.areDatesEqual(date1: dateTime1, date2: dateTime2);

      // then
      expect(result, isFalse);
    });
  });

  group('#getMonthDifference', () {
    test(
        'GIVEN startDate before endDate '
        'WHEN getMonthDifference is called '
        'THEN should return positive difference in months', () {
      // given
      final startDate = DateTime(2020, 1);
      final endDate = DateTime(2020, 4);

      // when
      final result =
          DateHelper.getMonthDifference(startDate: startDate, endDate: endDate);

      // then
      expect(result, 3); // Difference of 3 months
    });

    test(
        'GIVEN startDate after endDate '
        'WHEN getMonthDifference is called '
        'THEN should return positive difference in months', () {
      // given
      final startDate = DateTime(2020, 5);
      final endDate = DateTime(2020, 2);

      // when
      final result =
          DateHelper.getMonthDifference(startDate: startDate, endDate: endDate);

      // then
      expect(result, 3); // Difference of -3 months
    });

    test(
        'GIVEN startDate and endDate with several years and months apart '
        'WHEN getMonthDifference is called '
        'THEN should return correct difference in months', () {
      // given
      final startDate = DateTime(2018, 5);
      final endDate = DateTime(2020, 5);

      // when
      final result =
          DateHelper.getMonthDifference(startDate: startDate, endDate: endDate);

      // then
      expect(result, 24);
    });
  });
}
