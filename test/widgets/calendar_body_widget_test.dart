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
    DateTime? minimumDatetime,
    DateTime? maximumDateTime,
  }) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CalendarBody(
          calendarMonth: givenCalendarMonth,
          dayBuilder: dayBuilder,
          dayOfWeekBuilder: dayOfWeekBuilder,
          onSelectDay: onSelectDay,
          daysOfWeek: givenDayOfWeekMap,
          selectedDateTime: DateTime(2022, 9, 12),
          disableClickOnOutOfRange: true,
          minimumDayDate: minimumDatetime,
          maximumDayDate: maximumDateTime,
          disableSixthRow: false,
        ),
      ),
    ));
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

    expect(find.byType(Table), findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.monday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.tuesday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.wednesday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.thursday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.friday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.saturday]),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is TableCell &&
            widget.child is Center &&
            (widget.child as Center).child is Text &&
            ((widget.child as Center).child! as Text).data ==
                givenDayOfWeekMap[DayOfWeek.sunday]),
        findsOneWidget);
    expect(find.byType(CalendarCell), findsNWidgets(expectedCalendarCellCount));
  });

  testWidgets(
      'GIVEN minimumDateTime and maximumDateTime '
      'WHEN CalendarBody is pumped '
      'THEN should show CalendarCell with isOutOfRange like expected',
      (WidgetTester tester) async {
    // given
    final givenMinimumDateTime = DateTime(2022, 9, 5);
    final givenMaximumDateTime = DateTime(2022, 9, 8);

    // when
    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {},
      minimumDatetime: givenMinimumDateTime,
      maximumDateTime: givenMaximumDateTime,
    );

    // then
    expect(
        find.byWidgetPredicate((widget) =>
            widget is CalendarCell &&
            widget.date == DateTime(2022, 9, 4) &&
            widget.isOutOfRange == true),
        findsOneWidget);
  });

  testWidgets(
      'GIVEN minimumDateTime and maximumDateTime '
      'WHEN CalendarBody is pumped and CalendarCell out of range is tapped '
      'THEN counter should be 1', (WidgetTester tester) async {
    // given
    int counter = 0;

    final givenMinimumDateTime = DateTime(2022, 10, 5);
    final givenMaximumDateTime = DateTime(2022, 10, 8);

    await pumpWidget(
      tester: tester,
      onSelectDay: (date) {
        counter++;
      },
      minimumDatetime: givenMinimumDateTime,
      maximumDateTime: givenMaximumDateTime,
    );

    // when
    await tester.tap(find.byWidgetPredicate((widget) =>
        widget is CalendarCell &&
        widget.date == DateTime(2022, 10, 6) &&
        widget.isOutOfRange == false));

    // then
    expect(counter, 1);
  });
}
