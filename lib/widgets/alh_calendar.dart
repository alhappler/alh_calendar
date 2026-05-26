import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_body.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:alh_calendar/widgets/calendar_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part '../controller/alh_calendar_controller.dart';

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
  final Widget Function(bool enabled) headerLeadingBuilder;

  /// custom widget that is right of header
  final Widget Function(bool enabled) headerTrailingBuilder;

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
  /// If the [disablePreviousMonthFromDate] is not set,
  /// the default value is 10 years in the past.
  final DateTime? disablePreviousMonthFromDate;

  /// The maximum selectable month for the calendar.
  ///
  /// If the maximum month is reached, the user cannot go to the next month.
  /// It can be null, indicating that there is no maximum selectable month,
  /// and the user can navigate to any future month.
  ///
  /// If the [disableNextMonthFromDate] is not set, the default value is 10 years in the future.
  final DateTime? disableNextMonthFromDate;

  /// Callback that is called when previous month was selected.
  ///
  /// Get's called with the new month value.
  final void Function(CalendarMonth newMonth)? onPreviousMonth;

  /// Callback that is called when next month was selected.
  ///
  /// Get's called with the new month value.
  final void Function(CalendarMonth newMonth)? onNextMonth;

  /// Sets the minimum day within the selectable month range.
  ///
  /// Every day before the chosen day is flagged as outside of the range.
  /// All days between the minimum and maximum days are considered in range.
  /// The selected day must fall within the range defined
  /// by [disablePreviousMonthFromDate] and [disableNextMonthFromDate].
  /// If [minSelectableDate] is explicitly set but falls outside the allowable month range,
  /// it will be limited to the [disablePreviousMonthFromDate] or its default.
  final DateTime? minSelectableDate;

  /// Sets the maximum day within the selectable month range.
  ///
  /// All days after the maximum day are flagged as outside of the range.
  /// The selected day must fall within the range defined
  /// by [disablePreviousMonthFromDate] and [disableNextMonthFromDate].
  /// If[maxSelectableDate]is explicitly set but falls outside the allowable month range,
  /// it will be limited to the [disableNextMonthFromDate] or its default.
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

  /// Shows a border around the header and days when focused.
  ///
  /// This is useful for making the selected day or header more visible
  /// when using an external keyboard.
  ///
  /// Default value: false
  final bool showFocusedBorder;

  /// Style for the focused border around the header and days.
  ///
  /// This is used when [showFocusedBorder] is true.
  ///
  /// **Default:**
  /// ```dart
  /// FocusedBorderStyle(
  ///   thickness: 2,
  ///   color: Colors.blue,
  ///   headerBorderRadius: BorderRadius.all(Radius.circular(80)),
  ///   daysBorderRadius: BorderRadius.all(Radius.circular(8)),
  /// )
  /// ```
  final FocusedBorderStyle focusedBorderStyle;

  /// Optional controller for programmatic navigation.
  ///
  /// Use [AlhCalendarController.jumpToMonthOf] to animate the calendar to a chosen
  /// month from outside the widget tree (e.g. a custom header tap or a "today" button).
  final AlhCalendarController? controller;

  const AlhCalendar({
    required this.dayBuilder,
    required this.headerBuilder,
    required this.headerLeadingBuilder,
    required this.headerTrailingBuilder,
    required this.dayOfWeekBuilder,
    required this.daysOfWeek,
    this.showFocusedBorder = false,
    this.focusedBorderStyle = const FocusedBorderStyle(),
    this.initialDate,
    this.disableNextMonthFromDate,
    this.disablePreviousMonthFromDate,
    this.onPreviousMonth,
    this.onNextMonth,
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
    this.controller,
    super.key,
  }) : assert(daysOfWeek.length == 7);

  @override
  State<AlhCalendar> createState() => _AlhCalendarState();
}

class _AlhCalendarState extends State<AlhCalendar> {
  late CalendarMonth calendarMonth;
  late DateTime currentDate;
  late DateTime initialDate;
  late PageController _pageController;

  DateTime? selectedDate;
  double? pageViewHeight;

  final _calendarBodyKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _initializeCalendar();
    widget.controller?._attach(jumpToMonth);
  }

  @override
  void didUpdateWidget(covariant AlhCalendar old) {
    super.didUpdateWidget(old);

    if (widget.initialDate != old.initialDate) {
      _initializeCalendar();
      setState(() {});
    }

    if (widget.controller != old.controller) {
      old.controller?._detach(jumpToMonth);
      widget.controller?._attach(jumpToMonth);
    }
  }

  @override
  void dispose() {
    widget.controller?._detach(jumpToMonth);
    super.dispose();
  }

  void _initializeCalendar() {
    initialDate = widget.initialDate ?? DateTime.now();

    selectedDate = widget.selectInitialDate ? initialDate : null;

    currentDate = initialDate;
    calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
      date: DateTime(currentDate.year, currentDate.month),
      forceSixWeekMonth: widget.showSixWeeksForEveryMonth,
    );

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _setPageViewHeight();
    });
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalendarHeader(
            showFocusedBorder: widget.showFocusedBorder,
            focusedBorderStyle: widget.focusedBorderStyle,
            onPressedNext: isMaxSelectableMonthReached ? null : _goToNextMonth,
            onPressedPrevious:
                isMinSelectableMonthReached ? null : _goToPreviousMonth,
            header: widget.headerBuilder(currentDate),
            headerPadding: widget.headerPadding,
            iconPadding: widget.iconPadding,
            iconLeft: widget.headerLeadingBuilder(!isMinSelectableMonthReached),
            iconRight:
                widget.headerTrailingBuilder(!isMaxSelectableMonthReached),
          ),
          Builder(
            builder: (context) {
              // If the height of the CalendarBody is not yet determined, build the CalendarBody
              // to calculate the height because PageView needs a fixed height to work properly.
              // Once the height is determined, build the CalendarPageView with the calculated height.
              if (pageViewHeight == null) {
                // Build the initial month with 6 weeks to calculate the height.
                // This is done to ensure that the height is calculated correctly.
                // Because if the first month had 5 weeks,
                // then the height is fixed for months with 5 weeks,
                // so we calculate the height for the maximum height possible,
                // which is for 6 weeks.
                final calenderMonthWithSixWeeks =
                    CalendarTableHelper.buildCurrentCalendarMonth(
                  date: DateTime(
                    currentDate.year,
                    currentDate.month,
                  ),

                  // Force 6 weeks for the initial month to calculate the height.
                  forceSixWeekMonth: true,
                );
                return CalendarBody(
                  showFocusedBorder: widget.showFocusedBorder,
                  focusedBorderStyle: widget.focusedBorderStyle,
                  key: _calendarBodyKey,
                  onSelectDay: _handleSelectDay,
                  calendarMonth: calenderMonthWithSixWeeks,
                  dayBuilder: widget.dayBuilder,
                  dayOfWeekBuilder: widget.dayOfWeekBuilder,
                  daysOfWeek: widget.daysOfWeek,
                  selectedDate: selectedDate,
                  minSelectableDate: widget.minSelectableDate,
                  maxSelectableDate: widget.maxSelectableDate,
                  disableTapOnOutOfRange: widget.disableTapOnOutOfRange,
                );
              } else {
                return SizedBox(
                  height: pageViewHeight,
                  child: CalendarPageView(
                    showFocusedBorder: widget.showFocusedBorder,
                    focusedBorderStyle: widget.focusedBorderStyle,
                    initialDate: initialDate,
                    enableHorizontalSwipe: widget.enableHorizontalSwipe,
                    showSixWeeksForEveryMonth: widget.showSixWeeksForEveryMonth,
                    onSelectDay: _handleSelectDay,
                    dayBuilder: widget.dayBuilder,
                    dayOfWeekBuilder: widget.dayOfWeekBuilder,
                    daysOfWeek: widget.daysOfWeek,
                    selectedDate: selectedDate,
                    minSelectableDate: widget.minSelectableDate,
                    maxSelectableDate: widget.maxSelectableDate,
                    disableNextMonthFromDate: widget.disableNextMonthFromDate,
                    disablePreviousMonthFromDate:
                        widget.disablePreviousMonthFromDate,
                    disableTapOnOutOfRange: widget.disableTapOnOutOfRange,
                    onChangeMonth: _handleChangedMonth,
                    onCreatedPageView: (pageController) {
                      _pageController = pageController;
                    },
                  ),
                );
              }
            },
          ),
        ],
      );

  void _handleChangedMonth({
    required int index,
    required DateTime newMonthDate,
  }) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        currentDate = newMonthDate;
        calendarMonth = CalendarTableHelper.buildCurrentCalendarMonth(
          date: newMonthDate,
          forceSixWeekMonth: widget.showSixWeeksForEveryMonth,
        );
      });
      widget.onMonthChanged?.call(newMonthDate);
    });
  }

  /// Returns a boolean value indicating whether this is the first month in the calendar.
  bool get isMinSelectableMonthReached {
    final disablePreviousMonthFromDate = widget.disablePreviousMonthFromDate;

    if (disablePreviousMonthFromDate == null) {
      return false;
    }

    return currentDate.month == disablePreviousMonthFromDate.month &&
        currentDate.year == disablePreviousMonthFromDate.year;
  }

  /// Returns a boolean value indicating whether the current month is the last month.
  bool get isMaxSelectableMonthReached {
    final disableNextMonthFromDate = widget.disableNextMonthFromDate;

    if (disableNextMonthFromDate == null) {
      return false;
    }

    return currentDate.month == disableNextMonthFromDate.month &&
        currentDate.year == disableNextMonthFromDate.year;
  }

  /// Animates the calendar to the month containing [target].
  Future<void> jumpToMonth(DateTime target) async {
    final controller = widget.controller;

    // The page controller is created by [CalendarPageView] once the body
    // height is known; until then there is nothing to navigate.
    if (pageViewHeight == null || controller == null) return;

    final targetIndex = controller.calculateJumpMonthIndex(
      initialDate: initialDate,
      target: target,
      disablePreviousMonthFromDate: widget.disablePreviousMonthFromDate,
      disableNextMonthFromDate: widget.disableNextMonthFromDate,
    );
    await _pageController.animateToPage(
      targetIndex,
      duration: widget.pageChangeDuration,
      curve: widget.pageChangeCurve,
    );

    if (mounted) {
      setState(() {
        selectedDate = null;
      });
    }
  }

  /// Handles press on headerTrailing.
  Future<void> _goToNextMonth() async {
    await _pageController.nextPage(
      duration: widget.pageChangeDuration,
      curve: widget.pageChangeCurve,
    );
    widget.onNextMonth?.call(calendarMonth);
  }

  /// Handles tap on headerLeading.
  Future<void> _goToPreviousMonth() async {
    await _pageController.previousPage(
      duration: widget.pageChangeDuration,
      curve: widget.pageChangeCurve,
    );
    widget.onPreviousMonth?.call(calendarMonth);
  }

  /// Handles tap on a day.
  ///
  /// If enableJumpToOtherMonth is true and selected day is outside of
  /// the current month, then the calendar will jump to the month where the
  /// selected day is in.
  /// Either way [selectedDate] gets updated with selectedDate. Also
  /// Callback after day is changed.
  Future<void> _handleSelectDay(DateTime date) async {
    if (widget.enableJumpToOtherMonth) {
      if (date.month == 12 && currentDate.month == 1) {
        await _goToPreviousMonth();
      } else if (date.month == 1 && currentDate.month == 12) {
        await _goToNextMonth();
      } else if (date.month > currentDate.month) {
        await _goToNextMonth();
      } else if (date.month < currentDate.month) {
        await _goToPreviousMonth();
      }
    }

    setState(() {
      selectedDate = date;
      widget.onDayChanged?.call(date);
    });
  }

  void _setPageViewHeight() {
    final context = _calendarBodyKey.currentContext;
    final renderBox = context?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      final height = renderBox.size.height;
      setState(() {
        pageViewHeight = height;
      });
    }
  }
}
