import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:alh_calendar/widgets/calendar_header/calendar_header.dart';
import 'package:alh_calendar/widgets/focused_border.dart';
import 'package:flutter/material.dart';

/// Button layout for [CalendarHeader].
///
/// Displays a tappable [icon] with a color based on [onPressed]:
/// - If [onPressed] is null, the theme's disabled color is used.
/// - Otherwise, the primary color is applied.
///
/// The [padding] is placed inside the Inkwell to expand the tappable area.
class CalendarHeaderButton extends StatelessWidget {
  final Widget icon;
  final EdgeInsets padding;

  final VoidCallback? onPressed;
  final bool showFocusedBorder;
  final FocusedBorderStyle focusedBorderStyle;

  const CalendarHeaderButton({
    required this.icon,
    required this.padding,
    required this.onPressed,
    required this.showFocusedBorder,
    required this.focusedBorderStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FocusedBorder(
      showFocusedBorder: showFocusedBorder,
      color: focusedBorderStyle.color,
      thickness: focusedBorderStyle.thickness,
      borderRadius: focusedBorderStyle.headerBorderRadius,
      builder: (onFocusChange) => InkWell(
        onFocusChange: onFocusChange,
        customBorder: const CircleBorder(),
        onTap: onPressed,
        child: Padding(
          padding: padding,
          child: IconTheme(
            data: IconThemeData(
              color:
                  onPressed == null ? theme.disabledColor : theme.primaryColor,
            ),
            child: icon,
          ),
        ),
      ),
    );
  }
}
