# Changelog

## 1.2.0

### ⭐️ New features

* Added optional `AlhCalendarController` that exposes `jumpToMonth(DateTime)`
  to programmatically animate `AlhCalendar` to a chosen month from outside
  the widget tree. The currently selected day is cleared after the jump and
  out-of-range targets are clamped to the calendar's allowed range.

### 🪲 Bugfixes

* Fixed a `CalendarMonth` assertion that fired for 28-day months starting on
  a Monday (e.g. February 2010, 2015, 2021) — those months tile into exactly
  four weeks, which previously violated `CalendarMonth`'s `weeks ∈ {5, 6}`
  invariant. The padding logic now loops until the minimum week count is
  reached.

## 1.1.1

### 🪲 Bugfixes

* Fixed a bug where the calendar was not updating correctly
  when the initial, disablePreviousMonthFromDate or disableNextMonthFromDate date was changed.
* Fixed focus issues for day cells and month navigation buttons when VoiceOver is active.

♿️ Added two new accessibility parameters:

* `onPreviousMonth` is invoked when the previous month is selected. It can be used to
  provide explicit feedback to users when a screen reader is enabled.
* `onNextMonth` is invoked when the next month is selected. It can be used to provide
  explicit feedback to users when a screen reader is enabled.

## 1.1.0

♿️ Added two new accessibility parameters:

* `showFocusedBorder` to toggle a focus outline border on header and day cells to improve keyboard navigation (default
  is false)
* `focusedBorderStyle` to customize its thickness and color (default is null)

## 1.0.1

* Updated header icon color to primary when not disabled

## 1.0.0

### ⭐️ New features

* added page animation when changing the months
    * use `pageChangeDuration` to change the duration of the animation
    * use `pageChangeCurve` to update the animation curve of the animation
* added `selectInitialDate`
    * set to false if the initial date should not be selected
* added `iconPadding`
    * before this parameter only set padding to the whole header
    * now only the back and forth icons get a padding

### 🧑‍💻Code Refactoring

* updated the following parameter names
    * `initialDateTime` &rarr; `initialDate`
    * `minimumMonthDate` &rarr; `disablePreviousMonthFromDate`
    * `maximumMonthDate` &rarr; `disableNextMonthFromDate`
    * `minimumDayDate` &rarr; `minSelectableDate`
    * `maximumDayDate` &rarr; `maxSelectableDate`
    * `iconPadding` &rarr; `headerPadding`
    * `enableSixWeeksForEveryMonth` &rarr; `showSixWeeksForEveryMonth`

### ℹ️ Removed parameters

* `onReachedMinimumDate`
* `onReachedMaximumDate`

## 0.0.1

* New Package containing a calendar-widget, with many ways to customize.
