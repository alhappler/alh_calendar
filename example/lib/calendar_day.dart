import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:flutter/material.dart';

class CalendarDay extends StatelessWidget {
  final CalendarDayBuilderModel calendarDayBuilderModel;

  const CalendarDay({
    required this.calendarDayBuilderModel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: DecoratedBox(
        decoration: _getDecoration(
          context: context,
          calendarDayBuilderModel: calendarDayBuilderModel,
        ),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Center(
            child: Text(
              calendarDayBuilderModel.dateTime!.day.toString(),
              style: TextStyle(
                  color: calendarDayBuilderModel.isOutOfRange == true
                      ? Colors.redAccent
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration _getDecoration({
    required BuildContext context,
    required CalendarDayBuilderModel calendarDayBuilderModel,
  }) {
    if (calendarDayBuilderModel.isSelected) {
      return const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      );
    } else if (calendarDayBuilderModel.isWeekend) {
      if (!calendarDayBuilderModel.isInCurrentMonth) {
        return BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor.withOpacity(0.4),
        );
      } else {
        return BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).primaryColor,
        );
      }
      return BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      );
    } else if (calendarDayBuilderModel.isInCurrentMonth) {
      return const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey,
      );
    } else {
      return const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black12,
      );
    }
  }
}
