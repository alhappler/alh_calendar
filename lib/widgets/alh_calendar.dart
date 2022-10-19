import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:flutter/material.dart';

/// Signature for a function that builds a widget for a given day.
typedef DayBuilder = Widget Function(
  CalendarDayBuilderModel calendarDayBuilderModel,
);

/// Signature for a function that builds a widget for a title.
typedef HeaderTitleBuilder = Widget Function(
  DateTime date,
);

/// Signature for a function that builds a widget for the day of the week
/// calendarCell.
typedef DayOfWeekBuilder = Widget Function(
  String dayOfWeek,
  bool isWeekEnd,
);

class AlhCalendar extends StatefulWidget {
  /// Custom builder for DayCalendarCells.
  ///
  /// Uses a [CalendarDayBuilderModel]
  final DayBuilder dayBuilder;

  /// Custom builder for the headerTitle.
  final HeaderTitleBuilder headerBuilder;

  /// custom widget that is left of header
  final Widget headerLeading;

  /// custom widget that is right of header
  final Widget headerTrailing;

  /// Custom builder for DayOfWeekCalendarCells.
  final DayOfWeekBuilder dayOfWeekBuilder;

  /// Defines initial Time, if null than DateTime.now()
  final DateTime? initialDateTime;

  /// Defines the minimum month.
  ///
  /// If minimum month is reached, user cannot go to previous month.
  final DateTime? minimumMonthDate;

  /// Defines the maximum month.
  ///
  /// If maximum month is reached, user cannot go to next month.
  final DateTime? maximumMonthDate;

  /// Sets the minimum day.
  ///
  /// Every day before chosen day is flagged as outside of Range.
  /// All days in between minimum day and maximum day are called in range. The [minimumMonthDate]
  /// and [minimumDayDate] have nothing in commom, [minimumMonthDate] sets the lowest month
  /// the user can navigate to, while [minimumDayDate] sets the first day of the Range.
  final DateTime? minimumDayDate;

  /// Sets the maximum day.
  ///
  /// All days after maximum day are flagged as outside of Range.
  /// All days in between minimum day and maximum day are called in range.
  /// The [maximumMonthDate] and [maximumDayDate] have nothing in commom, [maximumMonthDate] sets the last month
  /// the user can navigate to, while [maximumDayDate] sets the last day of the Range.
  final DateTime? maximumDayDate;

  /// needs a Map of <DayOfWeek, String> to fill DayOfWeekCalendarCells
  ///
  /// example:
  /// final dayOfWeekMap = {
  ///     DayOfWeek.monday: 'Mon',
  ///     DayOfWeek.thursday: 'Thu',
  ///     DayOfWeek.wednesday: 'Wen',
  ///     DayOfWeek.tuesday: 'Tue',
  ///     DayOfWeek.friday: 'Fri',
  ///     DayOfWeek.saturday: 'Sat',
  ///     DayOfWeek.sunday: 'Sun',
  ///   };
  final Map<DayOfWeek, String> daysOfWeek;

  /// Callback once minimum month is reached
  final VoidCallback? onReachedMinimumDate;

  /// Callback once maximum month is reached
  final VoidCallback? onReachedMaximumDate;

  /// Callback once month is changed
  final ValueChanged<DateTime>? onMonthChanged;

  /// Callback once day is changed
  final ValueChanged<DateTime>? onDayChanged;

  /// Flag if horizontal scrolling in calendar is enabled.
  ///
  /// Default value: true
  final bool? enableHorizontalSwipe;

  /// Sets the padding between headerTitle and both headerIcons
  ///
  /// Default value: EdgeInsets.all(3.0)
  final EdgeInsets iconPadding;

  /// Enables changing the month when a day outside of current month is tapped.
  ///
  /// Default value: true
  final bool enableJumpToOtherMonth;

  /// Forces Table to have 6 Rows, even when month would fit in 5.
  ///
  /// Helpful if any widget is placed in a column under AlhCalender that should not move up and down when month is changed.
  /// Default value: true
  final bool enableSixWeeksForEveryMonth;

  /// Makes sixth Row invisible if there are only days from next month shown in the last row.
  ///
  /// Default value: true
  final bool disableSixthRow;

  /// Should show days that are not in current month.
  ///
  /// If true days outside of current month are shown. If false the days are shown,
  /// but still flagged with isInCurrentMonth = false, so
  /// it can be used depending on the situation.
  ///
  /// Default value: true
  final bool showDaysOutsideCurrentMonth;

  /// If true days out of range can't be tapped
  ///
  /// Default value: true
  final bool disableTapOnOutOfRange;

  const AlhCalendar({
    required this.dayBuilder,
    required this.headerBuilder,
    required this.headerLeading,
    required this.headerTrailing,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
    this.initialDateTime,
    this.maximumMonthDate,
    this.minimumMonthDate,
    this.minimumDayDate,
    this.maximumDayDate,
    this.onReachedMinimumDate,
    this.onReachedMaximumDate,
    this.onMonthChanged,
    this.onDayChanged,
    this.iconPadding = const EdgeInsets.all(3.0),
    this.enableHorizontalSwipe = true,
    this.enableSixWeeksForEveryMonth = true,
    this.showDaysOutsideCurrentMonth = true,
    this.disableTapOnOutOfRange = true,
    this.disableSixthRow = false,
    this.enableJumpToOtherMonth = true,
    super.key,
  }) : assert(daysOfWeek.length == 7);

  @override
  State<AlhCalendar> createState() => _AlhCalendarState();
}

class _AlhCalendarState extends State<AlhCalendar> {
  late CalendarMonth calendarMonth;
  late DateTime selectedDateTime;
  late DateTime currentDateTime;

  @override
  void initState() {
    super.initState();
    this.currentDateTime = this.widget.initialDateTime ?? DateTime.now();
    this.selectedDateTime = this.currentDateTime;
    this.calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
      date: DateTime(this.currentDateTime.year, this.currentDateTime.month),
      forceSixWeekMonth: this.widget.enableSixWeeksForEveryMonth,
    );
  }

  /// Handles press on headerTrailing.
  ///
  /// Callback after isMaximumMonthDateReached is true and returns without doing anything
  /// If maximum month is not reached yet, [currentDateTime] and [calendarMonth] gets
  /// updated with next month. Also Callback after month is changed.
  void _goToNextMonth() {
    if (this.widget.maximumMonthDate != null &&
        DateHelper.isMaximumMonthDateReached(
            maximumDateTime: this.widget.maximumMonthDate!,
            currentDateTime: this.currentDateTime)) {
      this.widget.onReachedMaximumDate?.call();
      return;
    }

    setState(() {
      this.currentDateTime =
          DateTime(this.currentDateTime.year, this.currentDateTime.month + 1);
      this.calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
          date: this.currentDateTime,
          forceSixWeekMonth: this.widget.enableSixWeeksForEveryMonth);

      this.widget.onMonthChanged?.call(this.currentDateTime);
    });
  }

  /// Handles tap on headerLeading.
  ///
  /// Callback if isMinimumMonthDateReached is reached and returns without doing
  /// anything. IF isMinimumMonthDateReached is false, updates [currentDateTime] and
  /// [calendarMonth] with previous month. Also Callback after changing the month.
  void _goToPreviousMonth() {
    if (this.widget.minimumMonthDate != null &&
        DateHelper.isMinimumMonthDateReached(
            minimumMonthDate: this.widget.minimumMonthDate!,
            currentDateTime: this.currentDateTime)) {
      this.widget.onReachedMinimumDate?.call();
      return;
    }

    setState(() {
      this.currentDateTime =
          DateTime(this.currentDateTime.year, this.currentDateTime.month - 1);
      this.calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
        date: this.currentDateTime,
        forceSixWeekMonth: this.widget.enableSixWeeksForEveryMonth,
      );
      this.widget.onMonthChanged?.call(this.currentDateTime);
    });
  }

  /// Handles tap on a day.
  ///
  /// If enableJumpToOtherMonth is true and selected day is outside of
  /// the current month, then the calendar will jump to the month where the
  /// selected day is in.
  /// Either way [selectedDateTime] gets updated with selectedDate. Also
  /// Callback after day is changed.
  void _selectCalendarDay(DateTime date) {
    if (date != this.selectedDateTime) {
      if (this.widget.enableJumpToOtherMonth) {
        if (date.month == 12 && this.currentDateTime.month == 1) {
          this._goToPreviousMonth();
        } else if (date.month == 1 && this.currentDateTime.month == 12) {
          this._goToPreviousMonth();
        } else if (date.month > this.currentDateTime.month) {
          this._goToNextMonth();
        } else if (date.month < this.currentDateTime.month) {
          this._goToPreviousMonth();
        }
      }

      setState(() {
        this.selectedDateTime = date;
        this.widget.onDayChanged?.call(this.selectedDateTime);
      });
    }
  }

  /// Calculates the swiping direction and calls method depending on
  /// the outcome of calculation.
  void _onHorizontalDragEnd(DragEndDetails details) {
    if (details.velocity.pixelsPerSecond.dx < 0) {
      this._goToNextMonth();
    } else if (details.velocity.pixelsPerSecond.dx > 0) {
      this._goToPreviousMonth();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onHorizontalDragEnd: this.widget.enableHorizontalSwipe == true
          ? this._onHorizontalDragEnd
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalenderHeader(
            onPressedNext: this._goToNextMonth,
            onPressedPrevious: this._goToPreviousMonth,
            header: this.widget.headerBuilder(this.currentDateTime),
            padding: this.widget.iconPadding,
            iconLeft: this.widget.headerLeading,
            iconRight: this.widget.headerTrailing,
          ),
          CalendarBody(
            onSelectDay: this._selectCalendarDay,
            calendarMonth: this.calendarMonth,
            dayBuilder: this.widget.dayBuilder,
            dayOfWeekBuilder: this.widget.dayOfWeekBuilder,
            daysOfWeek: this.widget.daysOfWeek,
            selectedDateTime: this.selectedDateTime,
            minimumDayDate: this.widget.minimumDayDate,
            maximumDayDate: this.widget.maximumDayDate,
            disableClickOnOutOfRange: this.widget.disableTapOnOutOfRange,
            disableSixthRow: this.widget.disableSixthRow,
          ),
        ],
      ),
    );
  }
}
