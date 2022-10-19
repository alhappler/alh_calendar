import 'package:alh_calendar/enums/day_of_week.dart';
import 'package:alh_calendar/models/calendar_month.dart';
import 'package:alh_calendar/utils/calendar_table_helper.dart';
import 'package:alh_calendar/widgets/alh_calendar.dart';
import 'package:flutter/cupertino.dart';

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
  final DateTime selectedDateTime;

  /// If true the days outside of the Range can´t be tapped.
  final bool disableClickOnOutOfRange;

  /// Disables last Row if there are only days from next month shown in the last row.
  ///
  /// If true the last Row will be invisible and not tappable,
  /// if there are only days from next month shown in the last row.
  final bool disableSixthRow;

  /// All days before chosen minimumDayDate are flagged as outOfRange.
  final DateTime? minimumDayDate;

  /// All days after chosen maximumDayDate are flagged as outOfRange.
  final DateTime? maximumDayDate;

  const CalendarBody({
    required this.calendarMonth,
    required this.dayBuilder,
    required this.dayOfWeekBuilder,
    required this.onSelectDay,
    required this.daysOfWeek,
    required this.selectedDateTime,
    required this.disableClickOnOutOfRange,
    required this.disableSixthRow,
    this.minimumDayDate,
    this.maximumDayDate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
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
          disableSixthRow: this.disableSixthRow,
          selectedDateTime: this.selectedDateTime,
          dayBuilder: this.dayBuilder,
          onSelectDay: this.onSelectDay,
          disableClickOnOutOfRange: this.disableClickOnOutOfRange,
          minimumDayDate: this.minimumDayDate,
          maximumDayDate: this.maximumDayDate,
        )
      ],
    );
  }
}
