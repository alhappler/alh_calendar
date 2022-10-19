import 'package:flutter/cupertino.dart';

/// Model used for DayBuilder
@immutable
class CalendarDayBuilderModel {
  /// Specific DateTime of the day.
  final DateTime? dateTime;

  /// If true the day is inside the current selected month.
  final bool isInCurrentMonth;

  /// If true the day is selected.
  final bool isSelected;

  /// If true the day is one day of the weekend.
  final bool isWeekend;

  /// If true the day is before the minimumDay or after the maximumDay.
  /// If no minimumDay or maximumDay are chosen the value is false
  ///
  /// Default value: false
  final bool isOutOfRange;

  const CalendarDayBuilderModel({
    required this.dateTime,
    required this.isInCurrentMonth,
    required this.isSelected,
    required this.isWeekend,
    this.isOutOfRange = false,
  });

  @override
  bool operator ==(Object other) {
    return (other is CalendarDayBuilderModel) &&
        other.dateTime == this.dateTime &&
        other.isInCurrentMonth == this.isInCurrentMonth &&
        other.isSelected == this.isSelected &&
        other.isWeekend == this.isWeekend &&
        other.isOutOfRange == this.isOutOfRange;
  }

  @override
  int get hashCode => dateTime.hashCode;
}
