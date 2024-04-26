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
