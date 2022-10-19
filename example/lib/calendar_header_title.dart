import 'package:flutter/material.dart';

class CalendarHeaderTitle extends StatelessWidget {
  final String displayMonth;

  const CalendarHeaderTitle({
    required this.displayMonth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(displayMonth));
  }
}
