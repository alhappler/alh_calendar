import 'package:alh_calendar/models/calendar_day_builder_model.dart';
import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_cell.dart';
import 'package:alh_calendar/widgets/focused_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final givenDateTime = DateTime(2022, 9, 12);

  const givenFocusedBorderStyle = FocusedBorderStyle(
    color: Colors.red,
    thickness: 2,
    daysBorderRadius: BorderRadius.all(Radius.circular(10)),
  );

  _TestWidget dayBuilder(
    CalendarDayBuilderModel calendarDayBuilderModel,
  ) =>
      _TestWidget(
        calendarDayBuilderModel: calendarDayBuilderModel,
      );

  void givenOnTap() {}

  Future<void> pumpWidget({
    required WidgetTester tester,
    required bool showFocusedBorder,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Table(
            children: [
              TableRow(
                children: [
                  CalendarCell(
                    showFocusedBorder: showFocusedBorder,
                    focusedBorderStyle: givenFocusedBorderStyle,
                    date: givenDateTime,
                    isInCurrentMonth: true,
                    isSelected: false,
                    isWeekend: false,
                    onTap: givenOnTap,
                    isOutOfRange: false,
                    dayBuilder: dayBuilder,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  testWidgets(
      'GIVEN showFocusedBorder is true '
      'WHEN CalendarCell is pumped '
      'THEN onTap should not be null and child has calendarDayBuilderModel with dateTime != null',
      (WidgetTester tester) async {
    // given
    const givenShowFocusedBorder = true;

    // when
    await pumpWidget(tester: tester, showFocusedBorder: givenShowFocusedBorder);

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
            (widget) => widget is TableCell && widget.child is FocusedBorder),
        findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is FocusedBorder &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.color == givenFocusedBorderStyle.color &&
            widget.thickness == givenFocusedBorderStyle.thickness &&
            widget.borderRadius == givenFocusedBorderStyle.daysBorderRadius,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is InkWell &&
            widget.splashColor == Colors.transparent &&
            widget.highlightColor == Colors.transparent &&
            widget.borderRadius == givenFocusedBorderStyle.daysBorderRadius &&
            widget.onFocusChange != null &&
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

  testWidgets(
      'GIVEN showFocusedBorder is false '
      'WHEN CalendarCell is pumped '
      'THEN should show the expected widgets', (WidgetTester tester) async {
    // given
    const givenShowFocusedBorder = false;

    // when
    await pumpWidget(tester: tester, showFocusedBorder: givenShowFocusedBorder);

    // then
    expect(
      find.byWidgetPredicate(
        (widget) => widget is InkWell && widget.borderRadius == null,
      ),
      findsOneWidget,
    );
  });
}

class _TestWidget extends StatelessWidget {
  final CalendarDayBuilderModel calendarDayBuilderModel;

  const _TestWidget({required this.calendarDayBuilderModel});

  @override
  Widget build(BuildContext context) =>
      Text(calendarDayBuilderModel.dateTime.toString());
}
