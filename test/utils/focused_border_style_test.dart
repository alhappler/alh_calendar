import 'package:alh_calendar/utils/focused_border_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'GIVEN '
      'WHEN constructor is called without parameters '
      'THEN should return default values', () {
    // given

    // when
    const actualStyle = FocusedBorderStyle();

    // then
    const expectedStyle = FocusedBorderStyle(
      thickness: 2.0,
      color: Colors.blue,
      headerBorderRadius: BorderRadius.all(Radius.circular(80)),
      daysBorderRadius: BorderRadius.all(Radius.circular(8)),
    );

    expect(actualStyle, expectedStyle);
  });

  test(
      'GIVEN custom values '
      'WHEN constructor is called with custom values '
      'THEN should have those custom values', () {
    // given
    const givenThickness = 5.0;
    const Color givenColor = Colors.red;
    const givenHeaderBorderRadius = BorderRadius.all(Radius.circular(20));
    const givenDaysBorderRadius = BorderRadius.all(Radius.circular(10));

    // when
    const actualStyle = FocusedBorderStyle(
      thickness: givenThickness,
      color: givenColor,
      headerBorderRadius: givenHeaderBorderRadius,
      daysBorderRadius: givenDaysBorderRadius,
    );

    // then
    const expectedStyle = FocusedBorderStyle(
      thickness: givenThickness,
      color: givenColor,
      headerBorderRadius: givenHeaderBorderRadius,
      daysBorderRadius: givenDaysBorderRadius,
    );

    expect(actualStyle, expectedStyle);
  });
}
