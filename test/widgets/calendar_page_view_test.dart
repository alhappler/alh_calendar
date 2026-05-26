import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const givenShowFocusedBorder = true;
  const givenFocusedBorderStyle = FocusedBorderStyle(
    color: Colors.red,
    thickness: 2,
    daysBorderRadius: BorderRadius.all(Radius.circular(10)),
    headerBorderRadius: BorderRadius.all(Radius.circular(20)),
  );

  final expectedCurrentCalendarMonth = CalendarMonth(
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

  final expectedNextCalendarMonth = CalendarMonth(
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
      CalendarWeek(
        days: [
          CalendarDay(
            date: DateTime(2000, 3, 6),
            dayOfWeek: DayOfWeek.monday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 7),
            dayOfWeek: DayOfWeek.tuesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 8),
            dayOfWeek: DayOfWeek.wednesday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 9),
            dayOfWeek: DayOfWeek.thursday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 10),
            dayOfWeek: DayOfWeek.friday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 11),
            dayOfWeek: DayOfWeek.saturday,
            isInCurrentMonth: false,
          ),
          CalendarDay(
            date: DateTime(2000, 3, 12),
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

  final givenDayOfWeekMap = {
    DayOfWeek.monday: 'Mon',
    DayOfWeek.thursday: 'Thu',
    DayOfWeek.wednesday: 'Wen',
    DayOfWeek.tuesday: 'Tue',
    DayOfWeek.friday: 'Fri',
    DayOfWeek.saturday: 'Sat',
    DayOfWeek.sunday: 'Sun',
  };

  final givenMinSelectableDate = DateTime(2000, 1, 1);
  final givenMaxSelectableDate = DateTime(2000, 1, 10);
  final givenDisablePreviousMonthFromDate = DateTime(1999, 12, 1);
  final givenDisableNextMonthFromDate = DateTime(2000, 2, 10);
  final givenInitialDate = DateTime(2000, 1, 5);
  const givenItemCount = 3;
  const givenShowSixWeeksForEveryMonth = true;
  const givenDisableTapOnOutOfRange = false;
  const givenInitialPageIndex = 1;
  void givenOnSelectDay(_) {}
  void givenHandleChangeMonth({index, newMonthDate}) {}

  Future<void> pumpWidget(
    WidgetTester tester, {
    DateTime? initialDate,
    bool? enableHorizontalSwipe,
    DateTime? disableNextMonthFromDate,
    DateTime? disablePreviousMonthFromDate,
    void Function(PageController)? onCreatedPageView,
    void Function({
      required int index,
      required DateTime newMonthDate,
    })? handleChangeMonth,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CalendarPageView(
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
            enableHorizontalSwipe: enableHorizontalSwipe ?? true,
            initialDate: initialDate ?? givenInitialDate,
            showSixWeeksForEveryMonth: givenShowSixWeeksForEveryMonth,
            onSelectDay: givenOnSelectDay,
            dayBuilder: dayBuilder,
            dayOfWeekBuilder: dayOfWeekBuilder,
            selectedDate: null,
            daysOfWeek: givenDayOfWeekMap,
            minSelectableDate: givenMinSelectableDate,
            maxSelectableDate: givenMaxSelectableDate,
            disableNextMonthFromDate: disableNextMonthFromDate,
            disablePreviousMonthFromDate: disablePreviousMonthFromDate,
            onCreatedPageView: onCreatedPageView ?? (_) {},
            disableTapOnOutOfRange: givenDisableTapOnOutOfRange,
            onChangeMonth: handleChangeMonth ?? givenHandleChangeMonth,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets(
      'GIVEN initialDate = DateTime(2000, 1, 5),disableNextMonthFromDate and disablePreviousMonthFromDate '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    final givenInitialDate = DateTime(2000, 1, 5);

    // when
    await pumpWidget(
      tester,
      initialDate: givenInitialDate,
      disableNextMonthFromDate: givenDisableNextMonthFromDate,
      disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is PageView &&
            widget.childrenDelegate.estimatedChildCount == givenItemCount &&
            widget.controller!.initialPage == 1 &&
            widget.physics == null,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarBody &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.focusedBorderStyle == givenFocusedBorderStyle &&
            widget.onSelectDay == givenOnSelectDay &&
            widget.daysOfWeek == givenDayOfWeekMap &&
            widget.selectedDate == null &&
            widget.minSelectableDate == givenMinSelectableDate &&
            widget.maxSelectableDate == givenMaxSelectableDate &&
            widget.disableTapOnOutOfRange == givenDisableTapOnOutOfRange &&
            widget.calendarMonth == expectedCurrentCalendarMonth,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN help widget is pumped with disablePreviousMonthFromDate '
      'WHEN disablePreviousMonthFromDate is changed to a different date '
      'THEN should update the calendar view', (WidgetTester tester) async {
    // given
    final givenNewDisablePreviousMonthFromDate = DateTime(2000, 1, 10);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: _TestWidget(
            oldeDisablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            newDisablePreviousMonthFromDate:
                givenNewDisablePreviousMonthFromDate,
            oldDisableNextMonthFromDate: givenDisableNextMonthFromDate,
            newDisableNextMonthFromDate: givenDisableNextMonthFromDate,
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
            oldInitialDate: givenInitialDate,
            newInitialDate: givenInitialDate,
            showSixWeeksForEveryMonth: givenShowSixWeeksForEveryMonth,
            onSelectDay: givenOnSelectDay,
            disableTapOnOutOfRange: givenDisableTapOnOutOfRange,
            disableNextMonthFromDate: givenDisableNextMonthFromDate,
            disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            enableHorizontalSwipe: true,
            dayBuilder: dayBuilder,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
            onCreatedPageView: (_) {},
            onChangeMonth: givenHandleChangeMonth,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // when
    await tester.tap(find.text('click'));
    await tester.pumpAndSettle();

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is PageView &&
            widget.controller!.initialPage == 1 &&
            widget.childrenDelegate.estimatedChildCount == 2,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN help widget is pumped with disableNextMonthFromDate '
      'WHEN disableNextMonthFromDate is changed to a different date '
      'THEN should update the calendar view', (WidgetTester tester) async {
    // given
    final givenNewDisableNextMonthFromDate = DateTime(2000, 3, 10);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: _TestWidget(
            oldeDisablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            newDisablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            oldDisableNextMonthFromDate: givenDisableNextMonthFromDate,
            newDisableNextMonthFromDate: givenNewDisableNextMonthFromDate,
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
            oldInitialDate: givenInitialDate,
            newInitialDate: givenInitialDate,
            showSixWeeksForEveryMonth: givenShowSixWeeksForEveryMonth,
            onSelectDay: givenOnSelectDay,
            disableTapOnOutOfRange: givenDisableTapOnOutOfRange,
            disableNextMonthFromDate: givenDisableNextMonthFromDate,
            disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            enableHorizontalSwipe: true,
            dayBuilder: dayBuilder,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
            onCreatedPageView: (_) {},
            onChangeMonth: givenHandleChangeMonth,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // when
    await tester.tap(find.text('click'));
    await tester.pumpAndSettle();

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is PageView &&
            widget.controller!.initialPage == 1 &&
            widget.childrenDelegate.estimatedChildCount == 4,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN help widget is pumped with initialDate '
      'WHEN initialDate is changed to a different date '
      'THEN should update the calendar view', (WidgetTester tester) async {
    // given
    final givenNewInitialDate = DateTime(2000, 3, 10);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: _TestWidget(
            oldeDisablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            newDisablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            oldDisableNextMonthFromDate: givenDisableNextMonthFromDate,
            newDisableNextMonthFromDate: givenDisableNextMonthFromDate,
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
            oldInitialDate: givenInitialDate,
            newInitialDate: givenNewInitialDate,
            showSixWeeksForEveryMonth: givenShowSixWeeksForEveryMonth,
            onSelectDay: givenOnSelectDay,
            disableTapOnOutOfRange: givenDisableTapOnOutOfRange,
            disableNextMonthFromDate: givenDisableNextMonthFromDate,
            disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
            enableHorizontalSwipe: true,
            dayBuilder: dayBuilder,
            dayOfWeekBuilder: dayOfWeekBuilder,
            daysOfWeek: givenDayOfWeekMap,
            onCreatedPageView: (_) {},
            onChangeMonth: givenHandleChangeMonth,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // when
    await tester.tap(find.text('click'));
    await tester.pumpAndSettle();

    // then
    expect(
      find.byWidgetPredicate(
          (widget) => widget is Text && widget.data == '3 10'),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN initialDate = DateTime(2000, 1, 5) '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with expected CalendarMonth',
      (WidgetTester tester) async {
    // given

    // when
    await pumpWidget(
      tester,
      initialDate: givenInitialDate,
    );

    // then
    // 20 years * 12 months + 1 for the current month
    const expectedItemCount = 241;
    // 10 years * 12 months for the current month
    const expectedInitialPageIndex = 120;

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is PageView &&
            widget.controller!.initialPage == expectedInitialPageIndex &&
            widget.childrenDelegate.estimatedChildCount == expectedItemCount &&
            widget.physics == null,
      ),
      findsOneWidget,
    );
  });

  group('onHorizontalDragEnd', () {
    testWidgets(
        'GIVEN initialDate and handleChangeMonth '
        'WHEN swiped to right '
        'THEN should show previous calendarMonth', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      late int currentIndex;
      late DateTime currentMonthDate;

      var callBackMonthHasChanged = false;
      void givenHandleChangeMonth({index, newMonthDate}) {
        callBackMonthHasChanged = true;
        currentIndex = index;
        currentMonthDate = newMonthDate;
      }

      await pumpWidget(
        tester,
        initialDate: givenInitialDate,
        disableNextMonthFromDate: givenDisableNextMonthFromDate,
        disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
        handleChangeMonth: givenHandleChangeMonth,
      );

      // when
      await tester.fling(
        find.text('12 27'),
        const Offset(-150, 0),
        1000,
      );
      await tester.pumpAndSettle();

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedNextCalendarMonth,
        ),
        findsOneWidget,
      );
      expect(callBackMonthHasChanged, isTrue);
      expect(currentMonthDate, expectedNextCalendarMonth.month);
      expect(currentIndex, givenInitialPageIndex + 1);
    });

    testWidgets(
        'GIVEN initialDate '
        'WHEN swiped to left '
        'THEN should show next calendarMonth', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      await pumpWidget(
        tester,
        initialDate: givenInitialDate,
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
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedNextCalendarMonth,
        ),
        findsOneWidget,
      );
    });

    testWidgets(
        'GIVEN initialDate and enableHorizontalSwipe is false '
        'WHEN swiped to left '
        'THEN nothing should happen', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      const givenEnableHorizontalSwipe = false;
      await pumpWidget(
        tester,
        enableHorizontalSwipe: givenEnableHorizontalSwipe,
        initialDate: givenInitialDate,
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
        find.byWidgetPredicate(
          (widget) =>
              widget is CalendarBody &&
              widget.calendarMonth == expectedCurrentCalendarMonth,
        ),
        findsOneWidget,
      );
    });
  });

  group('onCreatedPageView', () {
    testWidgets(
        'GIVEN onCreatedPageView '
        'WHEN pageView is created '
        'THEN should call onCreatedPageView with pageController',
        (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      late PageController pageController;

      void givenOnCreatedPageView(PageController controller) {
        pageController = controller;
      }

      await pumpWidget(
        tester,
        initialDate: givenInitialDate,
        onCreatedPageView: givenOnCreatedPageView,
      );

      // then
      expect(pageController, isA<PageController>());
    });
  });
}

class _TestWidget extends StatefulWidget {
  final DateTime oldeDisablePreviousMonthFromDate;
  final DateTime newDisablePreviousMonthFromDate;
  final DateTime oldDisableNextMonthFromDate;
  final DateTime newDisableNextMonthFromDate;
  final bool enableHorizontalSwipe;
  final DateTime oldInitialDate;
  final DateTime newInitialDate;
  final bool showSixWeeksForEveryMonth;
  final void Function(DateTime) onSelectDay;
  final Widget Function(CalendarDayBuilderModel) dayBuilder;
  final Widget Function(String, bool) dayOfWeekBuilder;
  final Map<DayOfWeek, String> daysOfWeek;
  final DateTime disableNextMonthFromDate;
  final DateTime disablePreviousMonthFromDate;
  final bool disableTapOnOutOfRange;
  final void Function({
    required int index,
    required DateTime newMonthDate,
  }) onChangeMonth;
  final void Function(PageController) onCreatedPageView;
  final bool showFocusedBorder;
  final FocusedBorderStyle focusedBorderStyle;

  const _TestWidget({
    required this.enableHorizontalSwipe,
    required this.oldInitialDate,
    required this.newInitialDate,
    required this.showSixWeeksForEveryMonth,
    required this.onSelectDay,
    required this.dayBuilder,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
    required this.disableNextMonthFromDate,
    required this.disablePreviousMonthFromDate,
    required this.disableTapOnOutOfRange,
    required this.onChangeMonth,
    required this.onCreatedPageView,
    required this.showFocusedBorder,
    required this.focusedBorderStyle,
    required this.oldeDisablePreviousMonthFromDate,
    required this.newDisablePreviousMonthFromDate,
    required this.oldDisableNextMonthFromDate,
    required this.newDisableNextMonthFromDate,
  });

  @override
  State<_TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<_TestWidget> {
  late DateTime currentDisableNextMonthFromDate;
  late DateTime currentDisablePreviousMonthFromDate;
  late DateTime currentInitialDate;

  @override
  void initState() {
    super.initState();
    currentDisableNextMonthFromDate = widget.oldDisableNextMonthFromDate;
    currentDisablePreviousMonthFromDate =
        widget.oldeDisablePreviousMonthFromDate;
    currentInitialDate = widget.oldInitialDate;
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SizedBox(
            height: 400,
            width: 400,
            child: CalendarPageView(
              disableNextMonthFromDate: currentDisableNextMonthFromDate,
              disablePreviousMonthFromDate: currentDisablePreviousMonthFromDate,
              enableHorizontalSwipe: widget.enableHorizontalSwipe,
              initialDate: currentInitialDate,
              showSixWeeksForEveryMonth: widget.showSixWeeksForEveryMonth,
              onSelectDay: widget.onSelectDay,
              dayBuilder: widget.dayBuilder,
              dayOfWeekBuilder: widget.dayOfWeekBuilder,
              daysOfWeek: widget.daysOfWeek,
              selectedDate: null,
              minSelectableDate: null,
              maxSelectableDate: null,
              disableTapOnOutOfRange: widget.disableTapOnOutOfRange,
              onChangeMonth: widget.onChangeMonth,
              onCreatedPageView: widget.onCreatedPageView,
              showFocusedBorder: widget.showFocusedBorder,
              focusedBorderStyle: widget.focusedBorderStyle,
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                currentDisableNextMonthFromDate =
                    widget.newDisableNextMonthFromDate;
                currentDisablePreviousMonthFromDate =
                    widget.newDisablePreviousMonthFromDate;
                currentInitialDate = widget.newInitialDate;
              });
            },
            child: const Text('click'),
          ),
        ],
      );
}
