import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
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
  ) =>
      Padding(
        padding: const EdgeInsets.all(2),
        child: Text(
          '${calendarDayBuilderModel.dateTime!.month} ${calendarDayBuilderModel.dateTime!.day}',
        ),
      );

  Widget dayOfWeekBuilder(
    String dayOfWeek,
    bool isWeekEnd,
  ) =>
      const Center(child: SizedBox());

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
    Widget Function(bool)? headerLeadingBuilder,
    Widget Function(bool)? headerTrailingBuilder,
    void Function(CalendarMonth newMonth)? onPreviousMonth,
    void Function(CalendarMonth newMonth)? onNextMonth,
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
            headerLeadingBuilder:
                headerLeadingBuilder ?? (_) => givenHeaderLeading,
            headerTrailingBuilder:
                headerTrailingBuilder ?? (_) => givenHeaderTrailing,
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
            onNextMonth: onNextMonth,
            onPreviousMonth: onPreviousMonth,
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

    bool? actualHeaderTrailingEnabled;
    Widget givenHeaderTrailingBuilder(bool enabled) {
      actualHeaderTrailingEnabled = enabled;
      return givenHeaderTrailing;
    }

    bool? actualHeaderLeadingEnabled;
    Widget givenHeaderLeadingBuilder(bool enabled) {
      actualHeaderLeadingEnabled = enabled;
      return givenHeaderLeading;
    }

    // when
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AlhCalendar(
            initialDate: givenInitialDate,
            dayBuilder: dayBuilder,
            headerBuilder: headerTitleBuilder,
            headerLeadingBuilder: givenHeaderLeadingBuilder,
            headerTrailingBuilder: givenHeaderTrailingBuilder,
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
            widget is CalendarHeader &&
            widget.onPressedNext != null &&
            widget.onPressedPrevious != null &&
            !widget.showFocusedBorder &&
            widget.focusedBorderStyle == const FocusedBorderStyle() &&
            widget.headerPadding ==
                const EdgeInsets.symmetric(horizontal: 3.0) &&
            widget.iconPadding == const EdgeInsets.all(8) &&
            widget.iconLeft == givenHeaderLeading &&
            widget.iconRight == givenHeaderTrailing,
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
            !widget.showFocusedBorder &&
            widget.focusedBorderStyle == const FocusedBorderStyle() &&
            widget.dayBuilder == dayBuilder &&
            widget.dayOfWeekBuilder == dayOfWeekBuilder &&
            widget.calendarMonth == calendarMonthJanuary2000 &&
            widget.disableTapOnOutOfRange,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate((widget) => widget is CalendarPageView),
      findsNothing,
    );
    expect(actualHeaderLeadingEnabled, isTrue);
    expect(actualHeaderTrailingEnabled, isTrue);
  });

  testWidgets(
      'GIVEN custom values '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with default values and expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    const givenShowFocusedBorder = true;

    const givenFocusedBorderStyle = FocusedBorderStyle(
      color: Colors.red,
      thickness: 2,
      daysBorderRadius: BorderRadius.all(Radius.circular(10)),
    );

    // when
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AlhCalendar(
            dayBuilder: dayBuilder,
            headerBuilder: headerTitleBuilder,
            headerLeadingBuilder: (_) => givenHeaderLeading,
            headerTrailingBuilder: (_) => givenHeaderTrailing,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // then
    final expectedInitialDate = DateTime.now();
    final expectedHeaderText =
        DateFormat('yyyy-MM-dd').format(expectedInitialDate);

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is AlhCalendar &&
            widget.enableJumpToOtherMonth &&
            widget.pageChangeCurve == Curves.easeInOut &&
            widget.pageChangeDuration == const Duration(milliseconds: 400) &&
            widget.selectInitialDate,
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
            widget is CalendarHeader &&
            widget.iconLeft == givenHeaderLeading &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.focusedBorderStyle == givenFocusedBorderStyle &&
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
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.focusedBorderStyle == givenFocusedBorderStyle &&
            widget.minSelectableDate == null &&
            widget.maxSelectableDate == null &&
            widget.disableTapOnOutOfRange &&
            widget.enableHorizontalSwipe &&
            widget.showSixWeeksForEveryMonth &&
            DateHelper.areDatesEqual(
              date1: widget.selectedDate,
              date2: expectedInitialDate,
            ) &&
            DateHelper.areDatesEqual(
              date1: widget.initialDate,
              date2: expectedInitialDate,
            ) &&
            widget.disableNextMonthFromDate == null &&
            widget.disablePreviousMonthFromDate == null &&
            widget.dayBuilder == dayBuilder &&
            widget.dayOfWeekBuilder == dayOfWeekBuilder,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Center && widget.child is SizedBox,
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
            !widget.selectInitialDate,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarHeader &&
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
            !widget.disableTapOnOutOfRange &&
            !widget.showSixWeeksForEveryMonth &&
            !widget.enableHorizontalSwipe &&
            widget.initialDate == givenInitialDate &&
            widget.disableNextMonthFromDate == null &&
            widget.disablePreviousMonthFromDate == null &&
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

  testWidgets(
      'GIVEN help widget is pumped with initialDate '
      'WHEN initialValue is changed to a different date '
      'THEN should update the calendar view', (WidgetTester tester) async {
    // given
    final givenNewInitialDate = DateTime(2000, 1, 5);
    final givenInitialDate = DateTime(2000, 1, 1);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: _TestWidget(
            oldValue: givenInitialDate,
            newValue: givenNewInitialDate,
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

    // when
    await tester.tap(find.text('click'));
    await tester.pumpAndSettle();

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarPageView &&
            widget.initialDate == givenNewInitialDate,
      ),
      findsOneWidget,
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

      bool? actualHeaderTrailingEnabled;
      Widget givenHeaderTrailingBuilder(bool enabled) {
        actualHeaderTrailingEnabled = enabled;
        return givenHeaderTrailing;
      }

      bool? actualHeaderLeadingEnabled;
      Widget givenHeaderLeadingBuilder(bool enabled) {
        actualHeaderLeadingEnabled = enabled;
        return givenHeaderLeading;
      }

      // when
      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenDisableNextMonthFromDate,
        disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
        headerLeadingBuilder: givenHeaderLeadingBuilder,
        headerTrailingBuilder: givenHeaderTrailingBuilder,
      );

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarHeader &&
              widget.onPressedNext == null &&
              widget.onPressedPrevious == null &&
              widget.iconLeft == givenHeaderLeading &&
              widget.iconRight == givenHeaderTrailing,
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
      expect(actualHeaderLeadingEnabled, isFalse);
      expect(actualHeaderTrailingEnabled, isFalse);
    });

    testWidgets(
        'GIVEN initialDate, onMonthChanged and disableNextMonthFromDate is not reached '
        'WHEN headerTrailing is tapped '
        'THEN calendarMonth should change to next calendarMonth and call onMonthChanged',
        (WidgetTester tester) async {
      CalendarMonth? givenPreviousCalledMonth;
      CalendarMonth? givenNextCalledMonth;
      final givenInitialDate = DateTime(2000, 1, 5);
      final givenDisableNextMonthFromDate = DateTime(2000, 03);

      late DateTime currentMonthDate;
      var callBackMonthHasChanged = false;

      void givenOnMonthChanged(month) {
        callBackMonthHasChanged = true;
        currentMonthDate = month;
      }

      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenDisableNextMonthFromDate,
        onMonthChanged: givenOnMonthChanged,
        onNextMonth: (month) => givenNextCalledMonth = month,
        onPreviousMonth: (month) => givenPreviousCalledMonth = month,
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
      expect(currentMonthDate, equals(calendarMonthFebruary2000.month));
      expect(givenNextCalledMonth!.month, equals(DateTime(2000, 02)));
      expect(givenPreviousCalledMonth, isNull);
    });

    testWidgets(
        'GIVEN initialDate, onMonthChanged and disablePreviousMonthFromDate is not reached '
        'WHEN headerLeading is tapped '
        'THEN calendarMonth should change to previous calendarMonth and call onMonthChanged',
        (WidgetTester tester) async {
      // given
      CalendarMonth? givenPreviousCalledMonth;
      CalendarMonth? givenNextCalledMonth;
      final givenInitialDate = DateTime(2000, 1, 5);
      final givenDisablePreviousMonthFromDate = DateTime(1999, 12);

      late DateTime currentMonthDate;
      var callBackMonthHasChanged = false;

      void givenOnMonthChanged(month) {
        callBackMonthHasChanged = true;
        currentMonthDate = month;
      }

      await pumpWidgetAndSettle(
        tester,
        initialDate: givenInitialDate,
        disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
        onMonthChanged: givenOnMonthChanged,
        onNextMonth: (month) => givenNextCalledMonth = month,
        onPreviousMonth: (month) => givenPreviousCalledMonth = month,
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
      expect(currentMonthDate, equals(calendarMonthDecember1999.month));
      expect(givenPreviousCalledMonth!.month, equals(DateTime(1999, 12)));
      expect(givenNextCalledMonth, isNull);
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
      var callBackDayHasChanged = false;

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
      expect(currentDayDate, equals(DateTime(1999, 12, 27)));
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
        'Given initialDate = enableJumpToOtherMonth = false '
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

  group('AlhCalendarController.jumpToMonth', () {
    Future<void> pumpWithController(
      WidgetTester tester, {
      required AlhCalendarController controller,
      required DateTime initialDate,
      DateTime? disablePreviousMonthFromDate,
      DateTime? disableNextMonthFromDate,
      ValueChanged<DateTime>? onMonthChanged,
    }) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AlhCalendar(
              controller: controller,
              initialDate: initialDate,
              disablePreviousMonthFromDate: disablePreviousMonthFromDate,
              disableNextMonthFromDate: disableNextMonthFromDate,
              dayBuilder: dayBuilder,
              headerBuilder: headerTitleBuilder,
              headerLeadingBuilder: (_) => givenHeaderLeading,
              headerTrailingBuilder: (_) => givenHeaderTrailing,
              dayOfWeekBuilder: dayOfWeekBuilder,
              daysOfWeek: givenDayOfWeekMap,
              onMonthChanged: onMonthChanged,
              pageChangeDuration: const Duration(milliseconds: 10),
              pageChangeCurve: Curves.linear,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
    }

    testWidgets(
        'GIVEN attached controller '
        'WHEN jumpToMonth is called with a future month '
        'THEN should animate to that month, clear selection and emit '
        'onMonthChanged', (WidgetTester tester) async {
      // given
      final controller = AlhCalendarController();
      addTearDown(controller.dispose);
      final givenInitialDate = DateTime(2000, 1, 15);
      final givenTarget = DateTime(2000, 5, 1);

      DateTime? actualMonthChanged;

      await pumpWithController(
        tester,
        controller: controller,
        initialDate: givenInitialDate,
        onMonthChanged: (date) => actualMonthChanged = date,
      );

      // when
      final jumpFuture = controller.jumpToMonthOf(givenTarget);
      await tester.pumpAndSettle();
      await jumpFuture;

      // then
      expect(controller.isAttached, isTrue);
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth.month.year == givenTarget.year &&
              widget.calendarMonth.month.month == givenTarget.month &&
              widget.selectedDate == null,
        ),
        findsOneWidget,
      );
      expect(actualMonthChanged?.year, equals(givenTarget.year));
      expect(actualMonthChanged?.month, equals(givenTarget.month));
    });

    testWidgets(
        'GIVEN disableNextMonthFromDate set '
        'WHEN jumpToMonth is called with a target beyond the limit '
        'THEN should clamp to the boundary month', (WidgetTester tester) async {
      // given
      final controller = AlhCalendarController();
      addTearDown(controller.dispose);
      final givenInitialDate = DateTime(2000, 1, 15);
      final givenMaxMonth = DateTime(2000, 6);
      final givenTarget = DateTime(2001, 12);

      DateTime? actualMonthChanged;

      await pumpWithController(
        tester,
        controller: controller,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenMaxMonth,
        onMonthChanged: (date) => actualMonthChanged = date,
      );

      // when
      final jumpFuture = controller.jumpToMonthOf(givenTarget);
      await tester.pumpAndSettle();
      await jumpFuture;

      // then
      expect(actualMonthChanged?.year, equals(givenMaxMonth.year));
      expect(actualMonthChanged?.month, equals(givenMaxMonth.month));
    });
  });
}

class _TestWidget extends StatefulWidget {
  final DateTime newValue;
  final DateTime oldValue;

  final Widget Function(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) dayBuilder;
  final Text Function(DateTime date) headerBuilder;
  final Widget headerLeading;
  final Widget headerTrailing;
  final Widget Function(String dayOfWeek, bool isWeekEnd) dayOfWeekBuilder;
  final Map<DayOfWeek, String> daysOfWeek;

  const _TestWidget({
    required this.oldValue,
    required this.newValue,
    required this.dayBuilder,
    required this.headerBuilder,
    required this.headerLeading,
    required this.headerTrailing,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
  });

  @override
  State<_TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<_TestWidget> {
  late DateTime currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.oldValue;
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          AlhCalendar(
            initialDate: currentValue,
            dayBuilder: widget.dayBuilder,
            headerBuilder: widget.headerBuilder,
            headerLeadingBuilder: (_) => widget.headerLeading,
            headerTrailingBuilder: (_) => widget.headerTrailing,
            dayOfWeekBuilder: widget.dayOfWeekBuilder,
            daysOfWeek: widget.daysOfWeek,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                currentValue = widget.newValue;
              });
            },
            child: const Text('click'),
          ),
        ],
      );
}
