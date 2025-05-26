import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header_button.dart';
import 'package:alh_calendar/widgets/focused_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const givenIcon = Icon(Icons.add);
  const givenPadding = EdgeInsets.all(4.0);
  final givenTheme = ThemeData();
  const givenShowFocusedBorder = true;
  const givenFocusedBorderStyle = FocusedBorderStyle(
    color: Colors.red,
    thickness: 2,
    daysBorderRadius: BorderRadius.all(Radius.circular(10)),
    headerBorderRadius: BorderRadius.all(Radius.circular(20)),
  );

  Future<void> pumpWidget(
    WidgetTester tester, {
    VoidCallback? onPressed,
  }) async =>
      tester.pumpWidget(
        MaterialApp(
          theme: givenTheme,
          home: Material(
            child: CalendarHeaderButton(
              showFocusedBorder: givenShowFocusedBorder,
              focusedBorderStyle: givenFocusedBorderStyle,
              icon: givenIcon,
              padding: givenPadding,
              onPressed: onPressed,
            ),
          ),
        ),
      );

  testWidgets(
      'GIVEN icon and padding '
      'WHEN pumping [CalendarHeaderButton] '
      'THEN should show expected widgets', (tester) async {
    // given

    // when
    await pumpWidget(tester);

    // then
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is FocusedBorder &&
            widget.showFocusedBorder == givenShowFocusedBorder &&
            widget.color == givenFocusedBorderStyle.color &&
            widget.thickness == givenFocusedBorderStyle.thickness &&
            widget.borderRadius == givenFocusedBorderStyle.headerBorderRadius,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is InkWell &&
            widget.onTap == null &&
            widget.customBorder is CircleBorder &&
            widget.onFocusChange != null &&
            (widget.child! as Padding).padding == givenPadding &&
            ((widget.child! as Padding).child! as IconTheme).child == givenIcon,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is IconTheme &&
            widget.data.color == givenTheme.disabledColor &&
            widget.child == givenIcon,
      ),
      findsOneWidget,
    );
  });

  testWidgets(
      'GIVEN icon, padding and onPressed '
      'WHEN pumping [CalendarHeaderButton] '
      'THEN should show expected widgets', (tester) async {
    // given
    void givenOnPressed() {}

    // when
    await pumpWidget(
      tester,
      onPressed: givenOnPressed,
    );

    // then
    expect(
      find.byWidgetPredicate(
        (widget) => widget is InkWell && widget.onTap == givenOnPressed,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (widget) =>
            widget is IconTheme &&
            widget.data.color == givenTheme.primaryColor &&
            widget.child == givenIcon,
      ),
      findsOneWidget,
    );
  });
}
