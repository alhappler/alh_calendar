import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AlhCalendarController controller;

  setUp(() {
    controller = AlhCalendarController();
  });

  tearDown(() {
    controller.dispose();
  });

  group('#isAttached', () {
    test(
        'GIVEN no attached method '
        'WHEN calling isAttached '
        'THEN should return false', () {
      // given

      // when
      final actual = controller.isAttached;

      // then
      expect(actual, isFalse);
    });
  });

  group('#calculateJumpMonthIndex', () {
    test(
        'GIVEN target is 10 years before initialDate and '
        'disablePreviousMonthFromDate = null and '
        'disableNextMonthFromDate = null '
        'WHEN calling calculateJumpMonthIndex '
        'THEN should return expected index', () {
      // given
      final givenTarget = DateTime(2015, 12, 24);
      final givenInitialDate = DateTime(2025, 12, 24);

      // when
      final actual = controller.calculateJumpMonthIndex(
        target: givenTarget,
        initialDate: givenInitialDate,
        disablePreviousMonthFromDate: null,
        disableNextMonthFromDate: null,
      );

      // then
      expect(actual, equals(0));
    });

    test(
        'GIVEN target is 20 years before initialDate and '
        'disablePreviousMonthFromDate is 15 years before initialDate and '
        'disableNextMonthFromDate = null '
        'WHEN calling calculateJumpMonthIndex '
        'THEN should return expected index', () {
      // given
      final givenTarget = DateTime(2005, 12, 24);
      final givenInitialDate = DateTime(2025, 12, 24);

      // when
      final actual = controller.calculateJumpMonthIndex(
        target: givenTarget,
        initialDate: givenInitialDate,
        disablePreviousMonthFromDate: DateTime(2010, 12, 24),
        disableNextMonthFromDate: null,
      );

      // then
      expect(actual, equals(0));
    });

    test(
        'GIVEN target is 20 years after initialDate and '
        'disablePreviousMonthFromDate = null and '
        'disableNextMonthFromDate is 15 years after initialDate '
        'WHEN calling calculateJumpMonthIndex '
        'THEN should return expected index', () {
      // given
      final givenTarget = DateTime(2045, 12, 24);
      final givenInitialDate = DateTime(2025, 12, 24);

      // when
      final actual = controller.calculateJumpMonthIndex(
        target: givenTarget,
        initialDate: givenInitialDate,
        disablePreviousMonthFromDate: null,
        disableNextMonthFromDate: DateTime(2040, 12, 24),
      );

      // then
      expect(actual, equals(10 * 12 + 15 * 12));
    });
  });
}
