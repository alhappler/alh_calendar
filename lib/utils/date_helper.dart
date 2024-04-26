/// Collection of methods regarding the calculation of the dates.
class DateHelper {
  /// Checks if maximum month has been reached.
  ///
  /// Returns true if the year and month of [currentDate]
  /// is equal or higher then year and month of [maxSelectableDate].
  static bool isMaximumMonthDateReached({
    required DateTime maxSelectableDate,
    required DateTime currentDate,
  }) {
    return currentDate.year >= maxSelectableDate.year &&
        currentDate.month >= maxSelectableDate.month;
  }

  /// Checks if minimum month has been reached.
  ///
  /// Returns true if the year and month of [currentDate]
  /// is equal or lower then year and month of maxSelectableDate.
  static bool isMinimumMonthDateReached({
    required DateTime minimumMonthDate,
    required DateTime currentDate,
  }) {
    return currentDate.year <= minimumMonthDate.year &&
        currentDate.month <= minimumMonthDate.month;
  }

  /// Checks if a given day is out of Range
  ///
  /// Out of Range means that the day does not lay between the
  /// [minSelectableDate] and maximumDayData. If maxSelectableDate is null
  /// all days before the minSelectableDate are out of Range, if minSelectableDate
  /// is null all day beyond maxSelectableDate are out of Range. If both are null
  /// there is no Range, so no day can be out of range.
  static bool isDayOutOfRange({
    required DateTime dayDateTime,
    required DateTime? minSelectableDate,
    required DateTime? maxSelectableDate,
  }) {
    if (minSelectableDate != null && maxSelectableDate != null) {
      return dayDateTime.isBefore(minSelectableDate) ||
          dayDateTime.isAfter(maxSelectableDate);
    } else if (minSelectableDate != null) {
      return dayDateTime.isBefore(minSelectableDate);
    } else if (maxSelectableDate != null) {
      return dayDateTime.isAfter(maxSelectableDate);
    } else {
      return false;
    }
  }

  /// Compares the date portions (year, month, day) of two [DateTime] objects.
  ///
  /// Returns `true` if the dates are the same, ignoring time.
  static bool areDatesEqual({
    DateTime? date1,
    DateTime? date2,
  }) {
    if (date1 == null || date2 == null) {
      return false;
    }
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  /// Calculates the difference in months between two dates.
  static int getMonthDifference({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    final monthsDifference =
        (endDate.year - startDate.year) * 12 + endDate.month - startDate.month;
    return monthsDifference.abs();
  }
}
