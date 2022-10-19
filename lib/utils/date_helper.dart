import 'package:alh_calendar/models/calendar_week.dart';

/// Collection of methods regarding the calculation of the dates.
class DateHelper {
  /// Checks if maximum month has been reached.
  ///
  /// Returns true if the year and month of [currentDateTime]
  /// is equal or higher then year and month of [maximumDateTime].
  static bool isMaximumMonthDateReached({
    required DateTime maximumDateTime,
    required DateTime currentDateTime,
  }) {
    return currentDateTime.year >= maximumDateTime.year &&
        currentDateTime.month >= maximumDateTime.month;
  }

  /// Checks if minimum month has been reached.
  ///
  /// Returns true if the year and month of [currentDateTime]
  /// is equal or lower then year and month of maximumDateTime.
  static bool isMinimumMonthDateReached({
    required DateTime minimumMonthDate,
    required DateTime currentDateTime,
  }) {
    return currentDateTime.year <= minimumMonthDate.year &&
        currentDateTime.month <= minimumMonthDate.month;
  }

  /// Checks if a given day is out of Range
  ///
  /// Out of Range means that the day does not lay between the
  /// [minimumDayDate] and maximumDayData. If maximumDayDate is null
  /// all days before the minimumDayDate are out of Range, if minimumDayDate
  /// is null all day beyond maximumDayDate are out of Range. If both are null
  /// there is no Range, so no day can be out of range.
  static bool isDayOutOfRange({
    required DateTime dayDateTime,
    required DateTime? minimumDayDate,
    required DateTime? maximumDayDate,
  }) {
    if (minimumDayDate != null && maximumDayDate != null) {
      return dayDateTime.isBefore(minimumDayDate) ||
          dayDateTime.isAfter(maximumDayDate);
    } else if (minimumDayDate != null) {
      return dayDateTime.isBefore(minimumDayDate);
    } else if (maximumDayDate != null) {
      return dayDateTime.isAfter(maximumDayDate);
    } else {
      return false;
    }
  }

  /// Checks if any day of [CalendarWeek] is in current month using isInCurrentMonth flag
  ///
  /// Required if the disableSixthRow is true, because if one day of
  /// the current month is in the sixth week, then the sixth row should NOT
  /// be disabled.
  static bool isDayOfCurrentMonthInLastRow({
    required CalendarWeek calendarWeek,
  }) {
    return calendarWeek.days.any((day) => day.isInCurrentMonth);
  }
}
