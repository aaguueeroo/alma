import 'package:alma/app/constants/time_constants.dart';

/// Formats time remaining in days as "X months Y days" or "Z days".
/// Uses [kDaysPerMonthDisplay] (30) for display. When &lt; 1 month, shows days only.
String formatTimeRemainingDays(int days) {
  if (days < kDaysPerMonthDisplay) {
    return '$days days';
  }
  final int months = days ~/ kDaysPerMonthDisplay;
  final int remainder = days % kDaysPerMonthDisplay;
  if (remainder == 0) {
    return '$months months';
  }
  return '$months months $remainder days';
}

/// Formats the time remaining in months and doesn't show the days.
/// Example: 2 months, 10 days -> 2 months
///
/// If the time remaining is less than 1 month, it returns the number of days.
String formatTimeRemainingMonths(int days) {
  if (days < kDaysPerMonthDisplay) {
    return '$days days';
  }
  final int months = days ~/ kDaysPerMonthDisplay;
  return '$months months';
}
