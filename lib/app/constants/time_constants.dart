/// Time is stored and processed in days. One year = 365 days of available time.
const int kDaysPerYear = 365;

/// Hours per week for work/education commitment. Formula: commitment days = (hoursPerWeek * 52) / 24 (rounded).
const int kFullTimeHoursPerWeek = 40;
const int kPartTimeHoursPerWeek = 20;

/// Display: 30 days = 1 month for "X months" / "X days" formatting.
const int kDaysPerMonthDisplay = 30;
