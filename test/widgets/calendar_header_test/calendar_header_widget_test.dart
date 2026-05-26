import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const givenHeader = Text('test');
  const givenLeftIcon = Icon(Icons.chevron_left);
  const givenRightIcon = Icon(Icons.chevron_right);
  const givenHeaderPadding = EdgeInsets.all(18);
  const givenIconPadding = EdgeInsets.all(3);
  const givenShowFocusedBorder = true;

  const givenFocusedBorderStyle = FocusedBorderStyle(
    color: Colors.red,
    thickness: 2,
    daysBorderRadius: BorderRadius.all(Radius.circular(10)),
  );

  Future<void> pumpWidget(
    WidgetTester tester, {
    VoidCallback? onPressedPrevious,
    VoidCallback? onPressedNext,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CalendarHeader(
            showFocusedBorder: givenShowFocusedBorder,
            focusedBorderStyle: givenFocusedBorderStyle,
            onPressedNext: onPressedNext,
            onPressedPrevious: onPressedPrevious,
            header: givenHeader,
            iconLeft: givenLeftIcon,
            iconRight: givenRightIcon,
            headerPadding: givenHeaderPadding,
            iconPadding: givenIconPadding,
          ),
        ),
      ),
    );
  }

  testWidgets(
      'GIVEN - '
      'WHEN CalendarHeader is pumped '
      'THEN should show expected structure', (WidgetTester tester) async {
    // given
    void givenOnPressedNext() {}
    void givenOnPressedPrevious() {}

    // when
    await pumpWidget(
      tester,
      onPressedNext: givenOnPressedNext,
      onPressedPrevious: givenOnPressedPrevious,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) => widget is Padding && widget.padding == givenHeaderPadding,
      ),
      findsOneWidget,
    );
    expect(find.byType(Row), findsOneWidget);
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarHeaderButton &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.focusedBorderStyle == givenFocusedBorderStyle &&
            widget.icon == givenLeftIcon &&
            widget.padding == givenIconPadding &&
            widget.onPressed == givenOnPressedPrevious,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is Expanded &&
            widget.child is Center &&
            (widget.child as Center).child == givenHeader,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is CalendarHeaderButton &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.focusedBorderStyle == givenFocusedBorderStyle &&
            widget.icon == givenRightIcon &&
            widget.padding == givenIconPadding &&
            widget.onPressed == givenOnPressedNext,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN onTap '
      'WHEN leftIcon is tapped '
      'THEN should call onTap once', (WidgetTester tester) async {
    // given
    var counter = 0;
    void givenOnTap() {
      counter++;
    }

    await pumpWidget(tester, onPressedPrevious: givenOnTap);

    // when
    await tester.tap(find.byWidget(givenLeftIcon));
    await tester.pumpAndSettle();

    // then
    expect(counter, equals(1));
  });

  testWidgets(
      'GIVEN onTap '
      'WHEN rightIcon is tapped '
      'THEN should call onTap once', (WidgetTester tester) async {
    // given
    var counter = 0;
    void givenOnTap() {
      counter++;
    }

    await pumpWidget(tester, onPressedNext: givenOnTap);

    // when
    await tester.tap(find.byWidget(givenRightIcon));
    await tester.pumpAndSettle();

    // then
    expect(counter, equals(1));
  });
}
