import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:flutter/material.dart';

/// Displays a single cell within the calendar.
///
/// It represents a day in the calendar and can be customized to show different styles for
/// current month days, selected days, weekends, and out-of-range days.
class CalendarCell extends StatelessWidget {
  final DateTime date;
  final bool isInCurrentMonth;
  final bool isSelected;
  final bool isWeekend;
  final bool isOutOfRange;
  final DayBuilder dayBuilder;
  final VoidCallback? onTap;

  const CalendarCell({
    required this.date,
    required this.isInCurrentMonth,
    required this.isSelected,
    required this.isWeekend,
    required this.dayBuilder,
    required this.onTap,
    required this.isOutOfRange,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final calendarDayBuilderModel = CalendarDayBuilderModel(
      dateTime: this.date,
      isInCurrentMonth: this.isInCurrentMonth,
      isSelected: isSelected,
      isWeekend: this.isWeekend,
      isOutOfRange: this.isOutOfRange,
    );

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: this.onTap,
      child: this.dayBuilder(calendarDayBuilderModel),
    );
  }
}
