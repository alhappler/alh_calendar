import 'package:flutter/material.dart';

class CalenderHeader extends StatelessWidget {
  final VoidCallback? onPressedNext;
  final VoidCallback? onPressedPrevious;
  final Widget header;

  final Widget iconLeft;
  final Widget iconRight;
  final EdgeInsets headerPadding;
  final EdgeInsets iconPadding;

  const CalenderHeader({
    required this.onPressedNext,
    required this.onPressedPrevious,
    required this.header,
    required this.iconLeft,
    required this.iconRight,
    required this.headerPadding,
    required this.iconPadding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: this.headerPadding,
      child: Row(
        children: [
          InkWell(
            customBorder: const CircleBorder(),
            onTap: this.onPressedPrevious,
            child: Padding(
              padding: iconPadding,
              child: IconTheme(
                data: IconThemeData(
                  color: this.onPressedPrevious == null
                      ? theme.disabledColor
                      : null,
                ),
                child: this.iconLeft,
              ),
            ),
          ),
          Expanded(child: Center(child: this.header)),
          InkWell(
            customBorder: const CircleBorder(),
            onTap: this.onPressedNext,
            child: Padding(
              padding: iconPadding,
              child: IconTheme(
                data: IconThemeData(
                  color:
                      this.onPressedNext == null ? theme.disabledColor : null,
                ),
                child: this.iconRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
