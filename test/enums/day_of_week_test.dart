import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("#values", () {
    test(
        "GIVEN "
        "WHEN values "
        "THEN should return all known values", () {
      // given

      // when
      const actual = DayOfWeek.values;

      // then
      const expectedValues = [
        DayOfWeek.monday,
        DayOfWeek.tuesday,
        DayOfWeek.wednesday,
        DayOfWeek.thursday,
        DayOfWeek.friday,
        DayOfWeek.saturday,
        DayOfWeek.sunday,
      ];
      expect(actual, equals(expectedValues));
    });
  });

  group("#isWeekend", () {
    test(
        "GIVEN DayOfWeek.saturday "
        "WHEN .isWeekend is called "
        "THEN should return true", () {
      // given
      const givenDayOfWeek = DayOfWeek.saturday;

      // when
      final actual = givenDayOfWeek.isWeekend;

      // then
      expect(actual, isTrue);
    });

    test(
        "GIVEN DayOfWeek.sunday "
        "WHEN .isWeekend is called "
        "THEN should return true", () {
      // given
      const givenDayOfWeek = DayOfWeek.sunday;

      // when
      final actual = givenDayOfWeek.isWeekend;

      // then
      expect(actual, isTrue);
    });

    test(
        "GIVEN DayOfWeek.monday "
        "WHEN .isWeekend is called "
        "THEN should return false", () {
      // given
      const givenDayOfWeek = DayOfWeek.monday;

      // when
      final actual = givenDayOfWeek.isWeekend;

      // then
      expect(actual, isFalse);
    });
  });
}
