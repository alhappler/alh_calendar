import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/widgets/calendar_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const givenForceSixWeekMonth = true;

  bool matchCalendarCells({
    required CalendarCell firstCalendarCell,
    required CalendarCell secondCalendarCell,
  }) {
    if (firstCalendarCell.date == secondCalendarCell.date &&
        firstCalendarCell.isInCurrentMonth ==
            secondCalendarCell.isInCurrentMonth &&
        firstCalendarCell.isWeekend == secondCalendarCell.isWeekend &&
        firstCalendarCell.isSelected == secondCalendarCell.isSelected) {
      return true;
    }
    return false;
  }

  bool matchCalendarCellsBySixthRowDisabledAndOutOfRange({
    required CalendarCell firstCalendarCell,
    required CalendarCell secondCalendarCell,
  }) {
    if (firstCalendarCell.isOutOfRange == secondCalendarCell.isOutOfRange) {
      return true;
    }
    return false;
  }

  bool matchTableRows({
    required TableRow firstTableRow,
    required TableRow secondTableRow,
    required bool testSixthRowAndOutOfRange,
  }) {
    if (firstTableRow.children.length != secondTableRow.children.length) {
      return false;
    } else {
      for (int cell = 0; cell <= firstTableRow.children.length - 1; cell++) {
        if (testSixthRowAndOutOfRange) {
          if (!matchCalendarCellsBySixthRowDisabledAndOutOfRange(
            firstCalendarCell: firstTableRow.children[cell] as CalendarCell,
            secondCalendarCell: secondTableRow.children[cell] as CalendarCell,
          )) {
            return false;
          }
        } else {
          if (!matchCalendarCells(
            firstCalendarCell: firstTableRow.children[cell] as CalendarCell,
            secondCalendarCell: secondTableRow.children[cell] as CalendarCell,
          )) {
            return false;
          }
        }
      }
      return true;
    }
  }

  Padding dayBuilder(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) {
    return const Padding(
      padding: EdgeInsets.all(7.5),
      child: DecoratedBox(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
      ),
    );
  }

  final expectedMonth = DateTime(2022, 9);
  final expectedWeek1 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 08, 29),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 08, 30),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 08, 31),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 1),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 2),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 3),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 4),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: true,
      ),
    ],
  );
  final expectedWeek2 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 09, 5),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 6),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 7),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 8),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 9),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 10),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 11),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: true,
      ),
    ],
  );
  final expectedWeek3 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 09, 12),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 13),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 14),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 15),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 16),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 17),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 18),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: true,
      ),
    ],
  );
  final expectedWeek4 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 09, 19),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 20),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 21),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 22),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 23),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 24),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 25),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: true,
      ),
    ],
  );
  final expectedWeek5 = CalendarWeek(
    days: [
      CalendarDay(
        date: DateTime(2022, 09, 26),
        dayOfWeek: DayOfWeek.monday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 27),
        dayOfWeek: DayOfWeek.tuesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 28),
        dayOfWeek: DayOfWeek.wednesday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 29),
        dayOfWeek: DayOfWeek.thursday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 09, 30),
        dayOfWeek: DayOfWeek.friday,
        isInCurrentMonth: true,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 1),
        dayOfWeek: DayOfWeek.saturday,
        isInCurrentMonth: false,
      ),
      CalendarDay(
        date: DateTime(2022, 10, 2),
        dayOfWeek: DayOfWeek.sunday,
        isInCurrentMonth: false,
      ),
    ],
  );
  final expectedWeek6 = CalendarWeek(
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

  final givenCalendarMonth = CalendarMonth(
    month: expectedMonth,
    weeks: [
      expectedWeek1,
      expectedWeek2,
      expectedWeek3,
      expectedWeek4,
      expectedWeek5,
      expectedWeek6,
    ],
  );

  group('#buildCurrentCalendarMonth', () {
    test(
        'GIVEN dateTime which does not require 6th week and forceSixWeeksMonth is true '
        'WHEN .buildCurrentCalendarMonth is called '
        'THEN should return expected month, length == 6 and expected weeks',
        () {
      // given
      final givenDateTime = DateTime(2022, 9, 29);

      // when
      final actual = CalendarTableHelper.buildCurrentCalendarMonth(
        date: givenDateTime,
        forceSixWeekMonth: givenForceSixWeekMonth,
      );

      // then
      expect(actual.month, expectedMonth);
      expect(actual.weeks.length, 6);
      expect(actual.weeks[0] == expectedWeek1, isTrue);
      expect(actual.weeks[1] == expectedWeek2, isTrue);
      expect(actual.weeks[2] == expectedWeek3, isTrue);
      expect(actual.weeks[3] == expectedWeek4, isTrue);
      expect(actual.weeks[4] == expectedWeek5, isTrue);
      expect(
        actual.weeks[5] == expectedWeek6,
        isTrue,
      ); // should have only days from next month
    });

    test(
        'GIVEN forceSixWeekMonth is false '
        'WHEN .buildCurrentCalendarMonth is called '
        'THEN should return expected month, length == 5 and expected weeks',
        () {
      // given
      final givenDateTime = DateTime(2022, 9, 29);
      const givenForceSixWeekMonth = false;

      // when
      final actual = CalendarTableHelper.buildCurrentCalendarMonth(
        date: givenDateTime,
        forceSixWeekMonth: givenForceSixWeekMonth,
      );

      // then
      expect(actual.month, expectedMonth);
      expect(actual.weeks.length, 5);
      expect(actual.weeks[0] == expectedWeek1, isTrue);
      expect(actual.weeks[1] == expectedWeek2, isTrue);
      expect(actual.weeks[2] == expectedWeek3, isTrue);
      expect(actual.weeks[3] == expectedWeek4, isTrue);
      expect(actual.weeks[4] == expectedWeek5, isTrue);
    });

    test(
        'GIVEN forceSixWeekMonth is false and dateTime that requires 6th week '
        'WHEN .buildCurrentCalendarMonth is called '
        'THEN should return expected month, length == 6 ', () {
      // given
      final givenDateTime = DateTime(2022, 10, 29);
      const givenForceSixWeekMonth = false;

      // when
      final actual = CalendarTableHelper.buildCurrentCalendarMonth(
        date: givenDateTime,
        forceSixWeekMonth: givenForceSixWeekMonth,
      );

      // then
      final expectedMonth = DateTime(2022, 10);
      expect(actual.month, expectedMonth);
      expect(actual.weeks.length, 6);
    });
  });

  group('buildCalendarTableRow', () {
    test(
        'GIVEN disableTapOnOutOfRange = true, selectedDate = 2022, 09, 26 '
        'WHEN .buildCalendarTableRow is called '
        'THEN should show expected TableRows with expected calendarCells, CalendarCell of selectedDate should be selected',
        () {
      // given
      const givenDisableTapOnOutOfRange = true;
      final givenSelectedDate = DateTime(2022, 09, 26);

      // when
      final actual = CalendarTableHelper.buildCalendarTableRow(
        calendarMonth: givenCalendarMonth,
        selectedDate: givenSelectedDate,
        dayBuilder: dayBuilder,
        onSelectDay: (DateTime dateTime) {},
        disableTapOnOutOfRange: givenDisableTapOnOutOfRange,
      );

      // then
      final expectedTableRow1 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 8, 29),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 8, 30),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 8, 31),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 1),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 2),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 3),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 4),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );
      final expectedTableRow2 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 9, 5),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 6),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 7),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 8),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 9),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 10),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 11),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );
      final expectedTableRow3 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 9, 12),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 13),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 14),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 15),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 16),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 17),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 18),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );
      final expectedTableRow4 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 9, 19),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 20),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 21),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 22),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 23),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 24),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 25),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );
      final expectedTableRow5 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 9, 26),
            isInCurrentMonth: true,
            isSelected: true,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 27),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 28),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 29),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 9, 30),
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 1),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 2),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );
      final expectedTableRow6 = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 10, 3),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 4),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 5),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 6),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 7),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 8),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 9),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
        ],
      );

      final List<TableRow> expectedTableRows = [
        expectedTableRow1,
        expectedTableRow2,
        expectedTableRow3,
        expectedTableRow4,
        expectedTableRow5,
        expectedTableRow6,
      ];
      for (int index = 0; index <= expectedTableRows.length - 1; index++) {
        expect(
          matchTableRows(
            firstTableRow: actual[index],
            secondTableRow: expectedTableRows[index],
            testSixthRowAndOutOfRange: false,
          ),
          isTrue,
        );
      }
    });

    test(
        'GIVEN forceSixWeekMonth is false and dateTime  = 2022.10.29 '
        'WHEN .buildCurrentCalendarMonth is called '
        'THEN should return expected month, length == 6 ', () {
      // given
      final givenDateTime = DateTime(2022, 10, 29);
      const givenForceSixWeekMonth = false;

      // when
      final actual = CalendarTableHelper.buildCurrentCalendarMonth(
        date: givenDateTime,
        forceSixWeekMonth: givenForceSixWeekMonth,
      );

      // then
      final expectedMonth = DateTime(2022, 10);
      expect(actual.month, expectedMonth);
      expect(actual.weeks.length, 6);
    });

    test(
        'GIVEN maxSelectableDate = 2022.10.4 and minSelectableDate = 2022.10.8 '
        'WHEN .buildCalendarTableRow is called '
        'THEN the days 2022.10.4 and 2022.10.8 should have flag isOutOfRange = true, '
        'while all the others are flagged with = false ', () {
      // given
      final givenMinSelectableDate = DateTime(2022, 10, 4);
      final givenMaxSelectableDate = DateTime(2022, 10, 8);

      // when
      final actual = CalendarTableHelper.buildCalendarTableRow(
        calendarMonth: givenCalendarMonth,
        selectedDate: DateTime(2022, 09, 26),
        dayBuilder: dayBuilder,
        onSelectDay: (DateTime dateTime) {},
        disableTapOnOutOfRange: true,
        maxSelectableDate: givenMaxSelectableDate,
        minSelectableDate: givenMinSelectableDate,
      );

      // then

      final expectedTableRow = TableRow(
        children: [
          CalendarCell(
            date: DateTime(2022, 10, 3),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: true,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 4),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 5),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 6),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 7),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: false,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 8),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: false,
          ),
          CalendarCell(
            date: DateTime(2022, 10, 9),
            isInCurrentMonth: false,
            isSelected: false,
            isWeekend: true,
            dayBuilder: dayBuilder,
            onTap: () {},
            isOutOfRange: true,
          ),
        ],
      );

      expect(
        matchTableRows(
          firstTableRow: actual.last,
          secondTableRow: expectedTableRow,
          testSixthRowAndOutOfRange: true,
        ),
        isTrue,
      );
    });
  });
}
