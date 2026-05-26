# alh_calendar

![Pub Version](https://img.shields.io/pub/v/alh_calendar?include_prereleases&color=%23397ab6&style=flat-square)
[![codecov](https://codecov.io/gh/alhappler/alh_calendar/branch/master/graph/badge.svg?token=D63TLGD5SP)](https://codecov.io/gh/alhappler/alh_calendar)
![GitHub branch checks state](https://img.shields.io/github/checks-status/alhappler/alh_calendar/master?style=flat-square)

![An animated image of the AlhCalendar in use](https://github.com/alhappler/alh_calendar/blob/master/doc/calendar_demo.gif?raw=true)

With this Widget, you can build a custom calendar.

## Index

- [Introduction](#introduction)
- [Usage](#usage)
- [Parameters](#parameters)

## Introduction

This package `alh_calendar` is inspired by
`flutter_neat_and_clean_calendar`([Link](https://pub.dev/packages/flutter_neat_and_clean_calendar))
and build from scratch.

With this package you are able to:

- create your own CalendarHeader
- create your own TableRow which shows the days of week
- create your own TableCell which each represents a day
- create navigate threw the months via buttons or swipe
- show the dates of previous month and next month
- define a maximum and minimum month
- define a maximum and minimum day
- useful callBacks
- Tests for the whole written code on `Dart`

## Usage

```dart

final dayMap = {
  DayOfWeek.monday: 'Mon',
  DayOfWeek.thursday: 'Thu',
  DayOfWeek.wednesday: 'Wen',
  DayOfWeek.tuesday: 'Tue',
  DayOfWeek.friday: 'Fri',
  DayOfWeek.saturday: 'Sat',
  DayOfWeek.sunday: 'Sun',
};


@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: AlhCalendar(
        headerLeading: const Icon(Icons.chevron_left),
        headerTrailing: const Icon(Icons.chevron_right),
        daysOfWeek: dayMap,
        dayOfWeekBuilder: (String dayOfWeek, bool isWeekEnd) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                dayOfWeek,
                style: TextStyle(
                  color:
                  isWeekEnd ? Colors.blueAccent : Colors.redAccent,
                ),
              ),
            ),
          );
        },
        headerBuilder: (DateTime date) {
          return CalendarHeaderTitle(
            displayMonth: DateFormat('MMMM yyyy', 'en_Us').format(date),
          );
        },
        dayBuilder: (CalendarDayBuilderModel calendarDayBuilderModel,) {
          return CalendarDay(
            calendarDayBuilderModel: calendarDayBuilderModel,
          );
        },
      ),
    ),
  );
}
```

## Parameters

This is a list of all parameters that can be used for the `AlhCalendar` widget.

| **Parameter**                  | **Description**                                                                                                                                                                                                                        | **Default Value**                         |
|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------|
| `initialDate`                  | Defines the initial time. If null, then `DateTime.now()` is used.                                                                                                                                                                      | `DateTime.now()`                          |
| `disablePreviousMonthFromDate` | If the given month date is reached, user cannot go to previous month.                                                                                                                                                                  | 10 years in the past                      |
| `disableNextMonthFromDate`     | If the given month date is reached, user cannot go to next month.                                                                                                                                                                      | 10 years in the future                    |
| `minSelectableDate`            | Sets the minimum day, that the  user can select. Every day before the chosen day is flagged as outside of range. The selected day must fall within the range defined by `disablePreviousMonthFromDate` and `disableNextMonthFromDate`. | **-**                                     |
| `maxSelectableDate`            | Sets the maximum day, that the  user can select. Every day after the chosen day is flagged as outside of range. The selected day must fall within the range defined by `disablePreviousMonthFromDate` and `disableNextMonthFromDate`.  | **-**                                     |
| `daysOfWeek`                   | Needs a Map of `<DayOfWeek, String>` to fill DayOfWeekCalendarCells.                                                                                                                                                                   | **-**                                     |
| `enableHorizontalSwipe`        | Flag if horizontal scrolling in calendar is enabled.                                                                                                                                                                                   | **true**                                  |
| `headerPadding`                | Sets the padding between headerTitle and both headerIcons.                                                                                                                                                                             | **EdgeInsets.symmetric(horizontal: 3.0)** |
| `iconPadding`                  | Sets the padding around both headerIcons.                                                                                                                                                                                              | EdgeInsets.all(8)                         |
| `enableJumpToOtherMonth`       | Enables changing the month when a day outside of the current month is tapped.                                                                                                                                                          | **true**                                  |
| `showSixWeeksForEveryMonth`    | Forces the table to have 6 rows, even when the month would fit in 5.                                                                                                                                                                   | **true**                                  |
| `disableTapOnOutOfRange`       | If true, days out of range can't be tapped.                                                                                                                                                                                            | **true**                                  |
| `selectInitialDate`            | If false, the `initialDate` won’t be selected. This can be used if the `initialDate` needs to be passed to the `AlhCalendar`, but the date should not be preselected.                                                                  | **true**                                  |
| `pageChangeDuration`           | Duration for the page change animation.                                                                                                                                                                                                | **Duration(milliseconds: 400)**           |
| `pageChangeCurve`              | Duration for the page change animation.                                                                                                                                                                                                | **Curves.easeInOut**                      |
| `headerLeading`                | Custom widget that is left of the header.                                                                                                                                                                                              | **-**                                     |
| `headerTrailing`               | Custom widget that is right of the header.                                                                                                                                                                                             | **-**                                     |
| `showFocusedBorder`            | Show a focus border around the header and day cells when they receive keyboard focus.                                                                                                                                                  | `false`                                   |
| `focusedBorderStyle`           | Defines the thickness, color, and corner radii of the focus border (applied only if `showFocusedBorder` is true).                                                                                                                      | `const FocusedBorderStyle()`              |

This is a list of the functional parameters that can be used for the `AlhCalendar` widget.

| **Parameter**      | **Description**                                                                | **Default Value** |
|--------------------|--------------------------------------------------------------------------------|-------------------|
| `dayBuilder`       | Custom builder for the day cells.                                              | **-**             |
| `headerBuilder`    | Custom builder for the header title.                                           | **-**             |
| `dayOfWeekBuilder` | Custom builder for DayOfWeekCalendarCells.                                     | **-**             |
| `onMonthChanged`   | Callback once the month is changed.                                            | **-**             |
| `onDayChanged`     | Callback once the day is changed.                                              | **-**             |
| `onPreviousMonth`  | Callback once the previous month was selected. Has the new month as parameter. | **-**             |
| `onNextMonth`      | Callback once the next month was selected. Has the new month as parameter.     | **-**             |
