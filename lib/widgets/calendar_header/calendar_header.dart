import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header_button.dart';
import 'package:flutter/material.dart';

class CalendarHeader extends StatelessWidget {
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedPrevious;
  final Widget header;

  final Widget iconLeft;
  final Widget iconRight;
  final EdgeInsets headerPadding;
  final EdgeInsets iconPadding;
  final bool showFocusedBorder;
  final FocusedBorderStyle focusedBorderStyle;

  const CalendarHeader({
    required this.onPressedNext,
    required this.onPressedPrevious,
    required this.header,
    required this.iconLeft,
    required this.iconRight,
    required this.headerPadding,
    required this.iconPadding,
    required this.showFocusedBorder,
    required this.focusedBorderStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: headerPadding,
        child: Row(
          children: [
            CalendarHeaderButton(
              showFocusedBorder: showFocusedBorder,
              focusedBorderStyle: focusedBorderStyle,
              icon: iconLeft,
              padding: iconPadding,
              onPressed: onPressedPrevious,
            ),
            Expanded(child: Center(child: header)),
            CalendarHeaderButton(
              showFocusedBorder: showFocusedBorder,
              focusedBorderStyle: focusedBorderStyle,
              icon: iconRight,
              padding: iconPadding,
              onPressed: onPressedNext,
            ),
          ],
        ),
      );
}
