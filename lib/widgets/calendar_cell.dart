import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:alh_calendar/widgets/focused_border.dart';
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
  final bool showFocusedBorder;
  final FocusedBorderStyle focusedBorderStyle;

  const CalendarCell({
    required this.date,
    required this.isInCurrentMonth,
    required this.isSelected,
    required this.isWeekend,
    required this.dayBuilder,
    required this.onTap,
    required this.isOutOfRange,
    required this.showFocusedBorder,
    required this.focusedBorderStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final calendarDayBuilderModel = CalendarDayBuilderModel(
      dateTime: date,
      isInCurrentMonth: isInCurrentMonth,
      isSelected: isSelected,
      isWeekend: isWeekend,
      isOutOfRange: isOutOfRange,
    );

    return FocusedBorder(
      showFocusedBorder: showFocusedBorder,
      color: focusedBorderStyle.color,
      thickness: focusedBorderStyle.thickness,
      borderRadius: focusedBorderStyle.daysBorderRadius,
      builder: (onFocusChange) => InkWell(
        onFocusChange: onFocusChange,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: dayBuilder(calendarDayBuilderModel),
      ),
    );
  }
}
