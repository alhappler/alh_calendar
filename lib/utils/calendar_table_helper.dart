import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_day.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/models/calendar_week.dart';
import 'package:alh_calendar/utils/date_helper.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:alh_calendar/widgets/calendar_cell.dart';
import 'package:flutter/material.dart';

/// Creates a list of all days needed to show a CalendarMonth.
///
/// The CalendarTableHelper need the DateTime of the month which should be shown.
/// Because a month does not always start at monday and end at a sunday we would get
/// empty days in front and at the end of the month. To avoid this empty days we add
/// days from the previous month in front and days from the next month at the end of
/// the current month:
/// [daysOfPreviousMonth + daysOfCurrentMonth + daysOfNextMonth]
class CalendarTableHelper {
  static int weekSize = DateTime.daysPerWeek;
  static int calendarWeekLength = 5;

  static CalendarMonth buildCurrentCalendarMonth({
    required DateTime date,
    required bool forceSixWeekMonth,
  }) {
    return CalendarMonth(
      weeks:
          _getCalendarWeeks(date: date, forceSixWeekMonth: forceSixWeekMonth),
      month: DateTime(date.year, date.month),
    );
  }

  // returns chunks of all given days as calendarWeeks
  static List<CalendarWeek> _getCalendarWeeks(
      {required DateTime date, required bool forceSixWeekMonth}) {
    final calendarWeeks = <CalendarWeek>[];
    // get all days in current month
    final daysInCurrentMonth = _getDaysInMonth(date, true);

    // get all days in previous month
    final daysInPreviousMonth =
        _getDaysInMonth(DateTime(date.year, date.month - 1), false);

    // get all days in next month
    final daysInNextMonth =
        _getDaysInMonth(DateTime(date.year, date.month + 1), false);

    // weekday on which the month starts
    final firstWeekDayOfMonth = _getFirstWeekDayOfMonth(date);

    // fills up the days in front of currtenmonth days with days from previous month
    final daysOfPreviousMonth = _fillDaysInMonthBeginning(
      weekday: firstWeekDayOfMonth,
      lastMonthDays: daysInPreviousMonth,
    );
    final daysOfNextMonth = _fillDaysInMonthEnd(
      weekday: daysInCurrentMonth.last.date.weekday,
      nextMonthDays: daysInNextMonth,
    );
    final days = daysOfPreviousMonth + daysInCurrentMonth + daysOfNextMonth;

    for (var i = 0; i < days.length; i += weekSize) {
      final newCalendarWeek = CalendarWeek(
        days: days.sublist(i, i + weekSize),
      );
      calendarWeeks.add(newCalendarWeek);
    }

    if (forceSixWeekMonth && calendarWeeks.length == calendarWeekLength) {
      final start = daysOfNextMonth.isEmpty ? 0 : daysOfNextMonth.last.date.day;
      final newCalendarWeek = CalendarWeek(
        days: daysInNextMonth.sublist(start, start + weekSize),
      );
      calendarWeeks.add(newCalendarWeek);
    }

    return calendarWeeks;
  }

  /// Returns on which day of the week the month starts
  ///
  /// for example: monday or saturday
  static int _getFirstWeekDayOfMonth(DateTime month) {
    return DateTime(month.year, month.month, month.day).weekday;
  }

  /// Depending on which weekday the month starts, we need to fill the List of days in front.
  ///
  /// For example if the month starts at wednesday, then monday and tuesday would be empty.
  /// In this case these days get filled with the last two days of the previous month.
  static List<CalendarDay> _fillDaysInMonthBeginning({
    required int weekday,
    required List<CalendarDay> lastMonthDays,
  }) {
    final lastMonthDaysLength = lastMonthDays.length;
    return lastMonthDays.sublist(
      lastMonthDaysLength - weekday + 1,
      lastMonthDaysLength,
    );
  }

  /// Depending on which weekday the month ends, days should be added at the end of the month.
  ///
  /// For example if the month ends at friday, then saturday and sunday would be empty.
  /// In this case these days get filled with the first two days of the next month.
  static List<CalendarDay> _fillDaysInMonthEnd({
    required int weekday,
    required List<CalendarDay> nextMonthDays,
  }) {
    return nextMonthDays.sublist(0, DateTime.daysPerWeek - weekday);
  }

  /// Returns a list of calendarDays
  ///
  /// For every day in the given month a clendarDay is added to the list.
  static List<CalendarDay> _getDaysInMonth(
    DateTime date,
    bool isCurrentMonth,
  ) {
    final totalDays = DateUtils.getDaysInMonth(date.year, date.month);
    final List<CalendarDay> dateTimeDayList = [];
    for (int i = 0; i < totalDays; i++) {
      final day = DateTime(date.year, date.month, i + 1);

      dateTimeDayList.add(CalendarDay(
        date: day,
        isInCurrentMonth: isCurrentMonth,
        dayOfWeek: DayOfWeek.values[day.weekday - 1],
      ));
    }

    return dateTimeDayList;
  }

  /// Returns a list with all TableRows needed.
  ///
  /// For every calendarWeek in given [CalendarMonth], one TableRow is build and
  /// each row gets filled with the calendarDays of the calendarWeeks.
  static List<TableRow> buildCalendarTableRow({
    required CalendarMonth calendarMonth,
    required bool disableSixthRow,
    required DateTime selectedDateTime,
    required DayBuilder dayBuilder,
    required ValueChanged<DateTime> onSelectDay,
    required bool disableClickOnOutOfRange,
    DateTime? minimumDayDate,
    DateTime? maximumDayDate,
  }) {
    return calendarMonth.weeks
        .map((week) => TableRow(
            children: week.days
                .map((day) => _buildCalendarCell(
                    calendarMonth: calendarMonth,
                    calendarDay: day,
                    calendarWeek: week,
                    disableSixthRow: disableSixthRow,
                    selectedDateTime: selectedDateTime,
                    dayBuilder: dayBuilder,
                    onSelectDay: onSelectDay,
                    disableClickOnOutOfRange: disableSixthRow,
                    minimumDayDate: minimumDayDate,
                    maximumDayDate: maximumDayDate))
                .toList()))
        .toList();
  }

  static CalendarCell _buildCalendarCell({
    required CalendarMonth calendarMonth,
    required CalendarDay calendarDay,
    required CalendarWeek calendarWeek,
    required bool disableSixthRow,
    required DateTime selectedDateTime,
    required DayBuilder dayBuilder,
    required ValueChanged<DateTime> onSelectDay,
    required bool disableClickOnOutOfRange,
    DateTime? minimumDayDate,
    DateTime? maximumDayDate,
  }) {
    late bool disableLastRow = false;
    // if disableSixthRow == true the last row has to be disabled
    if (calendarWeek == calendarMonth.weeks.last && disableSixthRow) {
      disableLastRow =
          !DateHelper.isDayOfCurrentMonthInLastRow(calendarWeek: calendarWeek);
    }
    // calculate if day is out of range
    final isOutOfRange = DateHelper.isDayOutOfRange(
        dayDateTime: calendarDay.date,
        minimumDayDate: minimumDayDate,
        maximumDayDate: maximumDayDate);
    return CalendarCell(
      isSixthRowAndDisabled: disableLastRow,
      date: calendarDay.date,
      isInCurrentMonth: calendarDay.isInCurrentMonth,
      isSelected: selectedDateTime == calendarDay.date,
      isWeekend: calendarDay.dayOfWeek.isWeekend,
      isOutOfRange: isOutOfRange,
      dayBuilder: dayBuilder,
      onTap: !disableClickOnOutOfRange || !isOutOfRange
          ? () => onSelectDay(calendarDay.date)
          : null,
    );
  }
}
