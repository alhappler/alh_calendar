import 'package:alh_calendar/widgets/focused_border.dart';
import 'package:flutter/material.dart';

/// A style definition for [FocusedBorder].
class FocusedBorderStyle {
  /// Thickness of the focus border.
  final double thickness;

  /// Color of the focus border.
  final Color color;

  /// Radius of the focus border corners for the header.
  final BorderRadiusGeometry headerBorderRadius;

  /// Radius of the focus border corners for the days.
  final BorderRadiusGeometry daysBorderRadius;

  const FocusedBorderStyle({
    this.thickness = 2.0,
    this.color = Colors.blue,
    this.headerBorderRadius = const BorderRadius.all(Radius.circular(80)),
    this.daysBorderRadius = const BorderRadius.all(Radius.circular(8)),
  });
}
