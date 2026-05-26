part of '../widgets/alh_calendar.dart';

/// Controller for programmatically driving an [AlhCalendar].
///
/// Attach it by passing the same instance to [AlhCalendar.controller]. The
/// calendar attaches itself in `initState` and detaches in `dispose`, so each
/// controller should be attached to at most one calendar at a time.
class AlhCalendarController extends ChangeNotifier {
  Future<void> Function(DateTime target)? _jumpHandler;

  void _attach(Future<void> Function(DateTime target) handler) {
    _jumpHandler = handler;
  }

  void _detach(Future<void> Function(DateTime target) handler) {
    if (identical(_jumpHandler, handler)) {
      _jumpHandler = null;
    }
  }

  /// Whether this controller is currently attached to an [AlhCalendar].
  bool get isAttached => _jumpHandler != null;

  /// Animates the attached calendar to the month containing [target].
  ///
  /// If the controller is not attached, this is a no-op.
  /// Out-of-range targets are clamped to the calendar's allowed month range.
  Future<void> jumpToMonthOf(DateTime target) async {
    final handler = _jumpHandler;
    if (handler != null) {
      await handler(target);
    }
  }

  /// Returns the page index for jumping to the month containing [target].
  ///
  /// Computes the month offset from [initialDate], then clamps the result to
  /// the valid page range defined by the optional previous/next month limits.
  ///
  /// E.g. if [disablePreviousMonthFromDate] and [disableNextMonthFromDate]
  /// are null, the minimum and maxium range is 10 years before and after
  /// [initialDate].
  ///
  /// If the [target] is 5 years before [initialDate], then the index is
  /// counted starting from 10 years ago until the 5 years which means the index
  /// is 5 multiplied 12 months for every years, so 60.
  int calculateJumpMonthIndex({
    required DateTime target,
    required DateTime initialDate,
    required DateTime? disablePreviousMonthFromDate,
    required DateTime? disableNextMonthFromDate,
  }) {
    final targetMonth = DateTime(target.year, target.month);
    final signedDiff = DateHelper.getSignedMonthDifference(
      startDate: initialDate,
      endDate: targetMonth,
    );
    final initialPageIndex = DateHelper.getMonthDifference(
      startDate: initialDate,
      endDate: disablePreviousMonthFromDate ??
          initialDate.subtract(const Duration(days: 365 * 10)),
    );
    final futureMonths = DateHelper.getMonthDifference(
      startDate: initialDate,
      endDate: disableNextMonthFromDate ??
          initialDate.add(const Duration(days: 365 * 10)),
    );
    final itemCount = initialPageIndex + futureMonths + 1;

    final rawTargetIndex = initialPageIndex + signedDiff;
    final targetIndex = rawTargetIndex.clamp(0, itemCount - 1);

    return targetIndex;
  }
}
