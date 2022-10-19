import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final expectedCurrentCalendarMonth =
      CalendarMonth(month: DateTime(2000, 01, 01), weeks: [
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 12, 27),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 12, 28),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 12, 29),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 12, 30),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 12, 31),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 1),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 2),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 4),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 5),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 6),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 7),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 8),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 9),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 10),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 11),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 12),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 13),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 14),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 15),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 16),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 17),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 18),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 19),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 20),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 21),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 22),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 23),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 24),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 25),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 26),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 27),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 28),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 29),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 30),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 31),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 1),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 2),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 3),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 4),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 5),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 6),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]),
  ]);

  final expectedNextCalendarMonth =
      CalendarMonth(month: DateTime(2000, 02, 01), weeks: [
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 31),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 2, 1),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 2),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 3),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 4),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 5),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 6),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 2, 7),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 8),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 9),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 10),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 11),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 12),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 13),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 2, 14),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 15),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 16),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 17),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 18),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 19),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 20),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 2, 21),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 22),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 23),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 24),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 25),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 26),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 27),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 2, 28),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 2, 29),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 3, 1),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 2),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 3),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 4),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 5),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 3, 6),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 7),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 8),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 9),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 10),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 11),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 3, 12),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]),
  ]);

  final expectedPreviousCalendarMonth =
      CalendarMonth(month: DateTime(1999, 12, 01), weeks: [
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 11, 29),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 11, 30),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(1999, 12, 1),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 2),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 3),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 4),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 5),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 12, 6),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 7),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 8),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 9),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 10),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 11),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 12),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 12, 13),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 14),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 15),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 16),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 17),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 18),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 19),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 12, 20),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 21),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 22),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 23),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 24),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 25),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 26),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: true),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(1999, 12, 27),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 28),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 29),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 30),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(1999, 12, 31),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: true),
      CalendarDay(
          date: DateTime(2000, 1, 1),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 2),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]),
    CalendarWeek(days: [
      CalendarDay(
          date: DateTime(2000, 1, 3),
          dayOfWeek: DayOfWeek.monday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 4),
          dayOfWeek: DayOfWeek.tuesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 5),
          dayOfWeek: DayOfWeek.wednesday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 6),
          dayOfWeek: DayOfWeek.thursday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 7),
          dayOfWeek: DayOfWeek.friday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 8),
          dayOfWeek: DayOfWeek.saturday,
          isInCurrentMonth: false),
      CalendarDay(
          date: DateTime(2000, 1, 9),
          dayOfWeek: DayOfWeek.sunday,
          isInCurrentMonth: false),
    ]),
  ]);

  Padding dayBuilder(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Text(
          '${calendarDayBuilderModel.dateTime!.month} ${calendarDayBuilderModel.dateTime!.day}'),
    );
  }

  TableCell dayOfWeekBuilder(
    String dayOfWeek,
    bool isWeekEnd,
  ) {
    return const TableCell(
      child: Center(),
    );
  }

  Text headerTitleBuilder(DateTime date) {
    return Text(date.toString());
  }

  final givenDayOfWeekMap = {
    DayOfWeek.monday: 'Mon',
    DayOfWeek.thursday: 'Thu',
    DayOfWeek.wednesday: 'Wen',
    DayOfWeek.tuesday: 'Tue',
    DayOfWeek.friday: 'Fri',
    DayOfWeek.saturday: 'Sat',
    DayOfWeek.sunday: 'Sun',
  };

  final givenMinimumDayDate = DateTime(2000, 1, 1);
  final givenMaximumDayDate = DateTime(2000, 1, 10);
  const givenHeaderLeading = Icon(Icons.chevron_left);
  const givenHeaderTrailing = Icon(Icons.chevron_right);

  Future<void> pumpWidget(
    WidgetTester tester, {
    required DateTime initialDateTime,
    DateTime? maximumMonthDate,
    DateTime? minimumMonthDate,
    VoidCallback? onMaximumMonthReached,
    VoidCallback? onMinimumMonthReached,
    ValueChanged<DateTime>? onMonthChanged,
    ValueChanged<DateTime>? onDayChanged,
    bool? enableJumpToOtherMonth,
    bool? enableHorizontalSwipe,
  }) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: AlhCalendar(
          dayBuilder: dayBuilder,
          headerBuilder: headerTitleBuilder,
          headerLeading: givenHeaderLeading,
          headerTrailing: givenHeaderTrailing,
          dayOfWeekBuilder: dayOfWeekBuilder,
          daysOfWeek: givenDayOfWeekMap,
          initialDateTime: initialDateTime,
          maximumMonthDate: maximumMonthDate,
          minimumMonthDate: minimumMonthDate,
          minimumDayDate: givenMinimumDayDate,
          maximumDayDate: givenMaximumDayDate,
          onReachedMaximumDate: onMaximumMonthReached,
          onReachedMinimumDate: onMinimumMonthReached,
          onMonthChanged: onMonthChanged,
          onDayChanged: onDayChanged,
          disableTapOnOutOfRange: false,
          enableJumpToOtherMonth: enableJumpToOtherMonth ?? true,
          enableHorizontalSwipe: enableHorizontalSwipe ?? true,
        ),
      ),
    ));
  }

  testWidgets(
      'GIVEN initialDateTime = DateTime(2000, 1, 5) '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    final givenInitialDateTime = DateTime(2000, 1, 5);

    // when
    await pumpWidget(
      tester,
      initialDateTime: givenInitialDateTime,
    );

    // then
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Column &&
            widget.crossAxisAlignment == CrossAxisAlignment.start),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is CalenderHeader &&
            widget.padding == const EdgeInsets.all(3.0) &&
            widget.iconLeft == givenHeaderLeading &&
            widget.iconRight == givenHeaderTrailing &&
            widget.header is Text &&
            (widget.header as Text).data == givenInitialDateTime.toString()),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is CalendarBody &&
            widget.daysOfWeek == givenDayOfWeekMap &&
            widget.selectedDateTime == givenInitialDateTime &&
            widget.minimumDayDate == givenMinimumDayDate &&
            widget.maximumDayDate == givenMaximumDayDate &&
            widget.disableClickOnOutOfRange == false &&
            widget.disableSixthRow == false &&
            widget.calendarMonth == expectedCurrentCalendarMonth),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Padding && widget.padding == const EdgeInsets.all(2)),
        findsNWidgets(42));
    expect(
        find.byWidgetPredicate(
            (widget) => widget is TableCell && widget.child is Center),
        findsNWidgets(7));
  });

  group('#goToNextMonth', () {
    testWidgets(
        'GIVEN initialDateTime, maximumMonthDate is reached and onMaximumMonthIsReached'
        'WHEN headerTrailing is tapped '
        'THEN calendarMonth should not change and callBackMaximumMonthIsReached should be true',
        (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      final givenMaximumMonthDate = DateTime(2000, 01);

      bool callBackMaximumMonthIsReached = false;
      void givenOnMaximumMonthIsReached() {
        callBackMaximumMonthIsReached = true;
      }

      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        maximumMonthDate: givenMaximumMonthDate,
        onMaximumMonthReached: givenOnMaximumMonthIsReached,
      );

      // when
      await tester.tap(find.byWidget(givenHeaderTrailing));
      await tester.pumpAndSettle();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedCurrentCalendarMonth),
          findsOneWidget);
      expect(callBackMaximumMonthIsReached, isTrue);
    });

    testWidgets(
        'GIVEN initialDateTime, maximumMonthDate is not reached '
        'WHEN headerTrailing is tapped '
        'THEN calendarMonth should change to next calendarMonth and callBackMaximumMonthIsReached should be 0',
        (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      final givenMaximumMonthDate = DateTime(2000, 02);
      bool callBackMaximumMonthIsReached = false;
      void givenOnMaximumMonthIsReached() {
        callBackMaximumMonthIsReached = true;
      }

      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        maximumMonthDate: givenMaximumMonthDate,
        onMaximumMonthReached: givenOnMaximumMonthIsReached,
      );

      // when
      await tester.tap(find.byWidget(givenHeaderTrailing));
      await tester.pumpAndSettle();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedNextCalendarMonth),
          findsOneWidget);
      expect(callBackMaximumMonthIsReached, isFalse);
    });
  });

  group('#isMinimumMonthDateReached', () {
    testWidgets(
        'GIVEN initialDateTime and minimumMonthDate is reached '
        'WHEN headerLeading is tapped '
        'THEN calendarMonth should not change and '
        'callBackMinimumMonthDateIsReached should be true',
        (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      final givenMinimumMonthDate = DateTime(2000, 01);
      bool callBackMinimumMonthDateIsReached = false;
      void givenOnMinimumMonthDateIsReached() {
        callBackMinimumMonthDateIsReached = true;
      }

      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        minimumMonthDate: givenMinimumMonthDate,
        onMinimumMonthReached: givenOnMinimumMonthDateIsReached,
      );

      // when
      await tester.tap(find.byWidget(givenHeaderLeading));
      await tester.pumpAndSettle();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedCurrentCalendarMonth),
          findsOneWidget);
      expect(callBackMinimumMonthDateIsReached, isTrue);
    });

    testWidgets(
        'GIVEN initialDateTime, minimumMonthDate is not reached '
        'WHEN headerLeading is tapped '
        'THEN calendarMonth should change to previous calendarMonth '
        'and callBackMinimumMonthDateIsReached should be false',
        (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      final givenMinimumMonthDate = DateTime(1999, 12);
      bool callBackMinimumMonthDateIsReached = false;
      void givenOnMinimumMonthDateIsReached() {
        callBackMinimumMonthDateIsReached = true;
      }

      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        minimumMonthDate: givenMinimumMonthDate,
        onMinimumMonthReached: givenOnMinimumMonthDateIsReached,
      );

      // when
      await tester.tap(find.byWidget(givenHeaderLeading));
      await tester.pumpAndSettle();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedPreviousCalendarMonth),
          findsOneWidget);
      expect(callBackMinimumMonthDateIsReached, isFalse);
    });
  });

  group('onMonthChanged', () {
    testWidgets(
        'GIVEN initialDateTime '
        'WHEN headerTrailing is tapped '
        'THEN callBackMonthHasChanged should be true and should show expected monthDate',
        (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      late DateTime currentMonthDate;

      bool callBackMonthHasChanged = false;
      void givenOnMonthChanged(month) {
        callBackMonthHasChanged = true;
        currentMonthDate = month;
      }

      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        onMonthChanged: givenOnMonthChanged,
      );

      // when
      final expectedMonthDate = DateTime(2000, 02, 01);
      await tester.tap(find.byWidget(givenHeaderTrailing));
      await tester.pumpAndSettle();

      // then
      expect(callBackMonthHasChanged, isTrue);
      expect(currentMonthDate, expectedMonthDate);
    });
  });

  group('#selectCalendarDay', () {
    testWidgets(
        'Given initialDateTime '
        'WHEN day in previous month is tapped '
        'THEN should jump to previous month', (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
      );

      // when
      await tester.tap(find.text(
          '12 27')); // current month is 2000.01, 1999.12.27 is in previous month
      await tester.pumpAndSettle();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedPreviousCalendarMonth),
          findsOneWidget);
    });

    testWidgets(
        'Given initialDateTime = enableJumpToOtherMonth = false'
        'WHEN day in previous month is tapped '
        'THEN should not jump to previous month', (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      const givenEnableJumpToOtherMonth = false;
      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
        enableJumpToOtherMonth: givenEnableJumpToOtherMonth,
      );

      // when
      await tester.tap(find.text(
          '12 27')); // current month is 2000.01, 1999.12.27 is in previous month
      await tester.pump();

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedCurrentCalendarMonth),
          findsOneWidget);
    });
  });

  group('onHorizontalDragEnd', () {
    testWidgets(
        'GIVEN initialDateTime '
        'WHEN swiped to right '
        'THEN should show next calendarMonth', (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
      );

      // when
      await tester.fling(
        find.text('12 27'),
        const Offset(150, 0),
        1000,
      );
      await tester.pump(const Duration(seconds: 1));

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedPreviousCalendarMonth),
          findsOneWidget);
    });

    testWidgets(
        'GIVEN initialDateTime '
        'WHEN swiped to left '
        'THEN should show next calendarMonth', (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      await pumpWidget(
        tester,
        initialDateTime: givenInitialDateTime,
      );

      // when
      await tester.fling(
        find.text('12 27'),
        const Offset(-150, 0),
        1000,
      );
      await tester.pump(const Duration(seconds: 1));

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedNextCalendarMonth),
          findsOneWidget);
    });

    testWidgets(
        'GIVEN initialDateTime and enableHorizontalSwipe is false '
        'WHEN swiped to left '
        'THEN nothing should happen', (WidgetTester tester) async {
      // given
      final givenInitialDateTime = DateTime(2000, 1, 5);
      const givenEnableHorizontalSwipe = false;
      await pumpWidget(
        tester,
        enableHorizontalSwipe: givenEnableHorizontalSwipe,
        initialDateTime: givenInitialDateTime,
      );

      // when
      await tester.fling(
        find.text('12 27'),
        const Offset(-150, 0),
        1000,
      );
      await tester.pump(const Duration(seconds: 1));

      // then
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedCurrentCalendarMonth),
          findsOneWidget);
    });
  });
}
