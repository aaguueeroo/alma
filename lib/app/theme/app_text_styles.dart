import 'package:flutter/material.dart';
import 'package:alma/app/theme/theme_data.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle headline(BuildContext context) {
    return Theme.of(context).textTheme.headlineMedium!;
  }

  static TextStyle title(BuildContext context) {
    return Theme.of(context).textTheme.titleLarge!;
  }

  static TextStyle subtitle(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!;
  }

  static TextStyle body(BuildContext context) {
    return Theme.of(context).textTheme.bodyLarge!;
  }

  static TextStyle bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!;
  }

  static TextStyle caption(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!;
  }

  static TextStyle label(BuildContext context) {
    return Theme.of(context).textTheme.labelLarge!;
  }

  static TextStyle labelSmall(BuildContext context) {
    return Theme.of(context).textTheme.labelSmall!;
  }

  static AppThemeExtension? _extension(BuildContext context) {
    return Theme.of(context).extension<AppThemeExtension>();
  }

  static TextStyle narrativeDisplayLarge(BuildContext context) {
    return _extension(context)?.narrativeDisplayLarge ?? Theme.of(context).textTheme.displayLarge!;
  }

  static TextStyle narrativeHeadlineLarge(BuildContext context) {
    return _extension(context)?.narrativeHeadlineLarge ?? Theme.of(context).textTheme.headlineLarge!;
  }

  static TextStyle narrativeHeadlineMedium(BuildContext context) {
    return _extension(context)?.narrativeHeadlineMedium ?? Theme.of(context).textTheme.headlineMedium!;
  }

  static TextStyle narrativeTitleLarge(BuildContext context) {
    return _extension(context)?.narrativeTitleLarge ?? Theme.of(context).textTheme.titleLarge!;
  }

  static TextStyle narrativeTitleMedium(BuildContext context) {
    return _extension(context)?.narrativeTitleMedium ?? Theme.of(context).textTheme.titleMedium!;
  }

  static TextStyle narrativeBodyLarge(BuildContext context) {
    return _extension(context)?.narrativeBodyLarge ?? Theme.of(context).textTheme.bodyLarge!;
  }

  static TextStyle narrativeBodyMedium(BuildContext context) {
    return _extension(context)?.narrativeBodyMedium ?? Theme.of(context).textTheme.bodyMedium!;
  }
}
