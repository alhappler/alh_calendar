import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/widgets/calendar_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final givenDateTime = DateTime(2022, 9, 12);

  _TestWidget dayBuilder(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) {
    return _TestWidget(
      calendarDayBuilderModel: calendarDayBuilderModel,
    );
  }

  Future<void> pumpWidget({
    required WidgetTester tester,
    VoidCallback? onTap,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CalendarCell(
            date: givenDateTime,
            isInCurrentMonth: true,
            isSelected: false,
            isWeekend: false,
            onTap: onTap,
            isOutOfRange: false,
            dayBuilder: dayBuilder,
          ),
        ),
      ),
    );
  }

  testWidgets(
      'GIVEN '
      'WHEN CalendarCell is pumped '
      'THEN onTap should not be null and child has calendarDayBuilderModel with dateTime != null',
      (WidgetTester tester) async {
    // given
    void givenOnTap() {}

    // when
    await pumpWidget(tester: tester, onTap: givenOnTap);

    // then
    final expectedCalendarDayBuilderModel = CalendarDayBuilderModel(
      dateTime: givenDateTime,
      isInCurrentMonth: true,
      isSelected: false,
      isWeekend: false,
      isOutOfRange: false,
    );

    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is InkWell &&
            widget.splashColor == Colors.transparent &&
            widget.highlightColor == Colors.transparent &&
            widget.onTap == givenOnTap &&
            widget.child is _TestWidget,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is _TestWidget &&
            widget.calendarDayBuilderModel == expectedCalendarDayBuilderModel,
      ),
      findsOneWidget,
    );
  });
}

class _TestWidget extends StatelessWidget {
  final CalendarDayBuilderModel calendarDayBuilderModel;

  const _TestWidget({required this.calendarDayBuilderModel});

  @override
  Widget build(BuildContext context) {
    return Text(this.calendarDayBuilderModel.dateTime.toString());
  }
}
