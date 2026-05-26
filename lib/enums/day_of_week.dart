enum DayOfWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  bool get isWeekend => this == DayOfWeek.saturday || this == DayOfWeek.sunday;
}
