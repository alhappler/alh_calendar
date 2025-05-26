import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:flutter/material.dart';

/// A widget that displays a paginated view of calendar months.
class CalendarPageView extends StatefulWidget {
  final bool enableHorizontalSwipe;
  final DateTime initialDate;
  final bool showSixWeeksForEveryMonth;
  final ValueChanged<DateTime> onSelectDay;
  final Widget Function(CalendarDayBuilderModel) dayBuilder;
  final Widget Function(String, bool) dayOfWeekBuilder;
  final DateTime? selectedDate;
  final Map<DayOfWeek, String> daysOfWeek;
  final DateTime? minSelectableDate;
  final DateTime? maxSelectableDate;
  final DateTime disableNextMonthFromDate;
  final DateTime disablePreviousMonthFromDate;
  final bool disableTapOnOutOfRange;
  final bool showFocusedBorder;
  final FocusedBorderStyle focusedBorderStyle;
  final void Function({
    required int index,
    required DateTime newMonthDate,
  }) onChangeMonth;
  final void Function(PageController pageController) onCreatedPageView;

  const CalendarPageView({
    required this.enableHorizontalSwipe,
    required this.initialDate,
    required this.showSixWeeksForEveryMonth,
    required this.onSelectDay,
    required this.dayBuilder,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
    required this.selectedDate,
    required this.minSelectableDate,
    required this.maxSelectableDate,
    required this.disableNextMonthFromDate,
    required this.disablePreviousMonthFromDate,
    required this.disableTapOnOutOfRange,
    required this.onChangeMonth,
    required this.onCreatedPageView,
    required this.showFocusedBorder,
    required this.focusedBorderStyle,
    super.key,
  });

  @override
  State<CalendarPageView> createState() => _CalendarPageViewState();
}

class _CalendarPageViewState extends State<CalendarPageView> {
  late CalendarMonth calendarMonth;
  late PageController _pageController;
  late int initialPageIndex;
  late int itemCount;

  @override
  void initState() {
    super.initState();

    calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
      date: DateTime(
        widget.initialDate.year,
        widget.initialDate.month,
      ),
      forceSixWeekMonth: widget.showSixWeeksForEveryMonth,
    );

    _determineInitialPageIndex();

    _determineNumberOfAvailableMonths();

    _pageController = PageController(initialPage: initialPageIndex);

    widget.onCreatedPageView(_pageController);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: itemCount,
      physics: widget.enableHorizontalSwipe
          ? null
          : const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final newMonthDate = DateTime(
          widget.initialDate.year,
          widget.initialDate.month + index - initialPageIndex,
        );
        final calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
          date: newMonthDate,
          forceSixWeekMonth: widget.showSixWeeksForEveryMonth,
        );
        return CalendarBody(
          onSelectDay: widget.onSelectDay,
          calendarMonth: calendarMonth,
          dayBuilder: widget.dayBuilder,
          dayOfWeekBuilder: widget.dayOfWeekBuilder,
          daysOfWeek: widget.daysOfWeek,
          selectedDate: widget.selectedDate,
          minSelectableDate: widget.minSelectableDate,
          maxSelectableDate: widget.maxSelectableDate,
          disableTapOnOutOfRange: widget.disableTapOnOutOfRange,
          showFocusedBorder: widget.showFocusedBorder,
          focusedBorderStyle: widget.focusedBorderStyle,
        );
      },
      onPageChanged: (index) {
        final newMonthDate = DateTime(
          widget.initialDate.year,
          widget.initialDate.month + index - initialPageIndex,
        );
        widget.onChangeMonth(index: index, newMonthDate: newMonthDate);
      },
    );
  }

  /// Determine the initial page index based on minimumMonthDate.
  ///
  /// the initial page index defines the number of months that can be scrolled
  /// in the past.
  /// If minimumMonthDate is set, the initial page index is calculated based on
  /// the difference between the initialDate and the minimumMonthDate.
  void _determineInitialPageIndex() {
    final int monthsDifference = DateHelper.getMonthDifference(
      startDate: widget.initialDate,
      endDate: widget.disablePreviousMonthFromDate,
    );
    initialPageIndex = monthsDifference;
  }

  /// Determine the Months count based on maximumMonthDate.
  ///
  /// The item count defines the total number of months that can be scrolled
  /// in the future and the past.
  /// If maximumMonthDate is set, the item count is calculated based
  /// on the difference between the initialDate and the maximumMonthDate.
  /// If the maximumMonthDate is not set, the item count is set
  /// to 20 years to simulate an 'infinite' scroll effect
  /// 10 years in the future and 10 years the past.
  void _determineNumberOfAvailableMonths() {
    final int monthsDifference = DateHelper.getMonthDifference(
      startDate: widget.initialDate,
      endDate: widget.disableNextMonthFromDate,
    );

    // The item count is the number of months that can be scrolled
    // in the past + the future + 1 (initial month).
    itemCount = initialPageIndex + monthsDifference + 1;
  }
}
