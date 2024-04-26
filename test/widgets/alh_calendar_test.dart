import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:alh_calendar/widgets/calendar_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  final calendarMonthJanuary2000 = CalendarMonth(
    month: DateTime(2000, 01, 01),
    weeks: [
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 12, 27),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 28),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 29),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 30),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 31),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 1),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 2),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 3),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 4),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 5),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 6),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 7),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 8),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 9),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 10),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 11),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 12),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 13),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 14),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 15),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 16),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 17),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 18),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 19),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 20),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 21),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 22),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 23),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 24),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 25),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 26),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 27),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 28),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 29),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 30),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 31),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 1),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 2),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 3),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 4),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 5),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 6),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: false,
          ),
        ],
      ),
    ],
  );

  final calendarMonthFebruary2000 = CalendarMonth(
    month: DateTime(2000, 02, 01),
    weeks: [
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 1, 31),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 1),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 2),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 3),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 4),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 5),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 6),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 2, 7),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 8),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 9),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 10),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 11),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 12),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 13),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 2, 14),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 15),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 16),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 17),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 18),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 19),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 20),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 2, 21),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 22),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 23),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 24),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 25),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 26),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 27),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 2, 28),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 2, 29),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 1),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 2),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 3),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 4),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 5),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: false,
          ),
        ],
      ),
    ],
  );

  final calendarMonthDecember1999 = CalendarMonth(
    month: DateTime(1999, 12, 01),
    weeks: [
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 11, 29),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 11, 30),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 1),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 2),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 3),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 4),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 5),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 12, 6),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 7),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 8),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 9),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 10),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 11),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 12),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 12, 13),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 14),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 15),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 16),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 17),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 18),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 19),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 12, 20),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 21),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 22),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 23),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 24),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 25),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 26),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: true,
          ),
        ],
      ),
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(1999, 12, 27),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 28),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 29),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 30),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(1999, 12, 31),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: true,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 1),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 1, 2),
            dayOfWeek: DayOfWeek.sunday,
            isInCurrentMonth: false,
          ),
        ],
      ),
    ],
  );

  Padding dayBuilder(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Text(
        '${calendarDayBuilderModel.dateTime!.month} ${calendarDayBuilderModel.dateTime!.day}',
      ),
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
    // just show the date part.
    final formattedDate = DateFormat('yyyy-MM-dd').format(date);
    return Text(formattedDate);
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

  final givenMinSelectableDate = DateTime(1999, 10, 10);
  final givenMaxSelectableDate = DateTime(2000, 1, 10);
  const givenHeaderLeading = Icon(Icons.chevron_left);
  const givenHeaderTrailing = Icon(Icons.chevron_right);

  const givenHeaderPadding = EdgeInsets.all(18);
  const givenIconPadding = EdgeInsets.all(3);

  Future<void> pumpWidgetAndSettle(
    WidgetTester tester, {
    DateTime? initialDate,
    DateTime? disableNextMonthFromDate,
    DateTime? disablePreviousMonthFromDate,
    ValueChanged<DateTime>? onMonthChanged,
    ValueChanged<DateTime>? onDayChanged,
    bool? enableJumpToOtherMonth,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AlhCalendar(
            dayBuilder: dayBuilder,
            headerBuilder: headerTitleBuilder,
            headerLeading: givenHeaderLeading,
            headerTrailing: givenHeaderTrailing,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
            initialDate: initialDate,
            disableNextMonthFromDate: disableNextMonthFromDate,
            disablePreviousMonthFromDate: disablePreviousMonthFromDate,
            minSelectableDate: givenMinSelectableDate,
            maxSelectableDate: givenMaxSelectableDate,
            headerPadding: givenHeaderPadding,
            iconPadding: givenIconPadding,
            onMonthChanged: onMonthChanged,
            onDayChanged: onDayChanged,
            pageChangeDuration: const Duration(milliseconds: 100),
            pageChangeCurve: Curves.bounceIn,
            showSixWeeksForEveryMonth: false,
            disableTapOnOutOfRange: false,
            selectInitialDate: false,
            enableJumpToOtherMonth: enableJumpToOtherMonth ?? true,
            enableHorizontalSwipe: false,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets(
      'GIVEN initialDate = DateTime(2000, 2, 5) '
      'WHEN AlhCalendar is initialized '
      'THEN should show CalendarBody with 6 weeks and no CalendarPageView',
      (WidgetTester tester) async {
    // given
    final givenInitialDate = DateTime(2000, 1, 5);

    // when
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AlhCalendar(
            initialDate: givenInitialDate,
            dayBuilder: dayBuilder,
            headerBuilder: headerTitleBuilder,
            headerLeading: givenHeaderLeading,
            headerTrailing: givenHeaderTrailing,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
          ),
        ),
      ),
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalenderHeader &&
            widget.onPressedNext != null &&
            widget.onPressedPrevious != null &&
            widget.headerPadding ==
                const EdgeInsets.symmetric(horizontal: 3.0) &&
            widget.iconPadding == const EdgeInsets.all(8),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarBody &&
            widget.calendarMonth.weeks.length == 6 &&
            widget.daysOfWeek == givenDayOfWeekMap &&
            widget.selectedDate == givenInitialDate &&
            widget.dayBuilder == dayBuilder &&
            widget.dayOfWeekBuilder == dayOfWeekBuilder &&
            widget.calendarMonth == calendarMonthJanuary2000 &&
            widget.disableTapOnOutOfRange == true,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((widget) => widget is CalendarPageView),
      findsNothing,
    );
  });

  testWidgets(
      'GIVEN '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with default values and expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    final exactedInitialDate = DateTime.now();
    final expectedDisableNextMonthFromDate =
        exactedInitialDate.add(const Duration(days: 365 * 10));
    final expectedDisablePreviousMonthFromDate =
        exactedInitialDate.subtract(const Duration(days: 365 * 10));
    final expectedHeaderText =
        DateFormat('yyyy-MM-dd').format(exactedInitialDate);

    // when
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AlhCalendar(
            dayBuilder: dayBuilder,
            headerBuilder: headerTitleBuilder,
            headerLeading: givenHeaderLeading,
            headerTrailing: givenHeaderTrailing,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is AlhCalendar &&
            widget.enableJumpToOtherMonth == true &&
            widget.pageChangeCurve == Curves.easeInOut &&
            widget.pageChangeDuration == const Duration(milliseconds: 400) &&
            widget.selectInitialDate == true,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Column &&
            widget.crossAxisAlignment == CrossAxisAlignment.start,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalenderHeader &&
            widget.iconLeft == givenHeaderLeading &&
            widget.onPressedNext != null &&
            widget.onPressedPrevious != null &&
            widget.iconRight == givenHeaderTrailing &&
            widget.header is Text &&
            (widget.header as Text).data == expectedHeaderText &&
            widget.headerPadding ==
                const EdgeInsets.symmetric(horizontal: 3.0) &&
            widget.iconPadding == const EdgeInsets.all(8),
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is SizedBox && widget.child is CalendarPageView,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarPageView &&
            widget.daysOfWeek == givenDayOfWeekMap &&
            widget.minSelectableDate == null &&
            widget.maxSelectableDate == null &&
            widget.disableTapOnOutOfRange == true &&
            widget.enableHorizontalSwipe == true &&
            widget.showSixWeeksForEveryMonth == true &&
            DateHelper.areDatesEqual(
              date1: widget.selectedDate,
              date2: exactedInitialDate,
            ) &&
            DateHelper.areDatesEqual(
              date1: widget.initialDate,
              date2: exactedInitialDate,
            ) &&
            DateHelper.areDatesEqual(
              date1: widget.disableNextMonthFromDate,
              date2: expectedDisableNextMonthFromDate,
            ) &&
            DateHelper.areDatesEqual(
              date1: widget.disablePreviousMonthFromDate,
              date2: expectedDisablePreviousMonthFromDate,
            ) &&
            widget.dayBuilder == dayBuilder &&
            widget.dayOfWeekBuilder == dayOfWeekBuilder,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Padding && widget.padding == const EdgeInsets.all(2),
      ),
      findsNWidgets(42),
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is TableCell && widget.child is Center,
      ),
      findsNWidgets(7),
    );
  });

  testWidgets(
      'GIVEN initialDate = DateTime(2000, 2, 5) and optional parameters '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    final givenInitialDate = DateTime(2000, 2, 5);
    final expectedDisableNextMonthFromDate =
        givenInitialDate.add(const Duration(days: 365 * 10));
    final expectedDisablePreviousMonthFromDate =
        givenInitialDate.subtract(const Duration(days: 365 * 10));
    final expectedHeaderText =
        DateFormat('yyyy-MM-dd').format(givenInitialDate);

    // when
    await pumpWidgetAndSettle(
      tester,
      initialDate: givenInitialDate,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is AlhCalendar &&
            widget.pageChangeCurve == Curves.bounceIn &&
            widget.pageChangeDuration == const Duration(milliseconds: 100) &&
            widget.selectInitialDate == false,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalenderHeader &&
            widget.headerPadding == givenHeaderPadding &&
            widget.iconPadding == givenIconPadding &&
            widget.onPressedNext != null &&
            widget.onPressedPrevious != null &&
            widget.iconLeft == givenHeaderLeading &&
            widget.iconRight == givenHeaderTrailing &&
            widget.header is Text &&
            (widget.header as Text).data == expectedHeaderText,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarPageView &&
            widget.daysOfWeek == givenDayOfWeekMap &&
            widget.minSelectableDate == givenMinSelectableDate &&
            widget.maxSelectableDate == givenMaxSelectableDate &&
            widget.disableTapOnOutOfRange == false &&
            widget.showSixWeeksForEveryMonth == false &&
            widget.enableHorizontalSwipe == false &&
            widget.initialDate == givenInitialDate &&
            widget.disableNextMonthFromDate == expectedDisableNextMonthFromDate &&
            widget.disablePreviousMonthFromDate == expectedDisablePreviousMonthFromDate &&
            widget.selectedDate == null &&
            widget.dayBuilder == dayBuilder &&
            widget.dayOfWeekBuilder == dayOfWeekBuilder,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarBody && widget.calendarMonth.weeks.length == 5,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Padding && widget.padding == const EdgeInsets.all(2),
      ),
      findsNWidgets(35),
    );
  });

  group('#maximum and minimum MonthDate', () {
    testWidgets(
        'GIVEN initialDate is maximum and minimum MonthDate '
        'WHEN AlhCalendar is pumped '
        'THEN onPressedNext and onPressedPrevious should be null ',
        (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      final givenDisableNextMonthFromDate = DateTime(2000, 01);
      final givenDisablePreviousMonthFromDate = DateTime(2000, 01);

      // when
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenDisableNextMonthFromDate,
        disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
      );

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalenderHeader &&
              widget.onPressedNext == null &&
              widget.onPressedPrevious == null,
        ),
        findsOneWidget,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarPageView &&
              widget.disableNextMonthFromDate ==
                  givenDisableNextMonthFromDate &&
              widget.disablePreviousMonthFromDate ==
                  givenDisablePreviousMonthFromDate,
        ),
        findsOneWidget,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthJanuary2000,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'GIVEN initialDate, onMonthChanged and disableNextMonthFromDate is not reached '
        'WHEN headerTrailing is tapped '
        'THEN calendarMonth should change to next calendarMonth and call onMonthChanged',
        (WidgetTester tester) async {
      final givenInitialDate = DateTime(2000, 1, 5);
      final givenDisableNextMonthFromDate = DateTime(2000, 03);

      late DateTime currentMonthDate;
      bool callBackMonthHasChanged = false;

      void givenOnMonthChanged(month) {
        callBackMonthHasChanged = true;
        currentMonthDate = month;
      }

      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenDisableNextMonthFromDate,
        onMonthChanged: givenOnMonthChanged,
      );

      // when
      await tester.tap(find.byIcon(Icons.chevron_right));
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthFebruary2000,
        ),
        findsOneWidget,
      );
      expect(callBackMonthHasChanged, isTrue);
      expect(currentMonthDate, calendarMonthFebruary2000.month);
    });

    testWidgets(
        'GIVEN initialDate, onMonthChanged and disablePreviousMonthFromDate is not reached '
        'WHEN headerLeading is tapped '
        'THEN calendarMonth should change to previous calendarMonth and call onMonthChanged',
        (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      final givenDisablePreviousMonthFromDate = DateTime(1999, 12);

      late DateTime currentMonthDate;
      bool callBackMonthHasChanged = false;

      void givenOnMonthChanged(month) {
        callBackMonthHasChanged = true;
        currentMonthDate = month;
      }

      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
        onMonthChanged: givenOnMonthChanged,
      );

      // when
      await tester.tap(find.byWidget(givenHeaderLeading));
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthDecember1999,
        ),
        findsOneWidget,
      );
      expect(callBackMonthHasChanged, isTrue);
      expect(currentMonthDate, calendarMonthDecember1999.month);
    });
  });

  group('#selectCalendarDay', () {
    testWidgets(
        'Given initialDate is the first month of the year and onDayChanged '
        'WHEN day in previous month is tapped '
        'THEN should jump to last year and call onDayChanged',
        (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      late DateTime currentDayDate;
      bool callBackDayHasChanged = false;

      void givenOnDayChanged(day) {
        callBackDayHasChanged = true;
        currentDayDate = day;
      }

      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        onDayChanged: givenOnDayChanged,
      );

      // when
      await tester.tap(
        find.text(
          '12 27',
        ),
      ); // current month is 2000.01, 1999.12.27 is in previous month
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthDecember1999,
        ),
        findsOneWidget,
      );
      expect(callBackDayHasChanged, isTrue);
      expect(currentDayDate, DateTime(1999, 12, 27));
    });

    testWidgets(
        'Given initialDate is the last month of the year '
        'WHEN day in next month is tapped '
        'THEN should jump to next year', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(1999, 12, 5);
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
      );

      // when
      await tester.tap(
        find.text(
          '1 2',
        ),
      ); // current month is 1999.12, 2000.01.02 is in next month
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthJanuary2000,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'Given initialDate '
        'WHEN day in next month is tapped '
        'THEN should jump to next month', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
      );

      // when
      await tester.tap(
        find.text(
          '2 1',
        ),
      ); // current month is 2000.01, 2000.02.01 is in next month
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthFebruary2000,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'Given initialDate '
        'WHEN day in previous month is tapped '
        'THEN should jump to previous month', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 2, 5);
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
      );

      // when
      await tester.tap(
        find.text(
          '1 31',
        ),
      ); // current month is 2000.02, 2000.01.31 is in previous month
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthJanuary2000,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'Given initialDate = enableJumpToOtherMonth = false'
        'WHEN day in previous month is tapped '
        'THEN should not jump to previous month', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      const givenEnableJumpToOtherMonth = false;
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        enableJumpToOtherMonth: givenEnableJumpToOtherMonth,
      );

      // when
      await tester.tap(
        find.text(
          '12 27',
        ),
      ); // current month is 2000.01, 1999.12.27 is in previous month
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == calendarMonthJanuary2000,
        ),
        findsOneWidget,
      );
    });
  });
}
