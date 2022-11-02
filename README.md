![Pub Version](https://img.shields.io/pub/v/alh_calendar?include_prereleases&color=%23397ab6&style=flat-square)
[![codecov](https://codecov.io/gh/alhappler/alh_calendar/branch/master/graph/badge.svg?token=D63TLGD5SP)](https://codecov.io/gh/alhappler/alh_calendar)
![GitHub branch checks state](https://img.shields.io/github/checks-status/alhappler/alh_calendar/master?style=flat-square)

<p>
<img src="https://github.com/alhappler/alh_calendar/blob/master/doc/calendar_demo.gif?raw=true"
    alt="An animated image of the iOS ReordableGridView UI" height="400"/>
</p>

With this Widget, you can build a custom calendar.

## Index
- [Introduction](#introduction)
- [Usage](#usage)
- [Example](#example)
- [Parameters](#parameters)

## Introduction
This package `alh_calendar` is inspired by `flutter_neat_and_clean_calendar`([Link](https://pub.dev/packages/flutter_neat_and_clean_calendar))
and build from scratch.

With this package you are able to:
- create your own CalendarHeader
- create your own TableRow which shows the days of week
- create your own TableCell which each represents a day
- create navigate threw the months via buttons or swipe
- show the dates of previous month and next month
- define a maximum and minimum month
- define a maximum and minimum day
- usefull callBacks
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
  DayOfWeek.sunday: 'XXX',
};

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Column(children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(8),
                  child: AlhCalendar(
                    headerLeading: const Icon(Icons.chevron_left),
                    headerTrailing: const Icon(Icons.chevron_right),
                    daysOfWeek: dayMap,
                    enableHorizontalSwipe: true,
                    enableSixWeeksForEveryMonth: true,
                    dayOfWeekBuilder: (String dayOfWeek, bool isWeekEnd) {
                      return Center(
                        child: Text(
                          dayOfWeek,
                          style: TextStyle(
                              color: isWeekEnd
                                  ? Colors.green
                                  : Colors.redAccent),
                        ),
                      );
                    },
                    headerBuilder: (DateTime date) {
                      return Text(DateFormat('MMMM yyyy', 'en_Us').format(date),
                      );
                    },
                    dayBuilder: (CalendarDayBuilderModel calendarDayBuilderModel,) {
                      return CalendarDay(
                        calendarDayBuilderModel: calendarDayBuilderModel,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    ),
  );
}
```

## Parameters
This is a list of all parameters that can be used for this widget.

| **Parameter**                   | **Description**                                                              |    **Default Value**    |
|:---------------------------------------------|:----------------------------------------------------------------|:-----------------:|
| `initialDateTime`               | Defines initial Time, if null then `DateTime.now()` will be used.                           |          **-**          |
| `minimumMonthDate`              | If minimum month is reached, user cannot go to previous month.               |          **-**          |
| `maximumMonthDate`              | If maximum month is reached, user cannot go to next month.                   |          **-**          |
| `minimumDayDate`                | Sets the minimum day.                                                        |          **-**          |
| `maximumDayDate`                | Sets the maximum day.                                                        |          **-**          |
| `daysOfWeek`                    | Needs a Map of <DayOfWeek, String> to fill DayOfWeekCalendarCells.                      |          **-**          |
| `enableHorizontalSwipe`         | Flag if horizontal scrolling in calendar is enabled.                                    |        **true**         |
| `iconPadding`                   | Sets the padding between headerTitle and both headerIcons.                              | **EdgeInsets.all(3.0)** |
| `enableJumpToOtherMonth`        | Enables changing the month when a day outside of current month is tapped.               |        **true**         |
| `enableSixWeeksForEveryMonth`   | Forces Table to have 6 Rows, even when month would fit in 5.                            |        **true**         |
| `disableSixthRow`               | Makes sixth Row invisible if there are only days from next month shown in the last row. |        **true**         |
| `showDaysOutsideCurrentMonth`   | Should show days that are not in current month.                                         |        **true**         |
| `disableTapOnOutOfRange`        | If true, days out of range can't be tapped                                              |        **true**         |


This is a list of functional parameters.

| **Parameter**                                | **Description**                                                 | **Default Value** |
|:---------------------------------------------|:----------------------------------------------------------------|:-----------------:|
| `dayBuilder`                                 | Custom builder for the headerTitle.                             |       **-**       |
| `headerLeading`                              | Custom widget that is left of header.                           |       **-**       |
| `headerTrailing`                             | Custom widget that is right of header.                          |       **-**       |
| `dayOfWeekBuilder`                           | Custom builder for DayOfWeekCalendarCells.                      |       **-**       |
| `onReachedMinimumDate`                       | Callback once minimum month is reached.                         |       **-**       |
| `onReachedMaximumDate`                       | Callback once maximum month is reached.                         |       **-**       |
| `onMonthChanged`                             | Callback once month is changed.                                 |       **-**       |
| `onDayChanged`                               | Callback once day is changed.                                   |       **-**       |
