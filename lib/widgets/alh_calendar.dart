import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:alh_calendar/widgets/calendar_page_view.dart';
import 'package:flutter/cupertino.dart';
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
  final DateTime? initialDate;

  /// The minimum selectable month for the calendar.
  ///
  /// If the minimum month is reached, the user cannot go to a previous month.
  /// It can be null, indicating that there is no minimum selectable month,
  /// and the user can navigate to any previous month.
  ///
  /// If the [minSelectableMonth] is not set, the default value is 10 years in the past.
  final DateTime? minSelectableMonth;

  /// The maximum selectable month for the calendar.
  ///
  /// If the maximum month is reached, the user cannot go to the next month.
  /// It can be null, indicating that there is no maximum selectable month,
  /// and the user can navigate to any future month.
  ///
  /// If the [maxSelectableMonth] is not set, the default value is 10 years in the future.
  final DateTime? maxSelectableMonth;

  /// Sets the minimum day within the selectable month range.
  ///
  /// Every day before the chosen day is flagged as outside of the range.
  /// All days between the minimum and maximum days are considered in range.
  /// The selected day must fall within the range defined
  /// by [minSelectableMonth] and [maxSelectableMonth].
  /// If [minSelectableDate] is explicitly set but falls outside the allowable month range,
  /// it will be limited to the [minSelectableMonth] or its default.
  final DateTime? minSelectableDate;

  /// Sets the maximum day within the selectable month range.
  ///
  /// All days after the maximum day are flagged as outside of the range.
  /// The selected day must fall within the range defined
  /// by [minSelectableMonth] and [maxSelectableMonth].
  /// If[maxSelectableDate]is explicitly set but falls outside the allowable month range,
  /// it will be limited to the [maxSelectableMonth] or its default.
  final DateTime? maxSelectableDate;

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

  /// Callback once month is changed
  final ValueChanged<DateTime>? onMonthChanged;

  /// Callback once day is changed
  final ValueChanged<DateTime>? onDayChanged;

  /// Flag if horizontal scrolling in calendar is enabled.
  ///
  /// Default value: true
  final bool enableHorizontalSwipe;

  /// Sets the padding around header title and icons.
  ///
  /// Default value: EdgeInsets.symmetric(horizontal: 3.0)
  final EdgeInsets headerPadding;

  /// Sets the padding around both headerIcons.
  ///
  /// Default value: EdgeInsets.all(8)
  final EdgeInsets iconPadding;

  /// Enables changing the month when a day outside of current month is tapped.
  ///
  /// Default value: true
  final bool enableJumpToOtherMonth;

  /// Forces Table to have 6 Rows, even when month would fit in 5.
  ///
  /// If false the calendar will only show 6 weeks for months that need it.
  /// The height of the calendar will be calculated for 6 weeks to avoid jumping
  /// when the month changes from a month with 5 weeks to one with 6.
  /// If true the calendar will show 6 weeks for every month.
  ///
  /// Default value: true
  final bool showSixWeeksForEveryMonth;

  /// If true days out of range can't be tapped
  ///
  /// Default value: true
  final bool disableTapOnOutOfRange;

  /// If false the initialDate won´t be selected.
  ///
  /// This can be used if the initialDate needs to be passed to the alhCalendar,
  /// but the date should not be preselected
  ///
  /// Default value: true
  final bool selectInitialDate;

  /// Duration for the page change animation.
  ///
  /// Default value: Duration(milliseconds: 400)
  final Duration pageChangeDuration;

  /// Curve for the page change animation.
  ///
  /// Default value: Curves.easeInOut
  final Curve pageChangeCurve;

  const AlhCalendar({
    required this.dayBuilder,
    required this.headerBuilder,
    required this.headerLeading,
    required this.headerTrailing,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
    this.initialDate,
    this.maxSelectableMonth,
    this.minSelectableMonth,
    this.minSelectableDate,
    this.maxSelectableDate,
    this.onMonthChanged,
    this.onDayChanged,
    this.headerPadding = const EdgeInsets.symmetric(horizontal: 3.0),
    this.iconPadding = const EdgeInsets.all(8),
    this.pageChangeDuration = const Duration(milliseconds: 400),
    this.pageChangeCurve = Curves.easeInOut,
    this.enableHorizontalSwipe = true,
    this.showSixWeeksForEveryMonth = true,
    this.disableTapOnOutOfRange = true,
    this.enableJumpToOtherMonth = true,
    this.selectInitialDate = true,
    super.key,
  }) : assert(daysOfWeek.length == 7);

  @override
  State<AlhCalendar> createState() => _AlhCalendarState();
}

class _AlhCalendarState extends State<AlhCalendar> {
  late CalendarMonth calendarMonth;
  late DateTime currentDate;
  late DateTime initialDate;
  late DateTime minSelectableMonth;
  late DateTime maxSelectableMonth;
  late PageController _pageController;

  DateTime? selectedDate;
  double? pageViewHeight;

  final _calendarBodyKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    this.initialDate = this.widget.initialDate ?? DateTime.now();

    this.selectedDate = this.widget.selectInitialDate ? this.initialDate : null;

    this.currentDate = this.initialDate;
    this.calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
      date: DateTime(this.currentDate.year, this.currentDate.month),
      forceSixWeekMonth: this.widget.showSixWeeksForEveryMonth,
    );

    this.maxSelectableMonth = this.widget.maxSelectableMonth ??
        this.initialDate.add(const Duration(days: 365 * 10));
    this.minSelectableMonth = this.widget.minSelectableMonth ??
        this.initialDate.subtract(const Duration(days: 365 * 10));

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      this._setPageViewHeight();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CalenderHeader(
          onPressedNext: this.isMaxSelectableMonth ? null : this._goToNextMonth,
          onPressedPrevious:
              this.isMinSelectableMonth ? null : this._goToPreviousMonth,
          header: this.widget.headerBuilder(this.currentDate),
          headerPadding: this.widget.headerPadding,
          iconPadding: this.widget.iconPadding,
          iconLeft: this.widget.headerLeading,
          iconRight: this.widget.headerTrailing,
        ),
        Builder(
          builder: (context) {
            // If the height of the CalendarBody is not yet determined, build the CalendarBody
            // to calculate the height because PageView needs a fixed height to work properly.
            // Once the height is determined, build the CalendarPageView with the calculated height.
            if (this.pageViewHeight == null) {
              // Build the initial month with 6 weeks to calculate the height.
              // This is done to ensure that the height is calculated correctly.
              // Because if the first month had 5 weeks,
              // then the height is fixed for months with 5 weeks,
              // so we calculate the height for the maximum height possible,
              // which is for 6 weeks.
              final calenderMonthWithSixWeeks =
                  CalendarTableHelper.buildCurrentCalendarMonth(
                date: DateTime(
                  this.currentDate.year,
                  this.currentDate.month,
                ),

                // Force 6 weeks for the initial month to calculate the height.
                forceSixWeekMonth: true,
              );
              return CalendarBody(
                key: this._calendarBodyKey,
                onSelectDay: this._handleSelectDay,
                calendarMonth: calenderMonthWithSixWeeks,
                dayBuilder: this.widget.dayBuilder,
                dayOfWeekBuilder: this.widget.dayOfWeekBuilder,
                daysOfWeek: this.widget.daysOfWeek,
                selectedDate: this.selectedDate,
                minSelectableDate: this.widget.minSelectableDate,
                maxSelectableDate: this.widget.maxSelectableDate,
                disableTapOnOutOfRange: this.widget.disableTapOnOutOfRange,
              );
            } else {
              return SizedBox(
                height: this.pageViewHeight,
                child: CalendarPageView(
                  initialDate: this.initialDate,
                  enableHorizontalSwipe: this.widget.enableHorizontalSwipe,
                  showSixWeeksForEveryMonth:
                      this.widget.showSixWeeksForEveryMonth,
                  onSelectDay: this._handleSelectDay,
                  dayBuilder: this.widget.dayBuilder,
                  dayOfWeekBuilder: this.widget.dayOfWeekBuilder,
                  daysOfWeek: this.widget.daysOfWeek,
                  selectedDate: this.selectedDate,
                  minSelectableDate: this.widget.minSelectableDate,
                  maxSelectableDate: this.widget.maxSelectableDate,
                  maxSelectableMonth: this.maxSelectableMonth,
                  minSelectableMonth: this.minSelectableMonth,
                  disableTapOnOutOfRange: this.widget.disableTapOnOutOfRange,
                  onChangeMonth: this._handleChangeMonth,
                  onCreatedPageView: (pageController) {
                    this._pageController = pageController;
                  },
                ),
              );
            }
          },
        ),
      ],
    );
  }

  void _handleChangeMonth({
    required int index,
    required DateTime newMonthDate,
  }) {
    setState(() {
      this.currentDate = newMonthDate;
      this.calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
        date: newMonthDate,
        forceSixWeekMonth: this.widget.showSixWeeksForEveryMonth,
      );
      this.widget.onMonthChanged?.call(newMonthDate);
    });
  }

  /// Returns a boolean value indicating whether this is the first month in the calendar.
  bool get isMinSelectableMonth {
    return this.currentDate.month == this.minSelectableMonth.month &&
        this.currentDate.year == this.minSelectableMonth.year;
  }

  /// Returns a boolean value indicating whether the current month is the last month.
  bool get isMaxSelectableMonth {
    return this.currentDate.month == this.maxSelectableMonth.month &&
        this.currentDate.year == this.maxSelectableMonth.year;
  }

  /// Handles press on headerTrailing.
  Future<void> _goToNextMonth() async {
    await this._pageController.nextPage(
          duration: this.widget.pageChangeDuration,
          curve: this.widget.pageChangeCurve,
        );
  }

  /// Handles tap on headerLeading.
  Future<void> _goToPreviousMonth() async {
    await this._pageController.previousPage(
          duration: this.widget.pageChangeDuration,
          curve: this.widget.pageChangeCurve,
        );
  }

  /// Handles tap on a day.
  ///
  /// If enableJumpToOtherMonth is true and selected day is outside of
  /// the current month, then the calendar will jump to the month where the
  /// selected day is in.
  /// Either way [selectedDate] gets updated with selectedDate. Also
  /// Callback after day is changed.
  Future<void> _handleSelectDay(DateTime date) async {
    if (date != this.selectedDate) {
      if (this.widget.enableJumpToOtherMonth) {
        if (date.month == 12 && this.currentDate.month == 1) {
          await this._goToPreviousMonth();
        } else if (date.month == 1 && this.currentDate.month == 12) {
          await this._goToNextMonth();
        } else if (date.month > this.currentDate.month) {
          await this._goToNextMonth();
        } else if (date.month < this.currentDate.month) {
          await this._goToPreviousMonth();
        }
      }

      setState(() {
        this.selectedDate = date;
        this.widget.onDayChanged?.call(date);
      });
    }
  }

  void _setPageViewHeight() {
    final context = this._calendarBodyKey.currentContext;
    final renderBox = context?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final height = renderBox.size.height;
      setState(() {
        this.pageViewHeight = height;
      });
    }
  }
}
