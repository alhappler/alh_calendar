import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:flutter/material.dart';

class CalendarCell extends StatelessWidget {
  final DateTime date;
  final bool isInCurrentMonth;
  final bool isSelected;
  final bool isWeekend;
  final bool isOutOfRange;
  final DayBuilder dayBuilder;
  final bool isSixthRowAndDisabled;
  final VoidCallback? onTap;

  const CalendarCell({
    required this.date,
    required this.isInCurrentMonth,
    required this.isSelected,
    required this.isWeekend,
    required this.dayBuilder,
    required this.onTap,
    required this.isOutOfRange,
    required this.isSixthRowAndDisabled,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = this.isSelected;
    if (this.isSixthRowAndDisabled) {
      isSelected = false;
    }

    final calendarDayBuilderModel = CalendarDayBuilderModel(
      dateTime: this.isSixthRowAndDisabled ? null : this.date,
      isInCurrentMonth: this.isInCurrentMonth,
      isSelected: isSelected,
      isWeekend: this.isWeekend,
      isOutOfRange: this.isOutOfRange,
    );

    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: this.isSixthRowAndDisabled ? null : this.onTap,
      child: this.dayBuilder(calendarDayBuilderModel),
    );
  }
}
