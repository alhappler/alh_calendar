import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
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
            disableNextMonthFromDate: givenDisableNextMonthFromDate,
            disablePreviousMonthFromDate: givenDisablePreviousMonthFromDate,
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
      'GIVEN initialDate = DateTime(2000, 1, 5) '
      'WHEN AlhCalendar is pumped '
      'THEN should show expected structure with expected CalendarMonth',
      (WidgetTester tester) async {
    // given
    final givenInitialDate = DateTime(2000, 1, 5);

    // when
    await pumpWidget(
      tester,
      initialDate: givenInitialDate,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is PageView &&
            widget.childrenDelegate.estimatedChildCount == givenItemCount &&
            widget.physics == null,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarBody &&
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

  group('onHorizontalDragEnd', () {
    testWidgets(
        'GIVEN initialDate and handleChangeMonth '
        'WHEN swiped to right '
        'THEN should show previous calendarMonth', (WidgetTester tester) async {
      // given
      final givenInitialDate = DateTime(2000, 1, 5);
      late int currentIndex;
      late DateTime currentMonthDate;

      bool callBackMonthHasChanged = false;
      void givenHandleChangeMonth({index, newMonthDate}) {
        callBackMonthHasChanged = true;
        currentIndex = index;
        currentMonthDate = newMonthDate;
      }

      await pumpWidget(
        tester,
        initialDate: givenInitialDate,
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
