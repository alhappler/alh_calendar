import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const givenHeader = Text('test');
  const givenLeftIcon = Icon(Icons.chevron_left);
  const givenRightIcon = Icon(Icons.chevron_right);
  const givenPadding = EdgeInsets.all(8);

  Future<void> pumpWidget(
    WidgetTester tester, {
    VoidCallback? onPressedPrevious,
    VoidCallback? onPressedNext,
  }) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: CalenderHeader(
            onPressedNext: onPressedNext ?? () {},
            onPressedPrevious: onPressedPrevious ?? () {},
            header: givenHeader,
            iconLeft: givenLeftIcon,
            iconRight: givenRightIcon,
            padding: givenPadding),
      ),
    ));
  }

  testWidgets(
      'GIVEN - '
      'WHEN CalendarHeader is pumped '
      'THEN should show expected structure', (WidgetTester tester) async {
    // given

    // when
    await pumpWidget(tester);

    // then
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Padding && widget.padding == const EdgeInsets.all(8.0)),
        findsAtLeastNWidgets(1));
    expect(find.byType(Row), findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is GestureDetector && widget.child == givenLeftIcon),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is Expanded &&
            widget.child is Center &&
            (widget.child as Center).child == givenHeader),
        findsOneWidget);
    expect(
        find.byWidgetPredicate((widget) =>
            widget is GestureDetector && widget.child == givenRightIcon),
        findsOneWidget);
  });

  testWidgets(
      'GIVEN onTap '
      'WHEN leftIcon is tapped '
      'THEN should call onTap once', (WidgetTester tester) async {
    // given
    int counter = 0;
    void givenOnTap() {
      counter++;
    }

    await pumpWidget(tester, onPressedPrevious: givenOnTap);

    // when
    await tester.tap(find.byWidget(givenLeftIcon));
    await tester.pumpAndSettle();

    // then
    expect(counter, 1);
  });

  testWidgets(
      'GIVEN onTap '
      'WHEN rightIcon is tapped '
      'THEN should call onTap once', (WidgetTester tester) async {
    // given
    int counter = 0;
    void givenOnTap() {
      counter++;
    }

    await pumpWidget(tester, onPressedNext: givenOnTap);

    // when
    await tester.tap(find.byWidget(givenRightIcon));
    await tester.pumpAndSettle();

    // then
    expect(counter, 1);
  });
}
