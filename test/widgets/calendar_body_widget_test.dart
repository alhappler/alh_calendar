import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../calendar_builder.dart';

void main() {
  final calendarBuilder = CalendarBuilder();
  final givenCalendarMonth = calendarBuilder.getCalendarMonth();

  final givenDayOfWeekMap = {
    DayOfWeek.monday: 'Mon',
    DayOfWeek.thursday: 'Thu',
    DayOfWeek.wednesday: 'Wen',
    DayOfWeek.tuesday: 'Tue',
    DayOfWeek.friday: 'Fri',
    DayOfWeek.saturday: 'Sat',
    DayOfWeek.sunday: 'XXX',
  };

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

  TableCell dayOfWeekBuilder(
    String dayOfWeek,
    bool isWeekEnd,
  ) {
    return TableCell(
      child: Center(
        child: Text(
          dayOfWeek,
          style: TextStyle(color: isWeekEnd ? Colors.green : Colors.redAccent),
        ),
      ),
    );
  }

  Future<void> pumpWidget({
    required WidgetTester tester,
    required ValueChanged<DateTime> onSelectDay,
    DateTime? minSelectableDate,
    DateTime? maxSelectableDate,
    DateTime? selectedDate,
    bool disableTapOnOutOfRange = true,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CalendarBody(
            calendarMonth: givenCalendarMonth,
            dayBuilder: dayBuilder,
            dayOfWeekBuilder: dayOfWeekBuilder,
            onSelectDay: onSelectDay,
            daysOfWeek: givenDayOfWeekMap,
            selectedDate: selectedDate,
            disableTapOnOutOfRange: disableTapOnOutOfRange,
            minSelectableDate: minSelectableDate,
            maxSelectableDate: maxSelectableDate,
          ),
        ),
      ),
    );
  }

  testWidgets(
      'GIVEN - '
      'WHEN CalendarBody is pumped '
      'THEN should show expected structure', (WidgetTester tester) async {
    // given

    // when
    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {},
    );

    // then
    late int expectedCalendarCellCount = 0;
    for (final week in givenCalendarMonth.weeks) {
      expectedCalendarCellCount += week.days.length;
    }

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Padding &&
            widget.padding == const EdgeInsets.symmetric(horizontal: 4),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Card && widget.child is Table && widget.elevation == 0,
      ),
      findsOneWidget,
    );
    expect(find.byType(Table), findsOneWidget);
    givenDayOfWeekMap.forEach((_, dayName) {
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is TableCell &&
              widget.child is Center &&
              (widget.child as Center).child is Text &&
              ((widget.child as Center).child! as Text).data == dayName,
        ),
        findsOneWidget,
      );
    });
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarCell &&
            widget.isOutOfRange == false &&
            widget.isSelected == false &&
            widget.dayBuilder == dayBuilder &&
            widget.onTap != null,
      ),
      findsNWidgets(expectedCalendarCellCount),
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is CalendarCell && widget.isSelected == true,
      ),
      findsNothing,
    );
  });

  testWidgets(
      'GIVEN minSelectableDate, maxSelectableDate and selectedDate '
      'WHEN CalendarBody is pumped '
      'THEN should show CalendarCell with isOutOfRange like expected',
      (WidgetTester tester) async {
    // given
    final givenMinSelectableDate = DateTime(2022, 9, 5);
    final givenMaxSelectableDate = DateTime(2022, 9, 8);
    final givenSelectedDate = DateTime(2022, 9, 6);

    // when
    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {},
      minSelectableDate: givenMinSelectableDate,
      maxSelectableDate: givenMaxSelectableDate,
      selectedDate: givenSelectedDate,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarCell &&
            widget.date == DateTime(2022, 9, 4) &&
            widget.isOutOfRange == true &&
            widget.onTap == null,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarCell &&
            widget.isSelected == true &&
            widget.isOutOfRange == false &&
            widget.onTap != null &&
            widget.date == givenSelectedDate,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN minSelectableDate and maxSelectableDate and disableTapOnOutOfRange = false '
      'WHEN CalendarBody is pumped '
      'THEN should show CalendarCell with isOutOfRange like expected',
      (WidgetTester tester) async {
    // given
    final givenMinSelectableDate = DateTime(2022, 9, 5);
    final givenMaxSelectableDate = DateTime(2022, 9, 8);

    // when
    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {},
      minSelectableDate: givenMinSelectableDate,
      maxSelectableDate: givenMaxSelectableDate,
      disableTapOnOutOfRange: false,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarCell &&
            widget.date == DateTime(2022, 9, 4) &&
            widget.isOutOfRange == true &&
            widget.onTap != null,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN minSelectableDate and maxSelectableDate '
      'WHEN CalendarBody is pumped and CalendarCell out of range is tapped '
      'THEN counter should be 1', (WidgetTester tester) async {
    // given
    int counter = 0;

    final givenMinSelectableDate = DateTime(2022, 10, 5);
    final givenMaxSelectableDate = DateTime(2022, 10, 8);

    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {
        counter++;
      },
      minSelectableDate: givenMinSelectableDate,
      maxSelectableDate: givenMaxSelectableDate,
    );

    // when
    await tester.tap(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarCell &&
            widget.date == DateTime(2022, 10, 6) &&
            widget.isOutOfRange == false,
      ),
    );

    // then
    expect(counter, 1);
  });
}
