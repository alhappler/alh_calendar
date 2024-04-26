import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:flutter/material.dart';

/// Represents the whole TableView of the calendar.
class CalendarBody extends StatelessWidget {
  /// The CalendarMonth that is shown inside the table.
  final CalendarMonth calendarMonth;

  /// Custom Builder for a day cell.
  final DayBuilder dayBuilder;

  /// Custom Builder for the DayOfWeek cell.
  final DayOfWeekBuilder dayOfWeekBuilder;

  /// Callback when value of currentDate hase been changed.
  final ValueChanged<DateTime> onSelectDay;

  /// Uses a Map of <DayOfWeek, String> to fill DayOfWeekCalendarCells
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

  /// The date which is selected at the moment.
  final DateTime? selectedDate;

  /// If true the days outside of the Range can´t be tapped.
  final bool disableTapOnOutOfRange;

  /// All days before chosen minSelectableDate are flagged as outOfRange.
  final DateTime? minSelectableDate;

  /// All days after chosen maxSelectableDate are flagged as outOfRange.
  final DateTime? maxSelectableDate;

  const CalendarBody({
    required this.calendarMonth,
    required this.dayBuilder,
    required this.dayOfWeekBuilder,
    required this.onSelectDay,
    required this.daysOfWeek,
    required this.disableTapOnOutOfRange,
    required this.selectedDate,
    required this.minSelectableDate,
    required this.maxSelectableDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Card(
        elevation: 0,
        child: Table(
          children: [
            TableRow(
              children: List.generate(
                DateTime.daysPerWeek,
                (day) {
                  final dayValue = this.daysOfWeek.entries.elementAt(day);

                  return this.dayOfWeekBuilder(
                    dayValue.value,
                    dayValue.key.isWeekend,
                  );
                },
              ),
            ),
            ...CalendarTableHelper.buildCalendarTableRow(
              calendarMonth: this.calendarMonth,
              selectedDate: this.selectedDate,
              dayBuilder: this.dayBuilder,
              onSelectDay: this.onSelectDay,
              disableTapOnOutOfRange: this.disableTapOnOutOfRange,
              minSelectableDate: this.minSelectableDate,
              maxSelectableDate: this.maxSelectableDate,
            ),
          ],
        ),
      ),
    );
  }
}
