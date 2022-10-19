import 'package:flutter/material.dart';

class CalenderHeader extends StatelessWidget {
  final VoidCallback onPressedNext;
  final VoidCallback onPressedPrevious;
  final Widget header;

  final Widget iconLeft;
  final Widget iconRight;
  final EdgeInsets padding;

  const CalenderHeader({
    required this.onPressedNext,
    required this.onPressedPrevious,
    required this.header,
    required this.iconLeft,
    required this.iconRight,
    required this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: this.padding,
      child: Row(
        children: [
          Padding(
            padding: this.padding,
            child: GestureDetector(
              onTap: this.onPressedPrevious,
              child: this.iconLeft,
            ),
          ),
          Expanded(child: Center(child: this.header)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: this.onPressedNext,
              child: this.iconRight,
            ),
          ),
        ],
      ),
    );
  }
}
