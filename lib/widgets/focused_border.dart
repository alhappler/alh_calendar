import 'package:flutter/material.dart';

/// Adds a border when it is focused.
///
/// Makes it easy to add a focus border around a widget.
/// The border is shown when the widget is focused.
class FocusedBorder extends StatefulWidget {
  final Widget Function(ValueChanged<bool>) builder;

  /// Determines if the focus border should be shown.
  final bool showFocusedBorder;

  /// Color of the focus border.
  final Color color;

  /// Radius of the focus border corners.
  final BorderRadiusGeometry borderRadius;

  /// Thickness of the focus border.
  final double thickness;

  const FocusedBorder({
    required this.builder,
    required this.showFocusedBorder,
    required this.borderRadius,
    required this.thickness,
    required this.color,
    super.key,
  });

  @override
  State<FocusedBorder> createState() => _FocusedBorderState();
}

class _FocusedBorderState extends State<FocusedBorder> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final child = widget.builder(handelFocusChanged);

    return DecoratedBox(
      decoration: BoxDecoration(
        border: _border,
        // thickness is added to the radius because
        // we add padding with that thickness, so we need to
        // enlarge the border radius by that difference.
        // to make it look like the border is on the edge of the element
        borderRadius: widget.borderRadius.add(
          BorderRadius.all(
            Radius.circular(widget.thickness),
          ),
        ),
      ),
      child: child,
    );
  }

  BoxBorder? get _border {
    if (!_isFocused || !widget.showFocusedBorder) {
      return null;
    }

    return Border.all(
      color: widget.color,
      width: widget.thickness,
    );
  }

  void handelFocusChanged(bool isFocused) {
    setState(() {
      _isFocused = isFocused;
    });
  }
}
