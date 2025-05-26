import 'package:alh_calendar/widgets/focused_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const givenChild = SizedBox();

  const givenBorderRadius = BorderRadius.all(Radius.circular(10));
  const givenBorderColor = Colors.red;
  const givenThickness = 2.0;

  Future<void> pumpWidget(
    WidgetTester tester, {
    required bool showFocusedBorder,
    required Widget Function(ValueChanged<bool>) builder,
  }) async =>
      tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FocusedBorder(
              borderRadius: givenBorderRadius,
              thickness: givenThickness,
              color: givenBorderColor,
              builder: builder,
              showFocusedBorder: showFocusedBorder,
            ),
          ),
        ),
      );
  testWidgets(
    'GIVEN FocusedBorder is focused and showFocusedBorder is true '
    'WHEN FocusedBorder is pumped '
    'THEN show FocusedBorder with default values',
    (tester) async {
      // given

      // when
      await pumpWidget(
        tester,
        showFocusedBorder: true,
        builder: (onFocusChanged) {
          onFocusChanged(true);
          return givenChild;
        },
      );

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is DecoratedBox &&
              widget.decoration is BoxDecoration &&
              (widget.decoration as BoxDecoration).border ==
                  Border.all(
                    color: givenBorderColor,
                    width: givenThickness,
                  ) &&
              (widget.decoration as BoxDecoration).borderRadius ==
                  BorderRadius.all(
                    Radius.circular(
                      givenBorderRadius.bottomLeft.x + givenThickness,
                    ),
                  ),
        ),
        findsOneWidget,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Padding &&
              widget.padding == const EdgeInsets.all(givenThickness) &&
              widget.child == givenChild,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'GIVEN showFocusedBorder is false '
    'WHEN FocusedBorder is pumped '
    'THEN show expected Widgets',
    (tester) async {
      // given

      // when
      await pumpWidget(
        tester,
        showFocusedBorder: false,
        builder: (onFocusChanged) {
          onFocusChanged(true);
          return givenChild;
        },
      );

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is DecoratedBox &&
              widget.decoration is BoxDecoration &&
              (widget.decoration as BoxDecoration).border == null,
        ),
        findsOneWidget,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Padding &&
              widget.padding == const EdgeInsets.all(0) &&
              widget.child == givenChild,
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'GIVEN FocusedBorder is not in focus and showFocusedBorder is true '
    'WHEN FocusedBorder is pumped '
    'THEN show expected Widgets',
    (tester) async {
      // given

      // when
      await pumpWidget(
        tester,
        showFocusedBorder: true,
        builder: (onFocusChanged) {
          onFocusChanged(false);
          return givenChild;
        },
      );

      // then
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is DecoratedBox &&
              widget.decoration is BoxDecoration &&
              (widget.decoration as BoxDecoration).border == null,
        ),
        findsOneWidget,
      );
      expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Padding &&
              widget.padding == const EdgeInsets.all(givenThickness) &&
              widget.child == givenChild,
        ),
        findsOneWidget,
      );
    },
  );
}
